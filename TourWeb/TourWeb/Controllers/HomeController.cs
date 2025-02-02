﻿using System;
using System.Collections.Generic;
using System.Dynamic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TourWeb.Database;
using TourWeb.Models;

namespace TourWeb.Controllers
{
    public class HomeController : Controller
    {
        DetailModel detailModel;


        public ActionResult Index()
        {
            List<TourModel> tourModels = getTourList();
            
            return View(tourModels);
        }

        public ActionResult Detail(int id)
        {
            getDetailModel(id);
            return View(detailModel);
        }
        [HttpPost]
        public ActionResult Detail(DetailModel DetailModel)
        {
            int id = DetailModel.tourModel.TourID;
           
            if (ModelState.IsValid)
            {
                string message = string.Empty;
                if (DetailModel.ratingModel == null)
                {
                    try
                    {
                        DataProvider.Ins.DB.REGISTERs.Add(new REGISTER
                        {
                            REGISTER_NAME = DetailModel.registerModel.Name,
                            REGISTER_ADDRESS = DetailModel.registerModel.Address,
                            REGISTER_PHONE_NUMBER = DetailModel.registerModel.PhoneNumber.ToString(),
                            REGISTER_EMAILL = DetailModel.registerModel.Email,
                            REGISTER_DETAIL = DetailModel.registerModel.Detail,
                            TOUR_ID = DetailModel.tourModel.TourID,
                        });
                        DataProvider.Ins.DB.SaveChanges();
                        message = "Register successfully, our employee will contact you later!";
                        SetAlert(message, 1);
                    }
                    catch
                    {
                        message = "Something is wrong with the system";
                        SetAlert(message, 3);
                    }

                }
                else
                {
                    try
                    {
                        var travellerReview = DataProvider.Ins.DB.TRAVELLER_DETAIL.Where(x => x.TRAVELLER.TRAVELLER_NAME == DetailModel.ratingModel.TravellerName && x.TRAVELLER.TRAVELLER_PHONE_NUMBER == DetailModel.ratingModel.PhoneNumber && x.TRAVEL_GROUP_ID == DetailModel.ratingModel.GroupID).SingleOrDefault();
                        if (travellerReview == null)
                        {
                            throw new Exception();
                        }
                        else
                        {
                            travellerReview.TRAVELLER_DETAIL_STAR = DetailModel.ratingModel.Rating;
                            travellerReview.TRAVELLER_DETAIL_COMMENT = DetailModel.ratingModel.Comment;
                            DataProvider.Ins.DB.SaveChanges();
                            message = "Tour rated successfully, thanks for using our service!";
                            SetAlert(message, 1);
                        }
                    }
                    catch
                    {
                        message = "The name and phone number does not match with group ID!";
                        SetAlert(message, 3);
                    }
                }
                ModelState.Clear();
                getDetailModel(id);
                return RedirectToAction("Detail");
            }
            else
            {
                SetAlert("Some information is not valid. Please check the information again!", 3);
                getDetailModel(id);
            }
            return View("Detail", detailModel);
            
        }

        public void getDetailModel(int id)
        {
            SaveTourStar(id);
            detailModel = new DetailModel();
            detailModel.DetailId = id;
            detailModel.tourInformation = new List<TourInformation>();
            detailModel.tourInformation = getTourInformation(id);
            detailModel.tourModel = new TourModel();
            detailModel.tourModel = getTour(id);
            detailModel.ratingModels = new List<RatingModel>();
            detailModel.ratingModels = getRating(id);
            detailModel.ratingModel = new RatingModel();
            detailModel.tourModel.ImagesGallery = new List<string>();
            getImageList(detailModel.tourModel);
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }


        public List<TourModel> getTourList()
        {
            List<TourModel> tourModels = new List<TourModel>();
            tourModels.Clear();
            var tourlist = from tour in DataProvider.Ins.DB.TOURs
                           where tour.TOUR_IS_EXIST == "No"
                           select tour;
            foreach (var item in tourlist)
            {
                byte[] bytes = item.TOUR_MAIN_IMAGE;
                string imageBase64Data = Convert.ToBase64String(bytes);
                string imageDataURL = string.Format("data:image/png;base64,{0}", imageBase64Data);
                TourModel tourModel = new TourModel()
                {
                    TourID = item.TOUR_ID,
                    Tour_Character = item.TOUR_CHARACTERISTIS,
                    TourName = item.TOUR_NAME,
                    Tour_Star = (double)item.TOUR_STAR,
                    imagesData = imageDataURL,
                    RatingNumber = getRatingNumber(item.TOUR_ID),
                };

                tourModels.Add(tourModel);
            }
            return tourModels;
        }
        public List<TourInformation> getTourInformation(int tour_id)
        {
            List<TourInformation> tourInformations = new List<TourInformation>();
            var informationList = from information in DataProvider.Ins.DB.TOUR_INFORMATION
                                  where information.TOUR_ID == tour_id && information.TOUR_TIME.FirstOrDefault().TOUR_TIME_DEPARTMENT_DATE > DateTime.Now
                                  select information;
            foreach (var item in informationList)
            {
                TourInformation informationModel = new TourInformation()
                {
                    TourInformationID = item.TOUR_INFORMATION_ID,
                };
                informationModel.Schedule = new List<ScheduleModel>();

                foreach (var itemSchedule in item.TOUR_SCHEDULE)
                {
                    string str = itemSchedule.TOUR_SCHEDULE_CONTENT.Replace("\n", "<br />");
                    ScheduleModel scheduleModel = new ScheduleModel()
                    {
                        ScheduleId = itemSchedule.TOUR_SCHEDULE_ID,
                        ScheduleDay = itemSchedule.TOUR_SCHEDULE_DAY,
                        ScheduleContent = str,
                    };
                    informationModel.Schedule.Add(scheduleModel);
                }

                var price = item.TOUR_PRICE.FirstOrDefault();
                informationModel.Price = new PriceModel()
                {
                    PriceId = price.TOUR_PRICE_ID,
                    PriceHotel = (double)price.TOUR_PRICE_COST_HOTEL,
                    PriceService = (double)price.TOUR_PRICE_COST_SERVICE,
                    PriceTransport = (double)price.TOUR_PRICE_COST_TRANSPORT,
                    PriceTotal = (double)price.TOUR_PRICE_COST_TOTAL
                };

                var time = item.TOUR_TIME.FirstOrDefault();
                informationModel.Time = new TimeModel()
                {
                    TimeId = time.TOUR_TIME_ID,
                    TimeDay = (int)time.TOUR_TIME_DAY,
                    TimeNight = (int)time.TOUR_TIME_NIGHT,
                    StartDate = (DateTime)time.TOUR_TIME_DEPARTMENT_DATE,
                    EndDate = (DateTime)time.TOUR_TIME_END_DATE,
                    TimeStartString = ((DateTime)time.TOUR_TIME_DEPARTMENT_DATE).ToString("dd/MM/yyyy"),
                    TimeEndString = ((DateTime)time.TOUR_TIME_END_DATE).ToString("dd/MM/yyyy"),
                    TimeString = string.Format("{0} day(s) {1} night(s)", (int)time.TOUR_TIME_DAY, (int)time.TOUR_TIME_NIGHT)
                };
                tourInformations.Add(informationModel);
            }

            return tourInformations;
        }

        public void getImageList(TourModel tourModel)
        {
            var imageList = from images in DataProvider.Ins.DB.TOUR_IMAGE
                                  where images.TOUR_ID == tourModel.TourID
                                  select images;
            foreach(var item in imageList)
            {
                byte[] bytes = item.TOUR_IMAGE_BYTE;
                string imageBase64Data = Convert.ToBase64String(bytes);
                string imageDataURL = string.Format("data:image/png;base64,{0}", imageBase64Data);
                tourModel.ImagesGallery.Add(imageDataURL);
            }
        }
        public TourModel getTour(int tour_id)
        {
            var tourdb = DataProvider.Ins.DB.TOURs.Where(x => x.TOUR_ID == tour_id).FirstOrDefault();
            byte[] bytes = tourdb.TOUR_MAIN_IMAGE;
            string imageBase64Data = Convert.ToBase64String(bytes);
            string imageDataURL = string.Format("data:image/png;base64,{0}", imageBase64Data);

            var informationList = from information in DataProvider.Ins.DB.TOUR_INFORMATION
                                  where information.TOUR_ID == tour_id && information.TOUR_TIME.FirstOrDefault().TOUR_TIME_DEPARTMENT_DATE > DateTime.Now
                                  select information;
            return new TourModel()
            {
                TourID = tour_id,
                Tour_Character = tourdb.TOUR_CHARACTERISTIS,
                TourName = tourdb.TOUR_NAME,
                Tour_Star = (double)tourdb.TOUR_STAR,
                imagesData = imageDataURL,
            };
        }

        public List<RatingModel> getRating(int tour_id)
        {
            List<RatingModel> ratingModels = new List<RatingModel>();
            var ratingList = from x in DataProvider.Ins.DB.TRAVELLER_DETAIL
                           where x.TRAVEL_GROUP.TOUR_INFORMATION.TOUR_ID == tour_id && x.TRAVELLER_DETAIL_STAR != 0
                           select x;
            foreach (var item in ratingList)
            {
                RatingModel ratingModel = new RatingModel()
                {
                    RatingID = item.TRAVELLER_DETAIL_ID,
                    Rating = (int)item.TRAVELLER_DETAIL_STAR,
                    Comment = item.TRAVELLER_DETAIL_COMMENT,
                    TravellerName = item.TRAVELLER.TRAVELLER_NAME,

                };

                ratingModels.Add(ratingModel);
            }
            return ratingModels;
        }
        public int getRatingNumber(int tour_id)
        {
            var ratingList = from x in DataProvider.Ins.DB.TRAVELLER_DETAIL
                             where x.TRAVEL_GROUP.TOUR_INFORMATION.TOUR_ID == tour_id && x.TRAVELLER_DETAIL_STAR != 0
                             select x;
            return ratingList.Count();
        }



        public static void SaveTourStar(int tour_id)
        {
            var tourinformationlist = from travelgroup in DataProvider.Ins.DB.TRAVEL_GROUP
                                      join tgdetail in DataProvider.Ins.DB.TRAVELLER_DETAIL on travelgroup.TRAVEL_GROUP_ID equals tgdetail.TRAVEL_GROUP_ID
                                      where travelgroup.TOUR_INFORMATION.TOUR_ID == tour_id
                                      select new
                                      {
                                          tgdetail.TRAVELLER_DETAIL_STAR
                                      };
            
                double tour_star = 0;
                int total = 0;
                int count = 0;
                foreach (var item in tourinformationlist)
                {
                    if (item.TRAVELLER_DETAIL_STAR != 0)
                    {
                        int star = (int)item.TRAVELLER_DETAIL_STAR;
                        total += star;
                        count++;
                    }
                }
                if(count != 0)
            {
                tour_star = total * 1.0 / count;
                tour_star = Math.Round(tour_star, 2);
                TOUR tour = DataProvider.Ins.DB.TOURs.Where(x => x.TOUR_ID == tour_id).First();
                tour.TOUR_STAR = tour_star;
                DataProvider.Ins.DB.SaveChanges();
            }
                
            
        }

        protected void SetAlert(string message, int type)
        {
            TempData["AlertMessage"] = message;
            if (type == 1)
            {
                TempData["AlertType"] = "alert-success";
            }
            else if (type == 2)
            {
                TempData["AlertType"] = "alert-warning";
            }
            else if (type == 3)
            {
                TempData["AlertType"] = "alert-danger";
            }
            else
            {
                TempData["AlertType"] = "alert-info";
            }
        }
    }
}
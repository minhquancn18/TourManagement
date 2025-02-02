﻿using System;
using System.Collections.ObjectModel;
using System.Data.Entity.Validation;
using System.Linq;
using TourManagementSystem.Global;
using TourManagementSystem.Global.Model;

namespace TourManagementSystem.ManagerView.Model
{
    public static class TourHandleModel
    {
        public static ObservableCollection<TourModel> GetTourList()
        {
            ObservableCollection<TourModel> TourList = new ObservableCollection<TourModel>();

            var tourlist = from tour in DataProvider.Ins.DB.TOUR
                           select tour;

            foreach (var item in tourlist)
            {
                TourModel tourModel = new TourModel()
                {
                    TOUR_ID = item.TOUR_ID,
                    TOUR_CHARACTERISTIS = item.TOUR_CHARACTERISTIS,
                    TOUR_NAME = item.TOUR_NAME,
                    TOUR_TYPE = item.TOUR_TYPE,
                    TOUR_STAR = Math.Round((double)item.TOUR_STAR, 2),
                    TOUR_IS_EXIST = item.TOUR_IS_EXIST,
                    TOUR_STATUS = item.TOUR_IS_EXIST.Contains("Yes") ? "Cancel" : "Active",
                    TOUR_IMAGE_BYTE_SOURCE = item.TOUR_MAIN_IMAGE
                };
                tourModel.TOUR_NUMBER_VALID = TourInformationHandleModel.CountTourInformationFromTour(tourModel.TOUR_ID);
                TourList.Add(tourModel);
            }

            return TourList;
        }

        public static bool InsertTour(TourModel tour, int user_id)
        {
            try
            {
                TOUR tourdb = new TOUR()
                {
                    TOUR_NAME = tour.TOUR_NAME,
                    TOUR_TYPE = tour.TOUR_TYPE,
                    TOUR_CHARACTERISTIS = tour.TOUR_CHARACTERISTIS,
                    TOUR_STAR = 0,
                    TOUR_IS_EXIST = "No",
                    TOUR_MAIN_IMAGE = tour.TOUR_IMAGE_BYTE_SOURCE
                };
                DataProvider.Ins.DB.TOUR.Add(tourdb);

                TOUR_RECORD tour_record = new TOUR_RECORD()
                {
                    TOUR_STAFF_ID = user_id,
                    TOUR_RECORD_DATE = DateTime.Now,
                    TOUR_RECORD_CONTENT = "Add new tour with Name: " + tourdb.TOUR_NAME
                };
                DataProvider.Ins.DB.TOUR_RECORD.Add(tour_record);

                DataProvider.Ins.DB.SaveChanges();
                return true;
            }
            catch (DbEntityValidationException e)
            {
                foreach (DbEntityValidationResult eve in e.EntityValidationErrors)
                {
                    Console.WriteLine("Entity of type \"{0}\" in state \"{1}\" has the following validation errors:",
                        eve.Entry.Entity.GetType().Name, eve.Entry.State);
                    foreach (DbValidationError ve in eve.ValidationErrors)
                    {
                        Console.WriteLine("- Property: \"{0}\", Error: \"{1}\"",
                            ve.PropertyName, ve.ErrorMessage);
                    }
                }
                throw;
            }
        }

        public static int GetTourID(string tour_name)
        {
            TOUR tour = DataProvider.Ins.DB.TOUR.Where(x => x.TOUR_NAME.Equals(tour_name)).FirstOrDefault();
            return tour.TOUR_ID;
        }

        public static string GetTourName(int tour_id)
        {
            TOUR tour = DataProvider.Ins.DB.TOUR.Where(x => x.TOUR_ID == tour_id).FirstOrDefault();
            return tour.TOUR_NAME;
        }

        public static TourModel GetTour(int tour_id)
        {
            TOUR tourdb = DataProvider.Ins.DB.TOUR.Where(x => x.TOUR_ID == tour_id).FirstOrDefault();

            return new TourModel()
            {
                TOUR_ID = tour_id,
                TOUR_CHARACTERISTIS = tourdb.TOUR_CHARACTERISTIS,
                TOUR_NAME = tourdb.TOUR_NAME,
                TOUR_TYPE = tourdb.TOUR_TYPE,
                TOUR_STAR = (double)tourdb.TOUR_STAR,
                TOUR_IS_EXIST = tourdb.TOUR_IS_EXIST,
                TOUR_IMAGE_BYTE_SOURCE = tourdb.TOUR_MAIN_IMAGE,
            };
        }

        public static bool InsertImageTour(ObservableCollection<TourImageModel> images, string tour_name)
        {
            try
            {
                if (images.Count == 0)
                {
                    return true;
                }
                TOUR tour = DataProvider.Ins.DB.TOUR.Where(x => x.TOUR_NAME.Equals(tour_name)).FirstOrDefault();
                int tour_id = tour.TOUR_ID;

                foreach (var item in images)
                {
                    TOUR_IMAGE image = new TOUR_IMAGE()
                    {
                        TOUR_ID = tour_id,
                        TOUR_IMAGE_BYTE = item.TOUR_IMAGE_BYTE_SOURCE
                    };

                    DataProvider.Ins.DB.TOUR_IMAGE.Add(image);
                }

                DataProvider.Ins.DB.SaveChanges();
                return true;
            }
            catch (DbEntityValidationException e)
            {
                foreach (DbEntityValidationResult eve in e.EntityValidationErrors)
                {
                    Console.WriteLine("Entity of type \"{0}\" in state \"{1}\" has the following validation errors:",
                        eve.Entry.Entity.GetType().Name, eve.Entry.State);
                    foreach (DbValidationError ve in eve.ValidationErrors)
                    {
                        Console.WriteLine("- Property: \"{0}\", Error: \"{1}\"",
                            ve.PropertyName, ve.ErrorMessage);
                    }
                }
                throw;
            }
        }

        public static ObservableCollection<TourImageModel> GetTourImage(int tour_id)
        {
            ObservableCollection<TourImageModel> ImageList = new ObservableCollection<TourImageModel>();

            var imagelist = from img in DataProvider.Ins.DB.TOUR_IMAGE
                            where img.TOUR_ID == tour_id
                            select img;

            foreach (var item in imagelist)
            {
                TourImageModel imagemodel = new TourImageModel()
                {
                    IMAGE_ID = item.TOUR_IMAGE_ID,
                    TOUR_ID = item.TOUR_ID,
                    TOUR_IMAGE_BYTE_SOURCE = item.TOUR_IMAGE_BYTE
                };

                ImageList.Add(imagemodel);
            }

            int imageCount = ImageList.Count();
            if (imageCount == 6)
            {
                return ImageList;
            }
            else
            {
                for (int i = imageCount - 1; i < 6; i++)
                {
                    ImageList.Add(new TourImageModel() { TOUR_IMAGE_BYTE_SOURCE = null, TOUR_ID = tour_id, IMAGE_ID = 0 });
                }
                return ImageList;
            }
        }

        public static bool UpdateTour(TourModel tour, int user_id)
        {
            try
            {
                TOUR tourdb = DataProvider.Ins.DB.TOUR.Where(x => x.TOUR_ID == tour.TOUR_ID).FirstOrDefault();

                string changeToSave = string.Format("Update Tour with id {0}: ", tour.TOUR_ID);
                int countChangeToSave = 0;
                if (tourdb.TOUR_NAME != tour.TOUR_NAME)
                {
                    changeToSave += string.Format("Name Change ({0} -> {1})   ", tourdb.TOUR_NAME, tour.TOUR_NAME);
                    tourdb.TOUR_NAME = tour.TOUR_NAME;
                    countChangeToSave++;
                }

                if (tourdb.TOUR_TYPE != tour.TOUR_TYPE)
                {
                    changeToSave += string.Format("Type Change ({0} -> {1})   ", tourdb.TOUR_TYPE, tour.TOUR_TYPE);
                    tourdb.TOUR_TYPE = tour.TOUR_TYPE;
                    countChangeToSave++;
                }

                if (tourdb.TOUR_CHARACTERISTIS != tour.TOUR_CHARACTERISTIS)
                {
                    changeToSave += string.Format("Characteristic Change ({0} -> {1})   ", tourdb.TOUR_CHARACTERISTIS, tour.TOUR_CHARACTERISTIS);
                    tourdb.TOUR_CHARACTERISTIS = tour.TOUR_CHARACTERISTIS;
                    countChangeToSave++;
                }
                if (tourdb.TOUR_MAIN_IMAGE != tour.TOUR_IMAGE_BYTE_SOURCE)
                {
                    changeToSave += string.Format("Change Main Image");
                    tourdb.TOUR_MAIN_IMAGE = tour.TOUR_IMAGE_BYTE_SOURCE;
                    countChangeToSave++;
                }

                if (countChangeToSave != 0)
                {
                    TOUR_RECORD tour_record = new TOUR_RECORD
                    {
                        TOUR_STAFF_ID = user_id,
                        TOUR_RECORD_DATE = DateTime.Now,
                        TOUR_RECORD_CONTENT = changeToSave
                    };
                    DataProvider.Ins.DB.TOUR_RECORD.Add(tour_record);
                    DataProvider.Ins.DB.SaveChanges();
                    return true;
                }
                return false;
            }
            catch (DbEntityValidationException e)
            {
                foreach (DbEntityValidationResult eve in e.EntityValidationErrors)
                {
                    Console.WriteLine("Entity of type \"{0}\" in state \"{1}\" has the following validation errors:",
                        eve.Entry.Entity.GetType().Name, eve.Entry.State);
                    foreach (DbValidationError ve in eve.ValidationErrors)
                    {
                        Console.WriteLine("- Property: \"{0}\", Error: \"{1}\"",
                            ve.PropertyName, ve.ErrorMessage);
                    }
                }
                throw;
            }
        }

        public static bool UpdateTourImage(ObservableCollection<TourImageModel> images, int tour_id, int user_id)
        {
            try
            {
                int countChangeToSave = 0;
                foreach (var item in images)
                {
                    if (item.TOUR_IMAGE_BYTE_SOURCE != null)
                    {
                        if (item.IMAGE_ID != 0)
                        {
                            TOUR_IMAGE image = DataProvider.Ins.DB.TOUR_IMAGE.Where(x => x.TOUR_IMAGE_ID == item.IMAGE_ID).FirstOrDefault();
                            if (image.TOUR_IMAGE_BYTE != item.TOUR_IMAGE_BYTE_SOURCE)
                            {
                                image.TOUR_IMAGE_BYTE = item.TOUR_IMAGE_BYTE_SOURCE;
                                countChangeToSave++;
                            }
                        }
                        else
                        {
                            TOUR_IMAGE image = new TOUR_IMAGE()
                            {
                                TOUR_ID = tour_id,
                                TOUR_IMAGE_BYTE = item.TOUR_IMAGE_BYTE_SOURCE
                            };
                            countChangeToSave++;
                            DataProvider.Ins.DB.TOUR_IMAGE.Add(image);
                        }
                    }
                }

                if (countChangeToSave != 0)
                {
                    TOUR tourdb = DataProvider.Ins.DB.TOUR.Where(x => x.TOUR_ID == tour_id).FirstOrDefault();
                    TOUR_RECORD tour_record = new TOUR_RECORD
                    {
                        TOUR_STAFF_ID = user_id,
                        TOUR_RECORD_DATE = DateTime.Now,
                        TOUR_RECORD_CONTENT = string.Format("Update {0} images in {1}", countChangeToSave, tourdb.TOUR_NAME)
                    };
                    DataProvider.Ins.DB.TOUR_RECORD.Add(tour_record);
                    DataProvider.Ins.DB.SaveChanges();
                    return true;
                }
                return false;
            }
            catch (DbEntityValidationException e)
            {
                foreach (DbEntityValidationResult eve in e.EntityValidationErrors)
                {
                    Console.WriteLine("Entity of type \"{0}\" in state \"{1}\" has the following validation errors:",
                        eve.Entry.Entity.GetType().Name, eve.Entry.State);
                    foreach (DbValidationError ve in eve.ValidationErrors)
                    {
                        Console.WriteLine("- Property: \"{0}\", Error: \"{1}\"",
                            ve.PropertyName, ve.ErrorMessage);
                    }
                }
                throw;
            }
        }

        public static bool DeleteTour(int tour_id, int user_id)
        {
            try
            {
                TOUR tourdb = DataProvider.Ins.DB.TOUR.Where(x => x.TOUR_ID == tour_id).SingleOrDefault();
                tourdb.TOUR_IS_EXIST = "Yes";

                TOUR_RECORD tour_record = new TOUR_RECORD()
                {
                    TOUR_STAFF_ID = user_id,
                    TOUR_RECORD_DATE = DateTime.Now,
                    TOUR_RECORD_CONTENT = string.Format("Remove Tour {0} with {1}", tourdb.TOUR_NAME, tourdb.TOUR_ID)
                };
                DataProvider.Ins.DB.TOUR_RECORD.Add(tour_record);
                DataProvider.Ins.DB.SaveChanges();
                return true;
            }
            catch (DbEntityValidationException e)
            {
                foreach (DbEntityValidationResult eve in e.EntityValidationErrors)
                {
                    Console.WriteLine("Entity of type \"{0}\" in state \"{1}\" has the following validation errors:",
                        eve.Entry.Entity.GetType().Name, eve.Entry.State);
                    foreach (DbValidationError ve in eve.ValidationErrors)
                    {
                        Console.WriteLine("- Property: \"{0}\", Error: \"{1}\"",
                            ve.PropertyName, ve.ErrorMessage);
                    }
                }
                throw;
            }
        }

        public static double GetTourStar(int tour_id)
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

            if (count == 0)
            {
                //Default star
                tour_star = 0;
            }
            else
            {
                tour_star = total * 1.0 / count;
                TOUR tour = DataProvider.Ins.DB.TOUR.Where(x => x.TOUR_ID == tour_id).First();
                tour.TOUR_STAR = tour_star;
                DataProvider.Ins.DB.SaveChanges();
            }

            return tour_star;
        }

        public static ObservableCollection<TourStatisticModel> GetTourStatisticList()
        {
            ObservableCollection<TourStatisticModel> TourStatisticList = new ObservableCollection<TourStatisticModel>();

            var tourlist = (from information in DataProvider.Ins.DB.TOUR_INFORMATION
                            where information.TOUR.TOUR_IS_EXIST.Equals("No")
                            select new
                            {
                                information.TOUR_ID,
                                information.TOUR.TOUR_NAME
                            }).Distinct();

            if (tourlist.Count() == 0)
            {
                return TourStatisticList;
            }

            foreach (var item in tourlist)
            {
                TourStatisticModel statisticModel = new TourStatisticModel()
                {
                    Tour_ID = item.TOUR_ID,
                    Tour_Name = item.TOUR_NAME
                };
                ObservableCollection<TourDetailStatisticModel> detailStatistic = new ObservableCollection<TourDetailStatisticModel>();
                var travelgroupList = from travelgroup in DataProvider.Ins.DB.TRAVEL_GROUP
                                      join time in DataProvider.Ins.DB.TOUR_TIME on travelgroup.TOUR_INFORMATION_ID equals time.TOUR_INFORMATION_ID
                                      where travelgroup.TOUR_INFORMATION.TOUR_ID == item.TOUR_ID
                                      select travelgroup;

                if (travelgroupList.Count() == 0)
                {
                    statisticModel.DetailStatistic = detailStatistic;
                    statisticModel.Tour_NumberVisitGroup = 0;
                    statisticModel.Tour_NumberVisitTraveller = 0;
                    statisticModel.Tour_TotalCost = 0;

                    TourStatisticList.Add(statisticModel);
                }
                else
                {
                    foreach (var itemGroup in travelgroupList)
                    {
                        statisticModel.Tour_NumberVisitGroup++;

                        TourDetailStatisticModel detailStatisticModel = new TourDetailStatisticModel()
                        {
                            Tour_Department = (DateTime)itemGroup.TOUR_INFORMATION.TOUR_TIME.First().TOUR_TIME_DEPARTMENT_DATE,
                            Tour_End = (DateTime)itemGroup.TOUR_INFORMATION.TOUR_TIME.First().TOUR_TIME_END_DATE,
                        };

                        TRAVEL_COST travel_cost = itemGroup.TRAVEL_COST.First();
                        detailStatisticModel.Tour_Cost = (double)(travel_cost.ANOTHER_COST + travel_cost.TOTAL_HOTEL_COST + travel_cost.TOTAL_SERVICE_COST + travel_cost.TOTAL_TRANSPORT_COST);

                        statisticModel.Tour_TotalCost += detailStatisticModel.Tour_Cost;

                        var travellerList = DataProvider.Ins.DB.TRAVELLER_DETAIL.Where(x => x.TRAVEL_GROUP_ID == itemGroup.TRAVEL_GROUP_ID);
                        detailStatisticModel.Tour_NumberTraveller = travellerList.Count();
                        statisticModel.Tour_NumberVisitTraveller += detailStatisticModel.Tour_NumberTraveller;

                        detailStatistic.Add(detailStatisticModel);
                    }

                    statisticModel.DetailStatistic = detailStatistic;

                    TourStatisticList.Add(statisticModel);
                }
            }

            return TourStatisticList;
        }
    }
}
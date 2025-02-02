﻿using Caliburn.Micro;
using System;
using System.Collections.ObjectModel;
using System.Data.Entity.Validation;
using System.Linq;
using TourManagementSystem.Global;
using TourManagementSystem.Global.Model;

namespace TourManagementSystem.ManagerView.Model
{
    public static class MissionHandleModel
    {
        public static double CalculateTotalMissionPrice(ObservableCollection<MissionModel> missions)
        {
            double total = 0;

            if (missions.Count == 0)
            {
                return total;
            }

            foreach (var item in missions)
            {
                total += item.Mission_Price * item.Mission_Count;
            }

            return total;
        }

        public static bool InsertMissionList(ObservableCollection<MissionModel> missions, int tour_informationID, int user_id, bool IsFirst)
        {
            try
            {
                int countMission = 0;
                foreach (MissionModel item in missions)
                {
                    TOUR_MISSION mission = new TOUR_MISSION()
                    {
                        TOUR_MISSION_COUNT = item.Mission_Count,
                        TOUR_MISSION_DESCRIPTION = item.Mission_Description,
                        TOUR_MISSION_PRICE = item.Mission_Price,
                        TOUR_MISSION_RESPONSIBILITY = item.Mission_Responsibility,
                        TOUR_INFORMATION_ID = tour_informationID
                    };
                    countMission++;
                    DataProvider.Ins.DB.TOUR_MISSION.Add(mission);
                }
                TOUR_RECORD tour_record = new TOUR_RECORD()
                {
                    TOUR_STAFF_ID = user_id,
                    TOUR_RECORD_DATE = DateTime.Now,
                    TOUR_RECORD_CONTENT = string.Format("{0} {1} missions in tour information with id is {2}", IsFirst ? "Add" : "Update", countMission, tour_informationID)
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

        public static bool DeleteMissionDetail(int tour_information_id)
        {
            try
            {
                var mission = DataProvider.Ins.DB.TOUR_MISSION.Where(x => x.TOUR_INFORMATION_ID == tour_information_id);
                DataProvider.Ins.DB.TOUR_MISSION.RemoveRange(mission);
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

        public static bool UpdateMissionList(ObservableCollection<MissionModel> MissionList, int tourinformation_id, int user_id)
        {
            try
            {
                var mission = DataProvider.Ins.DB.TOUR_MISSION.Where(x => x.TOUR_INFORMATION_ID == tourinformation_id);
                foreach (var item in MissionList)
                {
                    if (item.Mission_ID == 0)
                    {
                        TOUR_MISSION tour_mission = new TOUR_MISSION()
                        {
                            TOUR_MISSION_COUNT = item.Mission_Count,
                            TOUR_MISSION_DESCRIPTION = item.Mission_Description,
                            TOUR_MISSION_PRICE = item.Mission_Price,
                            TOUR_MISSION_RESPONSIBILITY = item.Mission_Responsibility,
                            TOUR_INFORMATION_ID = tourinformation_id
                        };
                        DataProvider.Ins.DB.TOUR_MISSION.Add(tour_mission);
                    }
                    else
                    {
                        TOUR_MISSION tour_mission = mission.Where(x => x.TOUR_MISSION_ID == item.Mission_ID).FirstOrDefault();
                        tour_mission.TOUR_MISSION_RESPONSIBILITY = item.Mission_Responsibility;
                        tour_mission.TOUR_MISSION_DESCRIPTION = item.Mission_Description;
                        tour_mission.TOUR_MISSION_PRICE = item.Mission_Price;
                        tour_mission.TOUR_MISSION_COUNT = item.Mission_Count;
                    }
                }

                TOUR_RECORD tour_record = new TOUR_RECORD()
                {
                    TOUR_STAFF_ID = user_id,
                    TOUR_RECORD_DATE = DateTime.Now,
                    TOUR_RECORD_CONTENT = string.Format("{0} {1} missions in tour information with id is {2}", "Update", MissionList.Count, tourinformation_id)
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

        public static BindableCollection<MissionModel> GetMissionFromTourInformation(int touinformation_id)
        {
            BindableCollection<MissionModel> MissionList = new BindableCollection<MissionModel>();
            var missionList = from mission in DataProvider.Ins.DB.TOUR_MISSION
                              where mission.TOUR_INFORMATION_ID == touinformation_id
                              select mission;

            foreach (var item in missionList)
            {
                MissionModel mission = new MissionModel()
                {
                    Mission_ID = item.TOUR_MISSION_ID,
                    Mission_Responsibility = item.TOUR_MISSION_RESPONSIBILITY,
                    Mission_Description = item.TOUR_MISSION_DESCRIPTION,
                    Mission_Count = (int)item.TOUR_MISSION_COUNT,
                    Mission_Price = (double)item.TOUR_MISSION_PRICE
                };

                MissionList.Add(mission);
            }

            return MissionList;
        }

        public static ObservableCollection<TourMissionModel> GetMissionWithTravelGroup(int staff_id)
        {
            ObservableCollection<TourMissionModel> MissionList = new ObservableCollection<TourMissionModel>();

            var missionList = from staffdetail in DataProvider.Ins.DB.TOUR_STAFF_DETAIL
                              join travelgroup in DataProvider.Ins.DB.TRAVEL_GROUP on staffdetail.TOUR_MISSION.TOUR_INFORMATION_ID equals travelgroup.TOUR_INFORMATION_ID
                              where staffdetail.TOUR_STAFF_ID == staff_id
                              select new
                              {
                                  staffdetail,
                                  travelgroup
                              };

            if (missionList.Count() == 0)
            {
                return MissionList;
            }

            foreach (var item in missionList)
            {
                TourMissionModel missionModel = new TourMissionModel(item.staffdetail.TOUR_STAFF_DETAIL_ID,
                                                     item.staffdetail.TOUR_MISSION.TOUR_INFORMATION.TOUR.TOUR_NAME,
                                                     item.travelgroup.TRAVEL_GROUP_NAME,
                                                     item.staffdetail.TOUR_MISSION.TOUR_MISSION_RESPONSIBILITY,
                                                     item.staffdetail.TOUR_MISSION.TOUR_MISSION_DESCRIPTION,
                                                     ((DateTime)item.staffdetail.TOUR_MISSION.
                                                     TOUR_INFORMATION.TOUR_TIME.FirstOrDefault().TOUR_TIME_DEPARTMENT_DATE).
                                                     ToString("dd/MM/yyyy"),
                                                     ((DateTime)item.staffdetail.TOUR_MISSION.
                                                     TOUR_INFORMATION.TOUR_TIME.FirstOrDefault().TOUR_TIME_END_DATE).
                                                     ToString("dd/MM/yyyy"));

                MissionList.Add(missionModel);
            }

            return MissionList;
        }

        public static bool InsertStaffDetailList(ObservableCollection<StaffDetailModel> StaffDetailList, int travelgroup_id, int user_id, bool IsFirst)
        {
            try
            {
                int countStaff = 0;
                foreach (StaffDetailModel item in StaffDetailList)
                {
                    TOUR_STAFF staff = DataProvider.Ins.DB.TOUR_STAFF.Where(x => x.TOUR_STAFF_NAME.Equals(item.StaffName)).FirstOrDefault();
                    TOUR_STAFF_DETAIL staffdetail = new TOUR_STAFF_DETAIL()
                    {
                        TOUR_MISSION_ID = item.MissionID,
                        TOUR_STAFF_ID = staff.TOUR_STAFF_ID,
                        TRAVEL_GROUP_ID = travelgroup_id
                    };
                    countStaff++;
                    DataProvider.Ins.DB.TOUR_STAFF_DETAIL.Add(staffdetail);
                }
                TOUR_RECORD tour_record = new TOUR_RECORD()
                {
                    TOUR_STAFF_ID = user_id,
                    TOUR_RECORD_DATE = DateTime.Now,
                    TOUR_RECORD_CONTENT = string.Format("{0} {1} staffs in travel group with id is {2}", IsFirst ? "Add" : "Update", countStaff, travelgroup_id)
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

        public static bool DeleteStaffDetail(int travelgroup_id)
        {
            try
            {
                var staffdetail = DataProvider.Ins.DB.TOUR_STAFF_DETAIL.Where(x => x.TRAVEL_GROUP_ID == travelgroup_id);
                DataProvider.Ins.DB.TOUR_STAFF_DETAIL.RemoveRange(staffdetail);
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

        public static BindableCollection<StaffDetailModel> GetStaffDetailList(int travelgroup_id)
        {
            BindableCollection<StaffDetailModel> StaffDetailList = new BindableCollection<StaffDetailModel>();
            var staffdetaillist = from staffdetail in DataProvider.Ins.DB.TOUR_STAFF_DETAIL
                                  where staffdetail.TRAVEL_GROUP_ID == travelgroup_id
                                  select staffdetail;

            foreach (var item in staffdetaillist)
            {
                StaffDetailModel staffdetail = new StaffDetailModel()
                {
                    StaffDetailID = item.TOUR_STAFF_DETAIL_ID,
                    StaffName = item.TOUR_STAFF.TOUR_STAFF_NAME,
                    Staff_ID = item.TOUR_STAFF_ID,
                    MissionID = item.TOUR_MISSION_ID,
                    MissionResponsibility = item.TOUR_MISSION.TOUR_MISSION_RESPONSIBILITY,
                    TravelGroupID = item.TRAVEL_GROUP_ID
                };

                StaffDetailList.Add(staffdetail);
            }

            return StaffDetailList;
        }
    }
}
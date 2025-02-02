﻿using TourManagementSystem.ViewModel;

namespace TourManagementSystem.ManagerView.Model
{
    public class HotelDetailModel : BaseViewModel
    {
        private int _Hotel_Detail_ID;

        public int Hotel_Detail_ID
        { get => _Hotel_Detail_ID; set { _Hotel_Detail_ID = value; OnPropertyChanged(); } }

        private int _Tour_Information_ID;

        public int Tour_Information_ID
        { get => _Tour_Information_ID; set { _Tour_Information_ID = value; OnPropertyChanged(); } }

        private int _Hotel_ID;

        public int Hotel_ID
        { get => _Hotel_ID; set { _Hotel_ID = value; OnPropertyChanged(); } }

        private int _Hotel_Day;

        public int Hotel_Day
        { get => _Hotel_Day; set { _Hotel_Day = value; OnPropertyChanged(); } }
    }
}
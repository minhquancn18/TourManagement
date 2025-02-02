﻿using TourManagementSystem.ViewModel;

namespace TourManagementSystem.ManagerView.Model
{
    public class HotelModel : BaseViewModel
    {
        private int _HOTEL_ID;

        public int HOTEL_ID
        { get => _HOTEL_ID; set { _HOTEL_ID = value; OnPropertyChanged(); } }

        private int _PLACE_ID;

        public int PLACE_ID
        { get => _PLACE_ID; set { _PLACE_ID = value; OnPropertyChanged(); } }

        private string _PLACE_NAME;

        public string PLACE_NAME
        { get => _PLACE_NAME; set { _PLACE_NAME = value; OnPropertyChanged(); } }

        private string _HOTEL_NAME;

        public string HOTEL_NAME
        { get => _HOTEL_NAME; set { _HOTEL_NAME = value; OnPropertyChanged(); } }

        private string _HOTEL_ADDRESS;

        public string HOTEL_ADDRESS
        { get => _HOTEL_ADDRESS; set { _HOTEL_ADDRESS = value; OnPropertyChanged(); } }

        private string _HOTEL_PHONE_NUMBER;

        public string HOTEL_PHONE_NUMBER
        { get => _HOTEL_PHONE_NUMBER; set { _HOTEL_PHONE_NUMBER = value; OnPropertyChanged(); } }

        private string _HOTEL_IS_RESTAURANT;

        public string HOTEL_IS_RESTAURANT
        { get => _HOTEL_IS_RESTAURANT; set { _HOTEL_IS_RESTAURANT = value; OnPropertyChanged(); } }

        private string _HOTEL_TYPE;

        public string HOTEL_TYPE
        { get => _HOTEL_TYPE; set { _HOTEL_TYPE = value; OnPropertyChanged(); } }

        private string _HOTEL_EMAIL;

        public string HOTEL_EMAIL
        { get => _HOTEL_EMAIL; set { _HOTEL_EMAIL = value; OnPropertyChanged(); } }

        private string _HOTEL_DESCRIPTION;

        public string HOTEL_DESCRIPTION
        { get => _HOTEL_DESCRIPTION; set { _HOTEL_DESCRIPTION = value; OnPropertyChanged(); } }

        private double _HOTEL_PRICE;

        public double HOTEL_PRICE
        { get => _HOTEL_PRICE; set { _HOTEL_PRICE = value; OnPropertyChanged(); } }

        private bool _HOTEL_IS_DELETE;

        public bool HOTEL_IS_DELETE
        { get => _HOTEL_IS_DELETE; set { _HOTEL_IS_DELETE = value; OnPropertyChanged(); } }

        private string _HOTEL_STATUS;

        public string HOTEL_STATUS
        { get => _HOTEL_STATUS; set { _HOTEL_STATUS = value; OnPropertyChanged(); } }

        private int _HOTEL_DAY;

        public int HOTEL_DAY
        { get => _HOTEL_DAY; set { _HOTEL_DAY = value; OnPropertyChanged(); } }
    }
}
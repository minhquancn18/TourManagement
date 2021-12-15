﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TourManagementSystem.ViewModel;

namespace TourManagementSystem.ManagerView.Model
{
    public class TourModel : BaseViewModel
    {
        private int _TOUR_ID;
        public int TOUR_ID { get => _TOUR_ID; set { _TOUR_ID = value; OnPropertyChanged(); } }

        private string _TOUR_NAME;
        public string TOUR_NAME { get => _TOUR_NAME; set { _TOUR_NAME = value; OnPropertyChanged(); } }

        private string _TOUR_CHARACTERISTIS;
        public string TOUR_CHARACTERISTIS { get => _TOUR_CHARACTERISTIS; set { _TOUR_CHARACTERISTIS = value; OnPropertyChanged(); } }

        private string _TOUR_TYPE;
        public string TOUR_TYPE { get => _TOUR_TYPE; set { _TOUR_TYPE = value; OnPropertyChanged(); } }

        private string _TOUR_IS_EXIST;
        public string TOUR_IS_EXIST { get => _TOUR_IS_EXIST; set { _TOUR_IS_EXIST = value; OnPropertyChanged(); } }

        private string _TOUR_STATUS;
        public string TOUR_STATUS { get => _TOUR_STATUS; set { _TOUR_STATUS = value; OnPropertyChanged(); } }

        private double _TOUR_STAR;
        public double TOUR_STAR { get => _TOUR_STAR; set { _TOUR_STAR = value; OnPropertyChanged(); } }
    }
}

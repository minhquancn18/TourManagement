﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TourManagementSystem.ViewModel;

namespace TourManagementSystem.ManagerView.Model
{
    public class TransportDetailModel : BaseViewModel
    {
        private int _Transport_Detail_ID;
        public int Transport_Detail_ID { get => _Transport_Detail_ID; set { _Transport_Detail_ID = value; OnPropertyChanged(); } }

        private int _Tour_Information_ID;
        public int Tour_Information_ID { get => _Tour_Information_ID; set { _Tour_Information_ID = value; OnPropertyChanged(); } }

        private int _Transport_ID;
        public int Transport_ID { get => _Transport_ID; set { _Transport_ID = value; OnPropertyChanged(); } }
    }
}

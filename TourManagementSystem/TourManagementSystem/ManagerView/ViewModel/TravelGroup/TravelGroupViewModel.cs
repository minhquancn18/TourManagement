﻿using System.Collections.ObjectModel;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using TourManagementSystem.Global.Model;
using TourManagementSystem.ManagerView.Model;
using TourManagementSystem.ViewModel;

namespace TourManagementSystem.ManagerView.ViewModel
{
    public class TravelGroupViewModel : BaseViewModel
    {
        private int _User_ID;

        public int User_ID
        { get => _User_ID; set { _User_ID = value; OnPropertyChanged(); } }

        private Visibility _IsVisibility;

        public Visibility IsVisibility
        { get => _IsVisibility; set { _IsVisibility = value; OnPropertyChanged("IsVisibility"); } }

        private Visibility _ProgressBarVisbility;

        public Visibility ProgressBarVisbility
        { get => _ProgressBarVisbility; set { _ProgressBarVisbility = value; OnPropertyChanged("ProgressBarVisbility"); } }

        private Visibility _WaitingVisbility;

        public Visibility WaitingVisbility
        { get => _WaitingVisbility; set { _WaitingVisbility = value; OnPropertyChanged("WaitingVisbility"); } }

        private Visibility _WaitingStaffVisbility;

        public Visibility WaitingStaffVisbility
        { get => _WaitingStaffVisbility; set { _WaitingStaffVisbility = value; OnPropertyChanged("WaitingStaffVisbility"); } }

        private ObservableCollection<TravelGroupModel> _TravelGroupItems;

        public ObservableCollection<TravelGroupModel> TravelGroupItems
        { get => _TravelGroupItems; set { _TravelGroupItems = value; OnPropertyChanged("TravelGroupItems"); } }

        private ObservableCollection<TravelGroupModel> _Refresh_TravelGroupItems;

        public ObservableCollection<TravelGroupModel> Refresh_TravelGroupItems
        { get => _Refresh_TravelGroupItems; set { _Refresh_TravelGroupItems = value; OnPropertyChanged("Refresh_TravelGroupItems"); } }

        private TravelGroupModel _TravelGroupSelected;

        public TravelGroupModel TravelGroupSelected
        { get => _TravelGroupSelected; set { _TravelGroupSelected = value; OnPropertyChanged("TravelGroupSelected"); } }

        public TravelGroupViewModel(int user_id, Visibility visibility)
        {
            User_ID = user_id;
            IsVisibility = visibility;
            WaitingVisbility = Visibility.Collapsed;
            _WaitingStaffVisbility = Visibility.Collapsed;
            LoadTravelGroupComboBox();
            TravelGroupItems = new ObservableCollection<TravelGroupModel>();
            Refresh_TravelGroupItems = new ObservableCollection<TravelGroupModel>();
            ProgressBarVisbility = Visibility.Visible;
            LoadDataInUC();
        }

        private async void LoadDataInUC()
        {
            if (IsVisibility == Visibility.Visible)
            {
                await Task.Delay(3000);
                TravelGroupItems = TravelGroupHandleModel.GetTravelGroupList();
                Refresh_TravelGroupItems = TravelGroupHandleModel.GetTravelGroupList();

                if (TravelGroupItems.Count == 0)
                {
                    WaitingStaffVisbility = Visibility.Collapsed;
                    WaitingVisbility = Visibility.Visible;
                }
                else
                {
                    WaitingStaffVisbility = Visibility.Collapsed;
                    WaitingVisbility = Visibility.Collapsed;
                }
            }
            else
            {
                await Task.Delay(4000);
                TravelGroupItems = TravelGroupHandleModel.GetTravelGroupListByUser(User_ID);
                Refresh_TravelGroupItems = TravelGroupHandleModel.GetTravelGroupListByUser(User_ID);

                if (TravelGroupItems.Count == 0)
                {
                    WaitingVisbility = Visibility.Collapsed;
                    WaitingStaffVisbility = Visibility.Visible;
                }
                else
                {
                    WaitingVisbility = Visibility.Collapsed;
                    WaitingStaffVisbility = Visibility.Collapsed;
                }
            }

            ProgressBarVisbility = Visibility.Hidden;
        }

        private ObservableCollection<ComboBoxModel> _CB_TravelGroupList;

        public ObservableCollection<ComboBoxModel> CB_TravelGroupList
        { get => _CB_TravelGroupList; set { _CB_TravelGroupList = value; OnPropertyChanged("CB_TourList"); } }

        private ComboBoxModel _CB_TravelGroupSelected;

        public ComboBoxModel CB_TravelGroupSelected
        { get => _CB_TravelGroupSelected; set { _CB_TravelGroupSelected = value; OnPropertyChanged("CB_TourSelected"); } }

        private void LoadTravelGroupComboBox()
        {
            _CB_TravelGroupList = new ObservableCollection<ComboBoxModel>
            {
                new ComboBoxModel("Group Name", true),
                new ComboBoxModel("Group Type", false),
                new ComboBoxModel("Tour Name", false),
                new ComboBoxModel("Start Date", false),
                new ComboBoxModel("End Date", false)
            };
            _CB_TravelGroupSelected = _CB_TravelGroupList.FirstOrDefault(x => x.IsSelected);
        }

        private string _FilterText;

        public string FilterText
        {
            get => _FilterText;
            set
            {
                _FilterText = value;
                OnPropertyChanged("FilterText");
                TravelGroupItems_Filter();
            }
        }

        private void TravelGroupItems_Filter()
        {
            TravelGroupItems = Refresh_TravelGroupItems;

            if (!string.IsNullOrEmpty(FilterText))
            {
                switch (CB_TravelGroupSelected.CB_Name)
                {
                    case "Travel Name":
                        TravelGroupItems = new ObservableCollection<TravelGroupModel>(TravelGroupItems.Where(x => x.TravelGroup_Name.Contains(FilterText) ||
                                                                                                            x.TravelGroup_Name.ToLower().Contains(FilterText) ||
                                                                                                            x.TravelGroup_Name.ToUpper().Contains(FilterText)));
                        break;

                    case "Travel Type":
                        TravelGroupItems = new ObservableCollection<TravelGroupModel>(TravelGroupItems.Where(x => x.TravelGroup_Type.Contains(FilterText) ||
                                                                                                            x.TravelGroup_Type.ToLower().Contains(FilterText) ||
                                                                                                            x.TravelGroup_Type.ToUpper().Contains(FilterText)));
                        break;

                    case "Tour Name":
                        TravelGroupItems = new ObservableCollection<TravelGroupModel>(TravelGroupItems.Where(x => x.Tour_Name.Contains(FilterText) ||
                                                                                                            x.Tour_Name.ToLower().Contains(FilterText) ||
                                                                                                            x.Tour_Name.ToUpper().Contains(FilterText)));
                        break;

                    case "Start Date":
                        TravelGroupItems = new ObservableCollection<TravelGroupModel>(TravelGroupItems.Where(x => x.Tour_StartString.Contains(FilterText)));
                        break;

                    case "End Date":
                        TravelGroupItems = new ObservableCollection<TravelGroupModel>(TravelGroupItems.Where(x => x.Tour_EndString.Contains(FilterText)));
                        break;
                }
            }
        }

        private ICommand _ShowDetailTravelGroupCommand;

        public ICommand ShowDetailTravelGroupCommand
        {
            get
            {
                if (_ShowDetailTravelGroupCommand == null)
                {
                    _ShowDetailTravelGroupCommand = new RelayCommand<ContentControl>(_ => TravelGroupSelected != null, p => p.Content = new ShowTravelGroupViewModel(User_ID, TravelGroupSelected, IsVisibility));
                }
                return _ShowDetailTravelGroupCommand;
            }
        }

        private ICommand _AddTravelGroupCommand;

        public ICommand AddTravelGroupCommand
        {
            get
            {
                if (_AddTravelGroupCommand == null)
                {
                    _AddTravelGroupCommand = new RelayCommand<ContentControl>(_ => true, p => p.Content = new AddTravelGroupViewModel(User_ID));
                }
                return _AddTravelGroupCommand;
            }
        }
    }
}
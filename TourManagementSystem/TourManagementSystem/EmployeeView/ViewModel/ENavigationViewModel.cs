﻿using System;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Windows;
using System.Windows.Data;
using System.Windows.Input;
using TourManagementSystem.EmployeeView.Model;
using TourManagementSystem.Global.Model;
using TourManagementSystem.Global.View;
using TourManagementSystem.ManagerView.ViewModel;
using TourManagementSystem.ViewModel;

namespace TourManagementSystem.EmployeeView.ViewModel
{
    public class ENavigationViewModel : BaseViewModel
    {
        // CollectionViewSource enables XAML code to set the commonly used CollectionView properties,
        // passing these settings to the underlying view.
        private CollectionViewSource MenuItemsCollection;

        // ICollectionView enables collections to have the functionalities of current record management,
        // custom sorting, filtering, and grouping.
        public ICollectionView SourceCollection => MenuItemsCollection.View;

        private int _User_ID;

        public int User_ID
        { get => _User_ID; set { _User_ID = value; OnPropertyChanged("User_ID"); } }

        private int _User_Role;

        public int User_Role
        { get => _User_Role; set { _User_Role = value; OnPropertyChanged("User_Role"); } }

        private string _TypeText;

        public string TypeText
        { get => _TypeText; set { _TypeText = value; OnPropertyChanged("TypeText"); } }

        private string _TitleText;

        public string TitleText
        { get => _TitleText; set { _TitleText = value; OnPropertyChanged("TitleText"); } }

        public ENavigationViewModel()
        {
            User_ID = Properties.Settings.Default.User_ID;
            TitleText = SetTitleText(User_ID);
            TypeText = SetTypeText(User_ID);

            // ObservableCollection represents a dynamic data collection that provides notifications when items
            // get added, removed, or when the whole list is refreshed.
            if (User_Role == 1)
            {
                ObservableCollection<MenuItems> menuItems = new ObservableCollection<MenuItems>()
                {
                    new MenuItems {MenuName = "Tour", MenuImage = @"Assets/tour.png"},
                    new MenuItems {MenuName = "Travel Group", MenuImage = @"Assets/travelgroup.png"},
                    new MenuItems {MenuName = "Customer", MenuImage = @"Assets/customer.png"},
                    new MenuItems {MenuName = "Place", MenuImage = @"Assets/place.png"},
                    new MenuItems {MenuName = "Transports", MenuImage = @"Assets/transport.png"},
                    new MenuItems {MenuName = "Hotel", MenuImage = @"Assets/hotel.png"},
                    new MenuItems {MenuName = "Account", MenuImage = @"Assets/account.png"},
                    new MenuItems {MenuName = "Feedback", MenuImage = @"Assets/feedback.png"}
                };

                MenuItemsCollection = new CollectionViewSource { Source = menuItems };
                MenuItemsCollection.Filter += MenuItem_Filter;
            }
            else
            {
                ObservableCollection<MenuItems> menuItems = new ObservableCollection<MenuItems>()
                {
                    new MenuItems {MenuName = "Tour", MenuImage = @"Assets/tour.png"},
                    new MenuItems {MenuName = "Travel Group", MenuImage = @"Assets/travelgroup.png"},
                    new MenuItems {MenuName = "Customer", MenuImage = @"Assets/customer.png"},
                    new MenuItems {MenuName = "Place", MenuImage = @"Assets/place.png"},
                    new MenuItems {MenuName = "Staff", MenuImage = @"Assets/staff.png"},
                    new MenuItems {MenuName = "Transports", MenuImage = @"Assets/transport.png"},
                    new MenuItems {MenuName = "Hotel", MenuImage = @"Assets/hotel.png"},
                    new MenuItems {MenuName = "Account", MenuImage = @"Assets/account.png"},
                    new MenuItems {MenuName = "Feedback", MenuImage = @"Assets/feedback.png"}
                };

                MenuItemsCollection = new CollectionViewSource { Source = menuItems };
                MenuItemsCollection.Filter += MenuItem_Filter;
            }

            // Set Startup Page
            SelectedViewModel = new AccountViewModel(User_ID);
        }

        private string SetTypeText(int user_id)
        {
            switch (DatabaseHandleModel.IsTypeAccount(user_id))
            {
                case 1:
                    User_Role = 1;
                    return string.Format("     S T A F F       V I E W      ");

                case -1:
                    User_Role = -1;
                    return string.Format("     D I R E C T O R       V I E W      ");

                default:
                    return string.Format("");
            }
        }

        private string SetTitleText(int user_id)
        {
            switch (DatabaseHandleModel.IsTypeAccount(user_id))
            {
                case 1:
                    User_Role = 1;
                    return string.Format("Staff Window");

                case -1:
                    User_Role = -1;
                    return string.Format("Director Window");

                default:
                    return string.Format("Error Window");
            }
        }

        //Text Search Filter
        private string _FilterText;

        public string FilterText
        {
            get => _FilterText;
            set
            {
                _FilterText = value;
                MenuItemsCollection.View.Refresh();
                OnPropertyChanged("FilterText");
            }
        }

        private void MenuItem_Filter(object sender, FilterEventArgs e)
        {
            if (string.IsNullOrEmpty(FilterText))
            {
                e.Accepted = true;
                return;
            }

            MenuItems _items = e.Item as MenuItems;
            if (_items.MenuName.IndexOf(FilterText, StringComparison.OrdinalIgnoreCase) >= 0)
            {
                e.Accepted = true;
            }
            else
            {
                e.Accepted = false;
            }
        }

        // Select ViewModel
        private object _SelectedViewModel;

        public object SelectedViewModel
        {
            get => _SelectedViewModel;
            set { _SelectedViewModel = value; OnPropertyChanged("SelectedViewModel"); }
        }

        // Switch Views
        public void SwitchViews(object parameter)
        {
            switch (parameter)
            {
                case "Tour":
                    if (User_Role == 1)
                    {
                        SelectedViewModel = new TourViewModel(User_ID, Visibility.Collapsed, Visibility.Collapsed);
                    }
                    else
                    {
                        SelectedViewModel = new TourViewModel(User_ID, Visibility.Collapsed, Visibility.Visible);
                    }

                    break;

                case "Travel Group":
                    SelectedViewModel = new TravelGroupViewModel(User_ID, Visibility.Collapsed);
                    break;

                case "Customer":
                    SelectedViewModel = new TravellerViewModel(User_ID, Visibility.Collapsed);
                    break;

                case "Place":
                    SelectedViewModel = new PlaceViewModel(User_ID, Visibility.Collapsed);
                    break;

                case "Transports":
                    SelectedViewModel = new TransportViewModel(User_ID, Visibility.Collapsed);
                    break;

                case "Hotel":
                    SelectedViewModel = new HotelViewModel(User_ID, Visibility.Collapsed);
                    break;

                case "Account":
                    SelectedViewModel = new AccountViewModel(User_ID);
                    break;

                case "Feedback":
                    SelectedViewModel = new InformationViewModel(User_ID);
                    break;

                case "Staff":
                    SelectedViewModel = new StaffViewModel(User_ID, Visibility.Collapsed);
                    break;

                default:
                    SelectedViewModel = new AccountViewModel(User_ID);
                    break;
            }
        }

        // Menu Button Command
        private ICommand _Menucommand;

        public ICommand MenuCommand
        {
            get
            {
                if (_Menucommand == null)
                {
                    _Menucommand = new RelayCommand<object>(p => true, p => SwitchViews(p));
                }
                return _Menucommand;
            }
        }

        // Minimize Button Command
        private ICommand _MinimizeCommand;

        public ICommand MinimizeCommand
        {
            get
            {
                if (_MinimizeCommand == null)
                {
                    _MinimizeCommand = new RelayCommand<Window>(p => true, p =>
                    {
                        p.WindowState = WindowState.Minimized;
                    });
                }
                return _MinimizeCommand;
            }
        }

        // Close App Command
        private ICommand _CloseCommand;

        public ICommand CloseAppCommand
        {
            get
            {
                if (_CloseCommand == null)
                {
                    _CloseCommand = new RelayCommand<Window>(p => true, p =>
                    {
                        bool? Result = new MessageWindow("Do you want to log out?", MessageType.Confirmation, MessageButtons.YesNo).ShowDialog();
                        if (Result == true)
                        {
                            LoginWindow wLogin = new LoginWindow();
                            p.Close();
                            wLogin.ShowDialog();
                        }
                    })
                    {
                    };
                }
                return _CloseCommand;
            }
        }
    }
}
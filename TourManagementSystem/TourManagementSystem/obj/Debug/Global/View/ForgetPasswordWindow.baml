   M S B A M L   `   `   `  ����O  KTourManagementSystem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullS.clr-namespace:TourManagementSystem.Global.View TourManagementSystem.Global.View  5      ]3clr-namespace:TourManagementSystem.Global.ViewModel%TourManagementSystem.Global.ViewModel  5
      ;    5TourManagementSystem.Global.View.ForgetPasswordWindow   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5      :local.clr-namespace:TourManagementSystem.Global.View  5      _ [MaterialDesignThemes.Wpf, Version=4.3.0.3, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5	      C	viewmodel3clr-namespace:TourManagementSystem.Global.ViewModel  5
      -   5          �Name$  ForgetPasswordControl��5       � Title$ Forget Password Window��5      $	��380��5      $	��450��5       � AllowsTransparency . 
������  � Icon$% /Resources/Images/logo_icon.ico��5       � 
ResizeMode$ NoResize=�5       � WindowStartupLocation$ CenterScreen=�5       � WindowStyle$
 None=�5      ��5      �� 5   
    �� Triggers 5      :� 5       :� RoutedEvent$ Window.Loaded��6   .[�5      �� .��5      �� .��5      W� 	 �� TargetProperty$	 Opacity�5   !   
 W� From$	
 0.0X�5   !   	 W� To$	 1.0X�5    !    g� Duration$ 0:0:1D�5!   !   5"      5#      5$      5&       � DataContext 5)      C   =TourManagementSystem.Global.ViewModel.ForgetPasswordViewModel  5*   
   .��5-      � .+�5.   
   �  K� ZIndex$
 1000��6   y�6#   �� *ProgressBarVisbility+��50      �� 51       �� Opacity$ .5Q�6"    �� Color$ Black��6/   .+�54      �� $��Center=�55      $��Stretch=�56       �� Orientation$ 
Horizontal=�57      .+�58      � $��60��59      $��60��5:      
������� � IsIndeterminate .  %  !MaterialDesignCircularProgressBar#��[  5=       � Value$ 35Q�5>      �� 5?      $
��16,0q�5@      $��Center=�5A      $��24(�5B      
�������$��
Loading...��5D      5E      5F      � 5H   
    � RowDefinitions 5J      �� 5K      $
��auto �6    �� 5L      .+�5O      �� $��2��5P      
�������$��3q�5R       �� CornerRadius$ 8��5S      ��5U      �� 5V      $ #0f6f68��6&   5X      �� 5Z      $��20q�5[      $��Center=�5\      $	��Top=�5]      .+�5_      �� $	��120��5`      $	��120��5a      $��Stretch=�5b      $��Stretch=�5c       J� RenderTransformOrigin$ 0.5,0.5&�5d      $
��Fill=�5e      ��5f      �� 5g       �� 	UriSource$6 0pack://application:,,,/Resources/Images/logo.jpg?�6&   5i      �� 5j      $	��0,0q�5k      $��Center=�5l      $��	helvetica)�5m      $��22(�5n      
�������$��Tour Management��5p      5q      �� 5s      $��1��6   $
��40,0q�6&   .+�5u      �� $ 
Horizontal=�6   .+�5w      '  !MaterialDesignThemes.Wpf.PackIcon  $��24��5x      $��24��5y      $��Center=�5z      $��Center=�5{      
�������   Kind$
 User=�5}      �� 5      $	��270��5�      $��12,0,0,0q�5�      $��Center=�5�      $��Center=�5�      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ 	User Name��5�      .  (MaterialDesignThemes.Wpf.TextFieldAssist   UnderlineBrush
 �����
������� �� 
CaretBrush
 �����$��	Helvetica)�5�      $��20(�5�      $��Light"�5�      
���������5�      �� *
Username+5�      �� 5�      $��0,24,0,0q�6   $ 
Horizontal=�6/   .+�5�        $��24��5�      $��24��5�      $��Center=�5�      $��Center=�5�      
�������$ Email=�5�      �� 5�      -   5         ��Name$ tbEmail��5�      $	��270��5�      $��12,0,0,0q�5�      $��Center=�5�      $��Center=�5�      $ 
User Email��5�      
 �����
�������
 �����$��	Helvetica)�5�      $��20(�5�      $��Light"�5�      
���������5�      �� *	UserEmail+5�      �� 5�      $��0,24,0,0q�6   $ 
Horizontal=�6/   .+�5�        $��24��5�      $��24��5�      $��Center=�5�      $��Center=�5�      
�������$ ConfirmationNumberOutline=�5�      �� 5�      -   5        $ tbNumber��5�      $	��100��5�      $��12,0,0,0q�5�      $��Center=�5�      $��Center=�5�      $ Number��5�      
 �����
�������
 �����$��	Helvetica)�5�      $��20(�5�      $��Light"�5�      
������� �� 	MaxLength$ 6��5�       � ToolTip$ Code has 6 characters��5�      ��5�      �� *NumberConfirm+5�      �� 5�      $	��120��5�      $��40��5�      $��	30,0,24,0q�5�      $��
Send Email��5�      
�������  LoginButton#��[ 5�      ��5�      �� *SendEmailCommand+��5�      ��  �� ElementName$ ForgetPasswordControl��5�      5�      �� 5�      $��0,16,0,0q�6   $ 
Horizontal=�6/   .+�5�      �� $	��120��5�      $��40��5�      $��	24,0,24,0q�5�      $��Confirm��5�      
�������#��[ 5�      ��5�      �� *ConfirmCommand+��5�      �� $ ForgetPasswordControl��5�      �� 5�      $	��120��5�      $��40��5�      $��Cancel��5�      
��� ���  CloseButton#��[ 5�      ��5�      �� *CloseCommand+��5�      �� $ ForgetPasswordControl��5�      5�      �� 5�      $��0,12,0,0q�6   .+�5�      �� $	��120��5�      $��40��5�      $��0,0,24,0q�5�      $��Back to Login��5�      
�������  ForgetButton#��[ 5�      ��5�      �� *LoginCommand+��5�      �� $ ForgetPasswordControl��5�      5�      5�      5�      5�      5�      
   M S B A M L   `   `   `  ����O  KTourManagementSystem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]3clr-namespace:TourManagementSystem.Global.ViewModel%TourManagementSystem.Global.ViewModel  5	      2    ,TourManagementSystem.Global.View.LoginWindow   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5      _ [MaterialDesignThemes.Wpf, Version=4.3.0.3, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5      C	viewmodel3clr-namespace:TourManagementSystem.Global.ViewModel  5	      -   5          �Name$  LoginControl��5
       � Title$ Login Window��5      $	��380��5      $	��450��5       � AllowsTransparency . 
������  � Icon$% /Resources/Images/logo_icon.ico��5       � 
ResizeMode$ NoResize=�5       � WindowStartupLocation$ CenterScreen=�5       � WindowStyle$
 None=�5      ��5      �� 5   
    �� Triggers 5      :� 5       :� RoutedEvent$ Window.Loaded��6   .[�5      �� .��5      �� .��5      W� 	 �� TargetProperty$	 Opacity�5   !   
 W� From$	
 0.0X�5   !   	 W� To$	 1.0X�5   !    g� Duration$ 0:0:1D�5    !   5!      5"      5#      5%       � DataContext 5(      :   4TourManagementSystem.Global.ViewModel.LoginViewModel  5)   
   .��5+      � .+�5-   
   �  K� ZIndex$
 1000��6   y�6#   �� *ProgressBarVisbility+��5/      �� 50       �� Opacity$ .5Q�6"    �� Color$ Black��6/   .+�53      �� $��Center=�54      $��Stretch=�55       �� Orientation$ 
Horizontal=�56      .+�57      � $��60��58      $��60��59      
������� � IsIndeterminate .  %  !MaterialDesignCircularProgressBar#��[  5<       � Value$ 35Q�5=      �� 5>      $
��16,0q�5?      $��Center=�5@      $��24(�5A      
�������$��
Loading...��5C      5D      5E      � 5H   
    � RowDefinitions 5I      �� 5J      $
��auto �6    �� 5K      $��* �6    .+�5N      �� $��2��5O      
�������$��3q�5Q       �� CornerRadius$ 8��5R      ��5T      �� 5U      $ #0f6f68��6&   5W      � 5Y      $	��Top=�6   .+�5[      �� $	��190��5\      $	��190��5]      $��0,10,0,0q�5^      $��Stretch=�5_      $��Stretch=�5`       J� RenderTransformOrigin$ 0.5,0.5&�5a      $
��Fill=�5b      ��5c      �� 5d       �� 	UriSource$6 0pack://application:,,,/Resources/Images/logo.jpg?�6&   5f      �� 5g      $��	0,150,0,0q�5h      $��Center=�5i      $��	helvetica)�5j      $��22(�5k      
�������$��Tour Management��5m      5n      �� 5p      $��1��6   $
��40,0q�6&   .+�5r      �� $ 
Horizontal=�6   .+�5t      '  !MaterialDesignThemes.Wpf.PackIcon  $��24��5u      $��24��5v      $��Center=�5w      $��Center=�5x      
�������   Kind$
 User=�5z      �� 5|      $	��230��5}      $��12,0,0,0q�5~      $��Center=�5      $��Center=�5�      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$
 User��5�      .  (MaterialDesignThemes.Wpf.TextFieldAssist   UnderlineBrush
 �����
������� �� 
CaretBrush
 �����$��	Helvetica)�5�      $��20(�5�      $��Light"�5�      
������� � ToolTip$ UserName��5�      ��5�      �� *
Username+5�      5�      � 5�      $��0,24,0,0q�6   .+�5�        $��24��5�      $��24��5�      $��Center=�5�      
�������$ Password=�5�      G� 5�      -   5         G�Name$ passwordBox��5�      $��	32,0,40,0q�5�      $��Center=�5�      $ Password��5�      
 �����
������� G� 
CaretBrush
 �����$��	Helvetica)�5�      $��20(�5�      $��Light"�5�      
�������y�5�      �� *PasswordBoxVisibility+.  (System.Windows.Interactivity.Interaction   Triggers 5�      /  )System.Windows.Interactivity.EventTrigger  5�          	EventName$  PasswordChanged��6-   .  (System.Windows.Interactivity.TriggerBase!   Actions.! 5�   "   6  0System.Windows.Interactivity.InvokeCommandAction  "   Command" 68   �� *PasswordChangedCommand+#   CommandParameter# 6c   �� $ �� ElementName$$ passwordBox��5�      5�      �� 5�      $	��230��5�      $��	32,0,40,0q�5�      $��Center=�5�      $ Password��5�      
 �����
�������
 �����$��	Helvetica)�5�      $��20(�5�      $��Light"�5�      
�������% �� 
IsReadOnly% . ��5�      �� *UserPassword+y�5�      �� *TextBoxVisibility+�� 5�      $��32��5�      $��32��5�      $��	262,0,0,0q�5�      $��1q�5�      
������ 
������ ��5�      �� *VisibilityPasswordCommand+.��5�        $��24��5�      $��24��5�      
������� 5�      �� *PasswordVisibility+5�      5�      �� 5�      $
��0,12q�6   .+�5�      �� $��Stretch=�5�      $��Stretch=�5�      -	  'MaterialDesignThemes.Wpf.CheckBoxAssist& 	  CheckBoxSize$& 28Q�5�      ���	#FFEB5215
�������$��20(�5�      
�������  MaterialDesignCheckBox#��[ 5�      ' d� 	IsChecked' 5�      �� *	IsCheck+( � 	Resources( 5�        MaterialDesignCheckBoxOff  PrimaryHueMidBrush��%R   &	       &	      �� 5�      $ White��6P   �� 5�      $ Green��6I   5�      .��6.   Remember me?5�      5�      �� 5�      $��0,12,0,0q�6   $ 
Horizontal=�6/   .+�5�      �� $	��100��5�      $��40��5�      $��	44,0,24,0q�5�      $��Login��5�      
�������  LoginButton#��[ 5�      ��5�      �� *LoginCommand+��5�      �� $$ LoginControl��5�      �� 5�      $	��100��5�      $��40��5�      $��Cancel��5�      
��� ���  CloseButton#��[ 5�      ��5�      �� *CloseCommand+��5�      �� $$ LoginControl��5�      5�      �� 5�      $��0,12,0,0q�6   .+�5�      �� $	��160��5�      $��40��5�      $��	24,0,24,0q�5�      $��Forget Password?��5�      
�������  ForgetButton#��[ 5�      ��5�      �� *ForgetPasswordCommand+��5�      �� $$ LoginControl��5�      5�      5�      5�      5�      5�      
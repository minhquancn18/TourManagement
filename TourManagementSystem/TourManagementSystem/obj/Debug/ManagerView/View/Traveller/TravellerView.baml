   M S B A M L   `   `   `  ����O  KTourManagementSystem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]3clr-namespace:TourManagementSystem.ManagerView.View%TourManagementSystem.ManagerView.View  5      9    3TourManagementSystem.ManagerView.View.TravellerView   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      U QWpfAnimatedGif, Version=2.0.0.0, Culture=neutral, PublicKeyToken=9e7cd3b544a090dc,gif"http://wpfanimatedgif.codeplex.com  5      ?local3clr-namespace:TourManagementSystem.ManagerView.View  5      _ [MaterialDesignThemes.Wpf, Version=4.3.0.3, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5	      $
��1190��5
      $	��620��5      ��5      �� 5   
     �� Triggers  5      :� 5       :� RoutedEvent$ UserControl.Loaded��6   .[�5      �� .��5      �� .��5      W�  �� TargetProperty$ Opacity�5   !    W� From$	 0.0X�5   !   	 W� To$	 1.0X�5   !    g� Duration$ 0:0:1D�5   !   5      5      5      5       � 	Resources 5         WrapText �� 
TargetType �� Property	 �� Value & "MaterialDesignDataGridColumnHeader
 �� BasedOn=  7System.Windows.Controls.Primitives.DataGridColumnHeader  MaterialDesignDataGridCell*  $System.Windows.Controls.DataGridCell P� Property P� Value��%�  &	        '  J     7  '  �     7  �� 5    
   " ��6!   .�5!      ��  � ��$
	 Wrap=�6-   5"      �� 5#   
   8
   "  6N   .�5$      ��  � ��$		 0.5q�60   �� 5%       � ��	 �#D6D6D66,   �� 5&       � ��	 �#FFFFFF6+   5'      �� 5(   
   8
   "  6F   .�5)      ��  � ��$	 0q�60   �� 5*       � ��	 �#d6d6d66,     5+      P� 5,       �@J�IsMouseOver . . �5-      ��  � ��	 �#FDF8EA63   5.      50      51      .��53      �� -   5         ��Name$ contentControlMain��53      .��55   
   �� ���#0f6f68$��3q�57       �� CornerRadius$ 15��58      ._�59      � .+�5;      ��  K� ZIndex$
 1000��5<      $	��0.5q�5=      $ 25��5>      ._�5?      � y�6   �� *ProgressBarVisbility+��5A      �� 5B       �� Opacity$ .3Q�6.    �� Color$ Black��6;   .+�5D      �� $��0,120,0,120q�5E      $��Center=�5F       �� Orientation$ 
Horizontal=�5G      .+�5H      � $��80��5I   !   $��80��5J   !   
������� � IsIndeterminate .  % !MaterialDesignCircularProgressBar#��[ 5M   !    � Value$ 35Q�5N   !   �� 5O      $
��16,0q�5P   !   $��Center=�5Q   !   $��24(�5R   !   
�������$��
Loading...��5T   !   5U      5V      5W      � 5Y      $��0,0,0,0q�6    � RowDefinitions 5Z      �� 5[      $
��auto �6(   �� 5\      $
��auto �6(   �� 5]      $
��auto �6(   .+�5`      �� $��0��5a      $��60��5b      ���#0f6f68$ 	15 15 0 0��5d      ._�5e      �� $��Center=�5f      $��Center=�5g      $��24(�5h      
�������$#��T R A V E L L E R    L I S T ��5j      5k      � 5m      $��1��6    � ColumnDefinitions 5n      �� 5o      $
��auto �6/   �� 5p      $
��auto �6/   �� 5q      $
��auto �6/   �� 5r      $
��auto �6/   .+�5u      �� $��0��5v      $��16,5,19.6,4.6q�5w      ���#FAFAFA
�������$��1q�5z      $ 10��5{      ._�5}      �� $��10,0,0,0q�6)   $ 
Horizontal=�6;   .+�5~   "   '  !MaterialDesignThemes.Wpf.PackIcon  $��25��5   %   $��30��5�   %   $��0,0,0,0q�5�   %   $��Center=�5�   %   
���iii�   Kind$ Search=�5�   %   �� 5�   "   $	��300��5�   %   $��40��5�   %   $��10,2,0,0q�5�   %   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Search��5�   %   .  (MaterialDesignThemes.Wpf.TextFieldAssist   DecorationVisibility$ Hidden=�5�   %   
������ $��18(�5�   %     MaterialDesignTextBoxBase#��[ 5�   %   .��6X   ��5�   &   �� 5�   *    �� Path$ 
FilterText�62    �� UpdateSourceTrigger$ PropertyChanged=�6D    �� ValidationRules 5�   .   5�   +   .��5�   4   5�   #   5�      5�      �� 5�      $��1��5�      $��0.4,0,27.4,-0.4q�5�      $ 
Horizontal=�5�      .+�5�      �� -   5        $��cbSearch��5�   !   $	��140��5�   !   $��34��5�   !   $��10q�5�   !    �� DisplayMemberPath$ CB_Name��5�   !   $��18(�5�   !   
���iii���5�   !   �� *CB_TravellerList+ �� Mode$ TwoWay=� �� SelectedValue 5�   !   �� *CB_TravellerSelected+��5�   "   �� 5�   &   " ��6,   .�5�   *   ��  �@��
IsSelected	 6G   �� *
IsSelected+5�   '   5�      5�      �� 5�      $��2��5�      $	��200��5�      $��50��5�      $��300,10,20,9.6q�5�      $��Right=�5�      $��Add New Traveller��5�      ���#0f6f68  	AddButton#��[ 5�      ��5�      �� *AddTravellerCommand+��5�      ��   �� ElementName$  contentControlMain��y�5�      �� *IsVisibility+5�      �� 5�      $��2��6   $	 500��6*   ._�5�      � y�6   �� *WaitingVisbility+��5�      �� 5�   "   $ 1Q�62   $ White��6>   .+�5�      �� $��0,60,0,0q�5�   !   $��Center=�5�   !   $ Vertical=�5�   !   .+�5�   "   �� $	��600��5�   %   $	��300��5�   %   "  WpfAnimatedGif.ImageBehavior!   AnimatedSource$9! 3pack://application:,,,/Resources/Images/waiting.gif��5�   %   "   	AutoStart" . 5�   %   �� 5�   "   $��16,16q�5�   %   $��Center=�5�   %   $��Center=�5�   %   $��Roboto)�5�   %   $��32(�5�   %   $��Italic$�5�   %   $��DemiBold"�5�   %   
���   �$$��Please update more travellers.��5�   %   5�      5�      5�      &   System.Windows.Controls.DataGrid  5�      $��2��5�      $
��1150��5�      $	��470��5�      $	��Top=�5�      -  'MaterialDesignThemes.Wpf.DataGridAssist#   CellPadding$# 12 8 0 8q�5�      $   ColumnHeaderPadding$$ 20 8 0 8q�5�      % J� 	AllowDrop% . &   AutoGenerateColumns& .  '   CanUserAddRows' .  (   CanUserDeleteRows( .  )   CanUserReorderColumns) .  *   CanUserSortColumns* . $��15(�5�      +   GridLinesVisibility$+ Vertical=�5�      ,   
IsReadOnly, . -   SelectionMode$- Single=�5�      ".   VerticalScrollBarVisibility$. Visible=�5�      ��5�      �� *TravellerItems+/ �� SelectedItem/ 5�      �� *TravellerSelected+0 J� InputBindings0 5�      d� 5�      1 d� Gesture$1 LeftDoubleClicka�5�   !   2 �� Command2 5�   !   �� *ShowDetailTravellerCommand+3 �� CommandParameter3 5�   !   �� $  contentControlMain��5�   !   4   Columns4 5�      0	  *System.Windows.Controls.DataGridTextColumn	  5�      ,
  &System.Windows.Controls.DataGridColumn5 
  Width5  /System.Windows.Controls.DataGridLengthConverter$
5 0.1* 5�   !   1  +System.Windows.Controls.DataGridBoundColumn6   ElementStyle#6 [  5�   !   7 
  Header$7 ID��5�   !   8   Binding8 5�   !   �� *Traveller_ID+5�   !   	  5�      $5 0.25* 5�   !   #6 [  5�   !   $
7 Name��5�   !   8 5�   !   �� *Traveller_Name+5�   !   	  5�      $
5 0.2* 5�   !   #6 [  5   !   $7 Citizen Identity��5  !   8 5�   !   �� *Traveller_CitizenIdentity+5  !   	  5     $
5 0.1* 5  !   #6 [  5  !   $7 Gender��5  !   8 5  !   �� *Traveller_Sex+5  !   	  5     $
5 0.2* 5  !   #6 [  5
  !   $7 Phone Number��5  !   8 5	  !   �� *Traveller_PhoneNumber+5  !   	  5     $
5 0.2* 5  !   #6 [  5  !   $
7 Type��5  !   8 5  !   �� *Traveller_Type+5  !   	  5     $5 0.15* 5  !   #6 [  5  !   $7 Number Tour��5  !   8 5  !   �� *Traveller_Number_Tour+5  !   5     5     5     5     5     5     
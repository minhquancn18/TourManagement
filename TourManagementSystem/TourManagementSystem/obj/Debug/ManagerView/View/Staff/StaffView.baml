   M S B A M L   `   `   `  ����O  KTourManagementSystem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]3clr-namespace:TourManagementSystem.ManagerView.View%TourManagementSystem.ManagerView.View  5      5    /TourManagementSystem.ManagerView.View.StaffView   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      U QWpfAnimatedGif, Version=2.0.0.0, Culture=neutral, PublicKeyToken=9e7cd3b544a090dc,gif"http://wpfanimatedgif.codeplex.com  5      ?local3clr-namespace:TourManagementSystem.ManagerView.View  5      _ [MaterialDesignThemes.Wpf, Version=4.3.0.3, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5	      $
��1190��5
      $	��620��5      ��5      �� 5   
     �� Triggers  5      :� 5       :� RoutedEvent$ UserControl.Loaded��6   .[�5      �� .��5      �� .��5      W�  �� TargetProperty$ Opacity�5   !    W� From$	 0.0X�5   !   	 W� To$	 1.0X�5   !    g� Duration$ 0:0:1D�5   !   5      5      5      5       � 	Resources 5          WrapText �� 
TargetType �� Property	 �� Value & "MaterialDesignDataGridColumnHeader
 �� BasedOn=  7System.Windows.Controls.Primitives.DataGridColumnHeader  MaterialDesignDataGridCell*  $System.Windows.Controls.DataGridCell P� Property P� Value��%�  &	        '  J     7  '  �     7  �� 5!   
   " ��6!   .�5"      ��  � ��$
	 Wrap=�6-   5#      �� 5$   
   8
   "  6N   .�5%      ��  � ��$		 0.5q�60   �� 5&       � ��	 �#D6D6D66,   �� 5'       � ��	 �#FFFFFF6+   5(      �� 5)   
   8
   "  6F   .�5*      ��  � ��$	 0q�60   �� 5+       � ��	 �#d6d6d66,     5,      P� 5-       �@J�IsMouseOver . . �5.      ��  � ��	 �#FDF8EA63   5/      51      52      .��54      �� -   5         ��Name$ ContentControlMain��54      .��55   
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
�������$��S T A F F    L I S T ��5j      5k      � 5m      $��1��6    � ColumnDefinitions 5n      �� 5o      $
��auto �6/   �� 5p      $	��270 �6/   �� 5q      $
��auto �6/   �� 5r      $
��auto �6/   .+�5u      �� $��0��5v      $	��400��5w      $��50��5x      $��5,5,20,5q�5y      ���#FAFAFA
�������$��1q�5|      $ 10��5}      ._�5      �� $��10,0,0,0q�6)   $ 
Horizontal=�6;   .+�5�   "   '  !MaterialDesignThemes.Wpf.PackIcon  $��25��5�   %   $��30��5�   %   $��0,0,0,0q�5�   %   $��Center=�5�   %   
���iii�   Kind$ Search=�5�   %   �� 5�   "   $	��300��5�   %   $��40��5�   %   $��10,2,0,0q�5�   %   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Search��5�   %   .  (MaterialDesignThemes.Wpf.TextFieldAssist   DecorationVisibility$ Hidden=�5�   %   
������ $��18(�5�   %     MaterialDesignTextBoxBase#��[ 5�   %   .��6X   ��5�   &   �� 5�   *    �� Path$ 
FilterText�62    �� UpdateSourceTrigger$ PropertyChanged=�6D    �� ValidationRules 5�   .   5�   +   .��5�   4   5�   #   5�      5�      �� 5�      $��1��6%   $ 
Horizontal=�65   .+�5�      �� -   5        $��cbSearch��5�   !   $	��140��5�   !   $��34��5�   !   $��10q�5�   !    �� DisplayMemberPath$ CB_Name��5�   !   $��18(�5�   !   
���iii���5�   !   �� *CB_StaffList+ �� Mode$ TwoWay=� �� SelectedValue 5�   !   �� *CB_StaffSelected+��5�   "   �� 5�   &   " ��6,   .�5�   *   ��  �@��
IsSelected	 6G   �� *
IsSelected+5�   '   5�      �� 5�      $��
10,12,0,15q�5�   !   $��Stretch=�5�   !   $��Stretch=�5�   !   -  'MaterialDesignThemes.Wpf.CheckBoxAssist    CheckBoxSize$  24Q�5�   !   ���	#FFEB5215
���   �$��20(�5�   !   
���   �  MaterialDesignCheckBox#��[ 5�   !   ! d� 	IsChecked! 5�   !   �� *Checkbox_DisplayAllStaff+.��5�   Q   	All Staff5�      5�      �� 5�      $��2��5�      $	��200��5�      $��50��5�      $��	60,5,10,5q�5�      $��Right=�5�      $��Add New Staff��5�      ���#0f6f68  	AddButton#��[ 5�      ��5�      �� *AddStaffCommand+��5�      �� " �� ElementName$" ContentControlMain��y�5�      �� *IsVisibility+�� 5�      $��3��5�      $	��200��5�      $��50��5�      $��	10,5,40,5q�5�      $��Right=�5�      $��	Statistic��5�      ���#EB7B47  StatisticButton#��[ 5�      ��5�      �� *StatisticStaffCommand+��5�      �� $" ContentControlMain��5�      5�      �� 5�      $��2��6   $	 500��6*   ._�5�      � y�6   �� *WaitingVisbility+��5�      �� 5�   "   $ 1Q�62   $ White��6>   .+�5�      �� $��0,60,0,0q�5�   !   $��Center=�5�   !   $ Vertical=�5�   !   .+�5�   "   �� $	��600��5�   %   $	��300��5�   %   "  WpfAnimatedGif.ImageBehavior#   AnimatedSource$9# 3pack://application:,,,/Resources/Images/waiting.gif��5�   %   $   	AutoStart$ . 5�   %   �� 5�   "   $��16,16q�5�   %   $��Center=�5�   %   $��Center=�5�   %   $��Roboto)�5�   %   $��32(�5�   %   $��Italic$�5�   %   $��DemiBold"�5�   %   
���   �$ ��Please update more staffs.��5�   %   5�      5�      5�      &   System.Windows.Controls.DataGrid  5�      $��2��5�      $
��1170��5�      $	��480��5�      $	��Top=�5�      -	  'MaterialDesignThemes.Wpf.DataGridAssist% 	  CellPadding$% 12 8 0 8q�5�      & 	  ColumnHeaderPadding$& 20 8 0 8q�5�      ' J� 	AllowDrop' . (   AutoGenerateColumns( .  )   CanUserAddRows) .  *   CanUserDeleteRows* .  +   CanUserReorderColumns+ .  ,   CanUserSortColumns, . $��15(�5�      -   GridLinesVisibility$- Vertical=�5�      .   
IsReadOnly. . /   SelectionMode$/ Single=�5     "0   VerticalScrollBarVisibility$
0 Auto=�5     ��5      �� *
StaffItems+1 �� SelectedItem1 5     �� *StaffSelected+2   RowStyle2 5     �� 5     )
  #System.Windows.Controls.DataGridRow" 
 6$     5  "   �� 5  &   3 �� Binding3 62   �� *STAFF_IS_DELETE+4 �� Value4 true6V   .a�5  *   ��  � ��
	 �����6G   �� 5	  *    � ��
	 �  ��6G   5
  '   �� 5  &   3 62   �� *STAFF_IS_DELETE+	4 false6V   .a�5  *   ��  � ��
	 �����6G   �� 5  *    � ��
	 �OO/�6G   5  '   5     5 J� InputBindings5 5     d� 5     6 d� Gesture$6 LeftDoubleClicka�5  !   7 �� Command7 5  !   �� *ShowDetailStaffCommand+8 �� CommandParameter8 5  !   �� $" ContentControlMain��5  !   9   Columns9 5     0  *System.Windows.Controls.DataGridTextColumn  5     ,  &System.Windows.Controls.DataGridColumn:   Width5  /System.Windows.Controls.DataGridLengthConverter$: 0.05* 5  !   1  +System.Windows.Controls.DataGridBoundColumn;   ElementStyle#; [  5  !   <   Header$< ID��5  !   =   Binding= 5  !   �� *
STAFF_ID+5  !     5     $: 0.175* 5  !   #; [  5!  !   $
< Name��5"  !   = 5   !   �� *
STAFF_NAME+5"  !     5#     $
: 0.1* 5$  !   #; [  5&  !   $
< Role��5'  !   = 5%  !   �� *
STAFF_ROLE+5'  !     5(     $: 0.075* 5)  !   #; [  5+  !   $< Gender��5,  !   = 5*  !   �� *STAFF_GENDER+5,  !     5-     $: 0.15* 5.  !   #; [  50  !   $< Citizen Identity��51  !   = 5/  !   �� *STAFF_CITIZEN_CARD+51  !     52     $
: 0.2* 53  !   #; [  55  !   $< Address��56  !   = 54  !   �� *STAFF_ADDRESS+56  !     57     $: 0.15* 58  !   #; [  5:  !   $< Phone Number��5;  !   = 59  !   �� *STAFF_PHONE_NUMBER+5;  !     5<     $
: 0.1* 5=  !   #; [  5?  !   $< 
Start Date��5@  !   = 5>  !   �� *STAFF_STRING_START_DATE+5@  !     5A     $
: 0.1* 5B  !   #; [  5D  !   $< Status��5E  !   = 5C  !   �� *STAFF_STATUS+5E  !   5G     5H     5I     5J     5K     5L     
   M S B A M L   `   `   `  ����O  KTourManagementSystem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]3clr-namespace:TourManagementSystem.ManagerView.View%TourManagementSystem.ManagerView.View  5      5    /TourManagementSystem.ManagerView.View.HotelView   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      U QWpfAnimatedGif, Version=2.0.0.0, Culture=neutral, PublicKeyToken=9e7cd3b544a090dc,gif"http://wpfanimatedgif.codeplex.com  5      ?local3clr-namespace:TourManagementSystem.ManagerView.View  5      _ [MaterialDesignThemes.Wpf, Version=4.3.0.3, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5	      $
��1190��5
      $	��620��5      ��5      �� 5   
     �� Triggers  5      :� 5       :� RoutedEvent$ UserControl.Loaded��6   .[�5      �� .��5      �� .��5      W�  �� TargetProperty$ Opacity�5   !    W� From$	 0.0X�5   !   	 W� To$	 1.0X�5   !    g� Duration$ 0:0:1D�5   !   5      5      5      5       � 	Resources 5         WrapText �� 
TargetType �� Property	 �� Value & "MaterialDesignDataGridColumnHeader
 �� BasedOn=  7System.Windows.Controls.Primitives.DataGridColumnHeader  MaterialDesignDataGridCell*  $System.Windows.Controls.DataGridCell P� Property P� Value��%�  &	        '  J     7  '  �     7  �� 5   
   " ��6!   .�5       ��  � ��$
	 Wrap=�6-   5!      �� 5"   
   8
   "  6N   .�5#      ��  � ��$		 0.5q�60   �� 5$       � ��	 �#D6D6D66,   �� 5%       � ��	 �#FFFFFF6+   5&      �� 5'   
   8
   "  6F   .�5(      ��  � ��$	 0q�60   �� 5)       � ��	 �#d6d6d66,     5*      P� 5+       �@J�IsMouseOver . . �5,      ��  � ��	 �#FDF8EA63   5-      5/      50      .��51      �� -   5         ��Name$ contentControlMain��51      $	��620��61   .��52   
   �� ���#0f6f68$��3q�54       �� CornerRadius$ 15��55      ._�57      � .+�59      ��  K� ZIndex$
 1000��5:      $	��0.5q�5;      $ 25��5<      ._�5=      � y�6   �� *ProgressBarVisbility+��5?      �� 5@       �� Opacity$ .3Q�6.    �� Color$ Black��6;   .+�5B      �� $��0,120,0,120q�5C      $��Center=�5D       �� Orientation$ 
Horizontal=�5E      .+�5F      � $��80��5G   !   $��80��5H   !   
������� � IsIndeterminate .  % !MaterialDesignCircularProgressBar#��[ 5K   !    � Value$ 35Q�5L   !   �� 5M      $
��16,0q�5N   !   $��Center=�5O   !   $��24(�5P   !   
�������$��
Loading...��5R   !   5S      5T      5U      � 5W      $��0,0,0,0q�6    � RowDefinitions 5X      �� 5Y      $
��auto �6(   �� 5Z      $
��auto �6(   �� 5[      $
��auto �6(   .+�5^      �� $��0��5_      $��60��5`      ���#0f6f68$ 	15 15 0 0��5b      ._�5c      �� $��Center=�5d      $��Center=�5e      $��24(�5f      
�������$��H O T E L    L I S T ��5h      5i      �� 5k      $��2��6   $	 500��6*   ._�5l      � y�6   �� *WaitingVisbility+��5n      �� 5o   "   $ 1Q�62   $ White��6>   .+�5q      �� $��0,60,0,0q�5r   !   $��Center=�5s   !   $ Vertical=�5t   !   .+�5u   "   �� $	��600��5v   %   $	��300��5w   %   "  WpfAnimatedGif.ImageBehavior   AnimatedSource$9 3pack://application:,,,/Resources/Images/waiting.gif��5x   %      	AutoStart . 5y   %   �� 5z   "   $��16,16q�5{   %   $��Center=�5|   %   $��Center=�5}   %   $��Roboto)�5~   %   $��32(�5   %   $��Italic$�5�   %   $��DemiBold"�5�   %   
���   �$��Please update more hotels��5�   %   5�      5�      5�      � 5�      $��1��6    � ColumnDefinitions 5�      �� 5�      $
��auto �6/   �� 5�      $��* �6/   �� 5�      $
��auto �6/   .+�5�      �� $��0��5�      $	��400��5�      $��50��5�      $��5,5,20,5q�5�      ���#FAFAFA
�������$��1q�5�      $ 10��5�      ._�5�      �� $��10,0,0,0q�6)   $ 
Horizontal=�6;   .+�5�   "   '  !MaterialDesignThemes.Wpf.PackIcon  $��25��5�   %   $��30��5�   %   $��0,0,0,0q�5�   %   $��Center=�5�   %   
���iii�   Kind$ Search=�5�   %   �� 5�   "   $	��300��5�   %   $��40��5�   %   $��10,2,0,0q�5�   %   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Search��5�   %   .  (MaterialDesignThemes.Wpf.TextFieldAssist   DecorationVisibility$ Hidden=�5�   %   
������ $��18(�5�   %     MaterialDesignTextBoxBase#��[ 5�   %   .��6X   ��5�   &   �� 5�   *    �� Path$ 
FilterText�62    �� UpdateSourceTrigger$ PropertyChanged=�6D    �� ValidationRules 5�   .   5�   +   .��5�   4   5�   #   5�      5�      �� 5�      $��1��6%   $ 
Horizontal=�65   .+�5�      �� -   5        $��cbSearch��5�   !   $	��140��5�   !   $��34��5�   !   $��10q�5�   !    �� DisplayMemberPath$ CB_Name��5�   !   $��18(�5�   !   
���iii���5�   !   �� *CB_HotelList+  �� Mode$  TwoWay=�! �� SelectedValue! 5�   !   �� *CB_HotelSelected+��5�   "   �� 5�   &   " ��6,   .�5�   *   ��  �@��
IsSelected	 6G   �� *
IsSelected+5�   '   5�      5�      �� 5�      $��2��5�      $	��200��5�      $��50��5�      $��	30,5,30,5q�5�      $��Right=�5�      $��Add New Hotel��5�      ���#0f6f68  	AddButton#��[ 5�      ��5�      �� *AddHotelCommand+��5�      �� " �� ElementName$" contentControlMain��y�5�      �� *IsVisibility+5�      &   System.Windows.Controls.DataGrid  5�      $��2��5�      $
��1170��5�      $	��480��5�      $	��Top=�5�      -  'MaterialDesignThemes.Wpf.DataGridAssist#   CellPadding$# 12 8 0 8q�5�      $   ColumnHeaderPadding$$ 20 8 0 8q�5�      % J� 	AllowDrop% . &   AutoGenerateColumns& .  '   CanUserAddRows' .  (   CanUserDeleteRows( .  )   CanUserReorderColumns) .  *   CanUserSortColumns* . $��15(�5�      +   GridLinesVisibility$+ Vertical=�5�      ,   
IsReadOnly, . -   SelectionMode$- Single=�5�      ".   VerticalScrollBarVisibility$. Visible=�5�      ��5�      �� *
HotelItems+/ �� SelectedItem/ 5�      �� *HotelSelected+0   RowStyle0 5�      �� 5�      )	  #System.Windows.Controls.DataGridRow" 	 6$     5�   "   �� 5�   &   1 �� Binding1 62   �� *HOTEL_IS_DELETE+2 �� Value	2 false6V   .a�5�   *   ��  � ��
	 �����6G   �� 5�   *    � ��
	 �OO/�6G   5�   '   �� 5�   &   1 62   �� *HOTEL_IS_DELETE+2 true6V   .a�5�   *   ��  � ��
	 �����6G   �� 5�   *    � ��
	 �  ��6G   5�   '   5�      3 J� InputBindings3 5�      d� 5�      4 d� Gesture$4 LeftDoubleClicka�5�   !   5 �� Command5 5�   !   �� *ShowDetailHotelCommand+6 �� CommandParameter6 5�   !   �� $" contentControlMain��5�   !   7   Columns7 5�      0
  *System.Windows.Controls.DataGridTextColumn
  5�      ,  &System.Windows.Controls.DataGridColumn8   Width5  /System.Windows.Controls.DataGridLengthConverter$8 0.05* 5�   !   1  +System.Windows.Controls.DataGridBoundColumn9   ElementStyle#9 [  5   !   :   Header$: ID��5  !   ;   Binding; 5�   !   �� *
HOTEL_ID+5  !   
  5     $8 0.15* 5  !   #9 [  5  !   $
: Name��5  !   ; 5  !   �� *
HOTEL_NAME+5  !   
  5     $
8 0.2* 5  !   #9 [  5
  !   $: Address��5  !   ; 5	  !   �� *HOTEL_ADDRESS+5  !   
  5     $8 0.15* 5  !   #9 [  5  !   $: Place��5  !   ; 5  !   �� *
PLACE_NAME+5  !   
  5     $8 0.15* 5  !   #9 [  5  !   $: Phone Number��5  !   ; 5  !   �� *HOTEL_PHONE_NUMBER+5  !   
  5     $8 0.15* 5  !   #9 [  5  !   $: Email��5  !   ; 5  !   �� *HOTEL_EMAIL+5  !   
  5     $
8 0.1* 5  !   #9 [  5  !   $: Status��5  !   ; 5  !   �� *HOTEL_STATUS+5  !   5!     5"     5#     5$     5%     5&     
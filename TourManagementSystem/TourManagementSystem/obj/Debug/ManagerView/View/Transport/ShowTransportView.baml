   M S B A M L   `   `   `  ����O  KTourManagementSystem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]3clr-namespace:TourManagementSystem.ManagerView.View%TourManagementSystem.ManagerView.View  5      U/clr-namespace:TourManagementSystem.Global.Ruler!TourManagementSystem.Global.Ruler  5
      =    7TourManagementSystem.ManagerView.View.ShowTransportView   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      U QWpfAnimatedGif, Version=2.0.0.0, Culture=neutral, PublicKeyToken=9e7cd3b544a090dc,gif"http://wpfanimatedgif.codeplex.com  5      ?local3clr-namespace:TourManagementSystem.ManagerView.View  5      _ [MaterialDesignThemes.Wpf, Version=4.3.0.3, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5	      ;ruler/clr-namespace:TourManagementSystem.Global.Ruler  5
      $
��1190��5      $	��620��5      ��5      �� 5   
     �� Triggers  5      :� 5       :� RoutedEvent$ UserControl.Loaded��6   .[�5      �� .��5      �� .��5      W�  �� TargetProperty$ Opacity�5   !    W� From$	 0.0X�5   !   	 W� To$	 1.0X�5   !    g� Duration$ 0:0:0.5D�5   !   5      5      5      5       � 	Resources 5         WrapText �� 
TargetType �� Property	 �� Value & "MaterialDesignDataGridColumnHeader
 �� BasedOn=  7System.Windows.Controls.Primitives.DataGridColumnHeader  MaterialDesignDataGridCell*  $System.Windows.Controls.DataGridCell P� Property P� Value��%�  &	        '  J     7  '  �     7  �� 5    
   " ��6!   .�5!      ��  � ��$
	 Wrap=�6-   5"      �� 5#   
   8
   "  6N   .�5$      ��  � ��$		 0.5q�60   �� 5%       � ��	 �#D6D6D66,   �� 5&       � ��	 �#FFFFFF6+   5'      �� 5(   
   8
   "  6F   .�5)      ��  � ��$	 0q�60   �� 5*       � ��	 �#d6d6d66,     5+      P� 5,       �@J�IsMouseOver . . �5-      ��  � ��	 �#FDF8EA63   5.      50      51      .��52      �� -   5         ��Name$ contentControlDisplay��52      $
��auto��64   .��54   
   �� ���#0f6f68$��3q�56       �� CornerRadius$ 15��57      ._�59      � .+�5:      �  � RowDefinitions 5<      �� 5=      $
��auto �6(   �� 5>      $��* �6(   .+�5A      �� $��0��5B      $��60��5C      ���#0f6f68$ 	15 15 0 0��5E      ._�5F      � .+�5G      �� $��60��5H   !   $��60��5I   !   $
��20,0q�5J   !   $
��Left=�5K   !   $	��Top=�5L   !   
������   
BackButton#��[ 5P   !   ��5N   !   �� *CancelCommand+��5O   !   ��  �� ElementName$ contentControlDisplay��5P   !   �� 5Q      $��Center=�5R   !   $��Center=�5S   !   $��24(�5T   !   
�������$)��#D I S P L A Y    T R A N S P O R T ��5V   !   5W      5X      �� 5Z      $��1��6#   $
��Auto=�60   .��5[      �� $��0,0,10,0q�5\      .  (MaterialDesignThemes.Wpf.ColorZoneAssist   Mode$ Standard=�5]      +  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth0=�5^      
������  ) %MaterialDesignNavigatilRailTabControl#��[ 5`       �� TabStripPlacement$	 Top=�5a      .@�5c      �� $	��590��5d   !   
������  ' #MaterialDesignNavigationRailTabItem#��[ 5f   !   ��5h   "   �� 5i   &   $	��240��5j   )   $��50��5k   )   $��Center=�5l   )    �� Orientation$ 
Horizontal=�5m   )   .+�5n   *   '  !MaterialDesignThemes.Wpf.PackIcon  $��30��5o   -   $��30��5p   -   $
��20,0q�5q   -   $��Center=�5r   -      Kind$ FolderInformation=�5s   -   �� 5t   *   $
��20,0q�5u   -   $��Center=�5v   -   $��Center=�5w   -   $��24(�5x   -   
���   �$��Information��5z   -   5{   '   .��5~   "   � $��150,0q�6'    5�   &   �� 5�   *   $
��auto �68   �� 5�   *   $
��auto �68   �� 5�   *   $
��auto �68   �� 5�   *   $
��auto �68   �� 5�   *   $
��auto �68   �� 5�   *   $
��auto �68   �� 5�   *   $
��auto �68   .+�5�   &   �� $��0��5�   )   $��20q�5�   )   $ 
Horizontal=�5�   )   .+�5�   *     $��30��5�   -   $��30��5�   -   $��Center=�5�   -   
���iii�$	 Car=�5�   -   �� 5�   *   $	��780��5�   -   $��8,0,0,0q�5�   -   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$
 Name��5�   -   $��18(�5�   -    � ToolTip$ Transport Name��5�   -   {�5�   -   �� *Transport_Is_Delete+.��5�   F   ��5�   .   �� 5�   2    �� Mode$ TwoWay=�5�   5    �� Path$ Transport_Name�5�   5    �� UpdateSourceTrigger$ PropertyChanged=�5�   5    �� ValidationRules 5�   6   =   7TourManagementSystem.Global.Ruler.MiniMumCharacterRuler  5�   :      MinimumCharacters$ 0��5�   =      NameFill$ Transport Name��5�   =   ,  &System.Windows.Controls.ValidationRule   ValidatesOnTargetUpdated . 5�   =   5�   3   .��5�   <   5�   +   5�   '   � 5�   &   $��1��6+    � ColumnDefinitions 5�   *   �� 5�   .   $��* �6?   �� 5�   .   $��* �6?   .+�5�   *   �� $��0��65   $��20q�6E   .+�5�   .   �� $��0,10,0,0q�69   $ 
Horizontal=�6K   .+�5�   2     $��30��5�   5   $��30��5�   5   $��Center=�5�   5   
���iii�$ FormatListBulletedType=�5�   5   �� 5�   2   $	��260��5�   5   $��10,0,0,0q�5�   5   $
��Left=�5�   5   $ Status��5�   5   $��18(�5�   5   
���iii�$ Transport Status��5�   5   {�5�   5   �� *Transport_Is_Delete+.@�5�   6   �� $��National��6C   �� 5�   6   $��International��6C     �� Text  5�   6   �� 5�   :   $ TwoWay=�5�   =   $ Transport_Type�5�   =   $ PropertyChanged=�5�   =    5�   >     5�   B   $ 0��5�   E   $ Transport Status��5�   E    . 5�   E   5�   ;   5�   3   5�   /   5�   +   �� 5�   *   $��1��5�   -   $��20,20,30,20q�5�   -   $��Right=�5�   -   $ 
Horizontal=�5�   -   .+�5�   .   (	  "System.Windows.Controls.DatePicker	  $	��300��5�   1   $��60��5�   1   $ 
Start Date��5�   1   $��22(�5�   1   ! 	  SelectedDateFormat$! Short=�5�   1    $  MaterialDesignOutlinedDatePicker#��[ 5�   1   $ Transport Start Date��5�   1   {�5�   1   �� *Transport_Is_Delete+" 	  SelectedDate" 5�   2   �� 5�   6   $ TwoWay=�5�   9   $ Transport_Date�5�   9   # �� StringFormat$# {0: dd/MM/yyyy}��5�   9   $ PropertyChanged=�5�   9   5�   /   5�   +   5�   '   �� 5�   &   $��2��5�   )   $��0,10,0,0q�5�   )   
���   �$��12q�5�   )   $ J� Opacity$	$ 0.8Q�5�   )   � 5�   &   $��3��6+    5�   *   �� 5�   .   $
��515* �6?   �� 5�   .   $
��349* �6?   .+�5  *   �� $��
20,20,0,20q�5  -   $
��Left=�5  -   $ Vertical=�5  -   .+�5  .   �� $��0,0,0,0q�5  1   $
��Left=�5  1   $ 
Horizontal=�5	  1   .+�5  2     $��30��5  5   $��30��5  5   $��Center=�5  5   
���iii�$ Class=�5  5   �� 5  2   $	��260��5  5   $��10,0,0,0q�5  5   $
��Left=�5  5   $ Type Transport��5  5   $��18(�5  5   
���iii�$ Transport Type��5  5   {�5  5   �� *Transport_Is_Delete+.@�5  6   �� $��Road Transport��6C   �� 5  6   $��Water Transport��6C   �� 5  6   $��Air Transport��6C     5  6   �� 5  :   $ TwoWay=�5   =   $ Transport_TypeTrans�5!  =   $ PropertyChanged=�5"  =    5#  >     5$  B   $ 0��5%  E   $ Transport Type��5&  E    . 5'  E   5)  ;   5+  3   5,  /   �� 5.  .   $��0,30,0,0q�5/  1   $
��Left=�50  1   $ 
Horizontal=�51  1   .+�53  2     $��30��54  5   $��30��55  5   $��Center=�56  5   
���iii�$ Numeric=�58  5   �� 5:  2   $	��260��5;  5   $��10,0,0,0q�5<  5   $$ Amount Max (Except Plane/Ship)��5=  5   $��18(�5>  5   $ All Amount Land Transport��5@  5   {�5?  5   �� *Transport_TypeTrans_Choose+.��5@  Y   ��5A  6   �� 5B  :   $ TwoWay=�5C  =   $ Transport_Amount_Max�5D  =   $ PropertyChanged=�5E  =    5F  >   <
   6TourManagementSystem.Global.Ruler.NumberTransportRuler
  5G  B   % 
  NameFill$% Transport Amount Max��6]    . 6}   5I  ;   .��5J  D   5K  3   5L  /   5M  +   �� 5O  *   $��1��5P  -   $��
0,20,30,20q�5Q  -   $��Right=�5R  -   $ Vertical=�5S  -   .+�5U  .   �� $��0,0,0,0q�5V  1   $
��Left=�5W  1   $ 
Horizontal=�5X  1   .+�5Z  2     $��30��5[  5   $��30��5\  5   $��Center=�5]  5   
���iii�$ Money=�5_  5   �� 5a  2   $	��260��5b  5   $��8,0,0,0q�5c  5   $ Price��5d  5   $��18(�5e  5   $" Transport Price (per ticket)��5g  5   {�5f  5   �� *Transport_Is_Delete+.��5g  \   ��5h  6   �� 5i  :   $ TwoWay=�5j  =   $ Transport_Price�5k  =   $ PropertyChanged=�5l  =    5m  >   2   ,TourManagementSystem.Global.Ruler.MoneyRuler  5n  B   &   NameFill$& Transport Price��6S    . 6n   5p  ;   .��5q  D   5r  3   5s  /   �� 5u  .   $��0,30,0,0q�5v  1   $
��Left=�5w  1   $ 
Horizontal=�5x  1   .+�5z  2     $��30��5{  5   $��30��5|  5   $��Center=�5}  5   
���iii�$ HomeOutline=�5  5   �� 5�  2   $	��260��5�  5   $��8,0,0,0q�5�  5   $ Company��5�  5   $��18(�5�  5   $ Transport Company��5�  5   {�5�  5   �� *Transport_Is_Delete+.��5�  Q   ��5�  6   �� 5�  :   $ TwoWay=�5�  =   $ Transport_Company�5�  =   $ PropertyChanged=�5�  =    5�  >     5�  B   $ 0��5�  E   $ Transport Company��5�  E    . 5�  E   5�  ;   .��5�  D   5�  3   5�  /   5�  +   5�  '   �� 5�  &   $��4��5�  )   $��0,10,0,0q�5�  )   
���   �$��12q�5�  )   $	$ 0.8Q�5�  )   �� 5�  &   $��5��5�  )   $��20q�5�  )   $	��Top=�5�  )   .+�5�  *   �� $��	35,10,0,0q�5�  -   $��22(�5�  -   
���iii�Description5�  +   �� 5�  *   $	��720��5�  -   $	��100��5�  -   $��35,10,20,20q�5�  -   $
��Left=�5�  -   '   
HelperText$"' Detail about the transport ?��5�  -   ( �� AcceptsReturn( . $��17(�5�  -   
���iii�) �� MinLines$) 8��5�  -    ! MaterialDesignOutlinedTextBox#��[ 5�  -   * �� TextWrapping$
* Wrap=�5�  -   {�5�  -   �� *Transport_Is_Delete+��5�  -   �� *Transport_Description+$ TwoWay=�5�  -   5�  '   � 5�  &   $��6��5�  )   $��0,0,40,0q�5�  )   ���#F9F9F9y�5�  )   �� *IsVisibility+ 5�  *   �� 5�  .   �� 5�  .   .+�5�  *   �� $	��200��5�  -   $��60��5�  -   $��10,16,20,16q�5�  -   $
��Left=�5�  -   $��Delete��5�  -   ���#F36E6B  CancelButton#��[ 5�  -   ��5�  -   �� *DeleteCommand+��5�  -   �� $ contentControlDisplay��5�  -   �� 5�  *   $��1��5�  -   $	��200��5�  -   $��60��5�  -   $��10,16,20,16q�5�  -   $��Right=�5�  -   $��Save Changes��5�  -   ���#1885F2 	 ConfirmButton#��[	 5�  -   ��5�  -   �� *SaveChangeCommand+5�  -   5�  '   5�  #   5�     �� 5�     $	��590��5�  !   
������ #��[ 5�  !   ��5�  "   �� 5�  &   $	��240��5�  )   $��50��5�  )   $��Center=�5�  )   $ 
Horizontal=�5�  )   .+�5�  *     $��30��5�  -   $��30��5�  -   $
��20,0q�5�  -   $��Center=�5�  -   $
 Grid=�5�  -   �� 5�  *   $
��20,0q�5�  -   $��Center=�5�  -   $��Center=�5�  -   $��24(�5�  -   
���   �$��History��5�  -   5�  '   .��5�  "   �  5�  &   �� 5�  *   $��60 �68   �� 5�  *   .+�5  &   �� $��2��6-   + K� ZIndex$	+ 500��6>   ._�5  *   � y�6/   �� *WaitingVisbility+��5  .   �� 5  2   , �� Opacity$, 1Q�6B   - �� Color$- White��6N   .+�5  .   �� $��0,60,0,0q�5  1   $��Center=�5	  1   $ Vertical=�5
  1   .+�5  2   �� $	��600��5  5   $	��300��5  5   "  WpfAnimatedGif.ImageBehavior.   AnimatedSource$9. 3pack://application:,,,/Resources/Images/waiting.gif��5  5   /   	AutoStart/ . 5  5   �� 5  2   $��16,16q�5  5   $��Center=�5  5   $��Center=�5  5   $��Roboto)�5  5   $��32(�5  5   $��Italic$�5  5   $��DemiBold"�5  5   
���   �$-��'This transport is not used by any tour.��5  5   5  /   5  +   5  '   �� 5  &   $ 
Horizontal=�61   .+�5  *   �� $��0��5   -   $	��400��5!  -   $��50��5"  -   $��	40,5,20,5q�5#  -   ���#FAFAFA
�������$��1q�5&  -   $ 10��5'  -   ._�5)  .   �� $��10,0,0,0q�69   $ 
Horizontal=�6K   .+�5*  2     $��25��5+  5   $��30��5,  5   $��0,0,0,0q�5-  5   $��Center=�5.  5   
���iii�$ Search=�50  5   �� 51  2   $	��300��52  5   $��40��53  5   $��10,2,0,0q�54  5   $ Search��55  5   .  (MaterialDesignThemes.Wpf.TextFieldAssist0   DecorationVisibility$0 Hidden=�56  5   
������ $��18(�58  5    
 MaterialDesignTextBoxBase#��[
 59  5   .��6h   ��5:  6   �� 5;  :   $# TourTransportDetailFilterText�6B   $ PropertyChanged=�6g    5<  >   5=  ;   .��5>  D   5?  3   5@  /   5A  +   �� 5C  *   -   5        $��cbSearch��5D  -   $	��200��5E  -   $��34��5F  -   $��10q�5G  -   1 �� DisplayMemberPath$1 CB_Name��5H  -   $��18(�5I  -   
���iii���5K  -   �� *CB_TourTransportDetailList+$ TwoWay=�2 �� SelectedValue2 5L  -   �� * CB_TourTransportDetailSelected+��5M  .   �� 5N  2   " ��68   .�5O  6   ��  �@��
IsSelected	 6S   �� *
IsSelected+5P  3   5R  +   5S  '   &   System.Windows.Controls.DataGrid  5T  &   $��1��5U  )   $
��1100��5V  )   $	��380��5W  )   $��20q�5X  )   $	��Top=�5Y  )   -  'MaterialDesignThemes.Wpf.DataGridAssist3   CellPadding$3 12 8 0 8q�5Z  )   4   ColumnHeaderPadding$4 20 8 0 8q�5[  )   5 J� 	AllowDrop5 . 6   AutoGenerateColumns6 .  7   CanUserAddRows7 .  8   CanUserDeleteRows8 .  9   CanUserReorderColumns9 .  :   CanUserSortColumns: . $��15(�5b  )   ;   GridLinesVisibility$; Vertical=�5c  )   <   
IsReadOnly< . =   SelectionMode$= Single=�5f  )   ��5e  )   �� *TourTransportDetailCollection+>   Columns> 5g  *   0  *System.Windows.Controls.DataGridTextColumn  5h  .   ,  &System.Windows.Controls.DataGridColumn?   Width5  /System.Windows.Controls.DataGridLengthConverter$? 0.05* 5i  1   1  +System.Windows.Controls.DataGridBoundColumn@   ElementStyle#@ [  5k  1   A   
Foreground
A �OO/�B   Header$B ID��5m  1   C   BindingC 5j  1   �� *TOUR_TRANSPORT_DETAIL_ID+5m  1     5n  .   $
? 0.2* 5o  1   #@ [  5q  1   
A �OO/�$B 	Tour Name��5s  1   C 5p  1   �� *	TOUR_NAME+5s  1     5t  .   $
? 0.2* 5u  1   #@ [  5w  1   
A �OO/�$B Travel Group Name��5y  1   C 5v  1   �� *TRAVEL_GROUP_NAME+5y  1     5z  .   $? 0.15* 5{  1   #@ [  5}  1   
A �OO/�$B 
Start Date��5  1   C 5|  1   �� *STRING_START_DATE+5  1     5�  .   $? 0.15* 5�  1   #@ [  5�  1   
A �OO/�$B End Date��5�  1   C 5�  1   �� *STRING_END_DATE+5�  1     5�  .   $? 0.15* 5�  1   #@ [  5�  1   
A �OO/�$B Amount��5�  1   C 5�  1   �� *TRANSPORT_AMOUNT+5�  1   5�  '   5�  #   5�     5�     5�     5�     5�     5�     5�     5�     
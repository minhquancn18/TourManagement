   M S B A M L   `   `   `  ����O  KTourManagementSystem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]3clr-namespace:TourManagementSystem.ManagerView.View%TourManagementSystem.ManagerView.View  5      U/clr-namespace:TourManagementSystem.Global.Ruler!TourManagementSystem.Global.Ruler  5
      9    3TourManagementSystem.ManagerView.View.ShowHotelView   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      U QWpfAnimatedGif, Version=2.0.0.0, Culture=neutral, PublicKeyToken=9e7cd3b544a090dc,gif"http://wpfanimatedgif.codeplex.com  5      ?local3clr-namespace:TourManagementSystem.ManagerView.View  5      _ [MaterialDesignThemes.Wpf, Version=4.3.0.3, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5	      ;ruler/clr-namespace:TourManagementSystem.Global.Ruler  5
      $
��1190��5      $	��620��5      ��5      �� 5   
     �� Triggers  5      :� 5       :� RoutedEvent$ UserControl.Loaded��6   .[�5      �� .��5      �� .��5      W�  �� TargetProperty$ Opacity�5   !    W� From$	 0.0X�5   !   	 W� To$	 1.0X�5   !    g� Duration$ 0:0:1D�5   !   5      5      5      5       � 	Resources 5         WrapText �� 
TargetType �� Property	 �� Value & "MaterialDesignDataGridColumnHeader
 �� BasedOn=  7System.Windows.Controls.Primitives.DataGridColumnHeader  MaterialDesignDataGridCell*  $System.Windows.Controls.DataGridCell P� Property P� Value��%�  &	        '  J     7  '  �     7  �� 5    
   " ��6!   .�5!      ��  � ��$
	 Wrap=�6-   5"      �� 5#   
   8
   "  6N   .�5$      ��  � ��$		 0.5q�60   �� 5%       � ��	 �#D6D6D66,   �� 5&       � ��	 �#FFFFFF6+   5'      �� 5(   
   8
   "  6F   .�5)      ��  � ��$	 0q�60   �� 5*       � ��	 �#d6d6d66,     5+      P� 5,       �@J�IsMouseOver . . �5-      ��  � ��	 �#FDF8EA63   5.      50      51      .��52      �� -   5         ��Name$ contentControlDisplay��52      $
��auto��64   .��53   
   �� ���#0f6f68$��3q�55       �� CornerRadius$ 15��56      ._�57      � .+�58      �  � RowDefinitions 5:      �� 5;      $
��auto �6(   �� 5<      $��* �6(   .+�5?      �� $��0��5@      $��60��5A      ���#0f6f68$ 	15 15 0 0��5C      ._�5D      � .+�5E      �� $��60��5F   !   $��60��5G   !   $
��20,0q�5H   !   $
��Left=�5I   !   $	��Top=�5J   !   
������   
BackButton#��[ 5N   !   ��5L   !   �� *CancelCommand+��5M   !   ��  �� ElementName$ contentControlDisplay��5N   !   �� 5O      $��Center=�5P   !   $��Center=�5Q   !   $��24(�5R   !   
�������$!��D I S P L A Y    H O T E L ��5T   !   5U      5V      �� 5X      $��1��6#   $
��Auto=�60   .��5Y      �� $��0,0,10,0q�5Z      .  (MaterialDesignThemes.Wpf.ColorZoneAssist   Mode$ Standard=�5[      +  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth0=�5\      
������  ) %MaterialDesignNavigatilRailTabControl#��[ 5^       �� TabStripPlacement$	 Top=�5_      .@�5a      �� $	��590��5b   !   
������  ' #MaterialDesignNavigationRailTabItem#��[ 5d   !   ��5f   "   �� 5g   &   $	��240��5h   )   $��50��5i   )   $��Center=�5j   )    �� Orientation$ 
Horizontal=�5k   )   .+�5l   *   '  !MaterialDesignThemes.Wpf.PackIcon  $��30��5m   -   $��30��5n   -   $
��20,0q�5o   -   $��Center=�5p   -      Kind$ FolderInformation=�5q   -   �� 5r   *   $
��20,0q�5s   -   $��Center=�5t   -   $��Center=�5u   -   $��24(�5v   -   
���   �$��Information��5x   -   5y   '   .��5|   "   � $��150,0q�6'    5~   &   �� 5   *   $
��auto �68   �� 5�   *   $
��auto �68   �� 5�   *   $
��auto �68   �� 5�   *   $
��auto �68   �� 5�   *   $
��auto �68   �� 5�   *   $
��auto �68   �� 5�   *   $
��auto �68   .+�5�   &   � $��0��6+    � ColumnDefinitions 5�   *   �� 5�   .   $��* �6?   �� 5�   .   $��* �6?   .+�5�   *   �� $��0��65   $��20q�6E   .+�5�   .   �� $��0,30,0,0q�69   $ 
Horizontal=�6K   .+�5�   2     $��30��5�   5   $��30��5�   5   $��Center=�5�   5   
���iii�$ Hotel=�5�   5   �� 5�   2   $	��260��5�   5   $��8,0,0,0q�5�   5   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$
 Name��5�   5   $��18(�5�   5    � ToolTip$ 
Hotel Name��5�   5   {�5�   5   �� *Hotel_Is_Delete+.��5�   J   ��5�   6   �� 5�   :    �� Mode$ TwoWay=�5�   =    �� Path$ 
Hotel_Name�5�   =    �� UpdateSourceTrigger$ PropertyChanged=�5�   =    �� ValidationRules 5�   >   =   7TourManagementSystem.Global.Ruler.MiniMumCharacterRuler  5�   B      MaximumCharacters$ 30��5�   E      MinimumCharacters$ 0��5�   E      NameFill$ 
Hotel Name��5�   E   ,  &System.Windows.Controls.ValidationRule    ValidatesOnTargetUpdated  . 5�   E   5�   ;   .��5�   D   5�   3   5�   /   5�   +   �� 5�   *   $��1��5�   -   $��20,40,30,20q�5�   -   $��Right=�5�   -   $ 
Horizontal=�5�   -   .+�5�   .     $��30��5�   1   $��30��5�   1   $��Center=�5�   1   
���iii�$ PlaceOutline=�5�   1   �� 5�   .   $	��260��5�   1   $��30��5�   1   $��10,0,0,0q�5�   1   $ Place��5�   1   ! �� DisplayMemberPath$! CB_Name��5�   1   $��18(�5�   1   
���iii�{�5�   1   �� *Hotel_Is_Delete+��5�   1   �� *CB_PlaceList+$ TwoWay=�" �� SelectedValue" 5�   1   �� *CB_PlaceSelected+��5�   2   �� 5�   6   " ��6<   .�5�   :   ��  �@��
IsSelected	 6W   �� *
IsSelected+5�   7   5�   /   5�   +   5�   '   �� 5�   &   $��1��5�   )   $��0,10,0,0q�5�   )   
���   �$��12q�5�   )   # J� Opacity$	# 0.8Q�5�   )   �� 5�   &   $��2��5�   )   $��20q�5�   )   $ 
Horizontal=�5�   )   .+�5�   *     $��30��5�   -   $��30��5�   -   $��Center=�5�   -   
���iii�$ AddressMarker=�5�   -   �� 5�   *   $	��760��5�   -   $��10,0,0,0q�5�   -   $ Address��5�   -   $��18(�5�   -   $O IInclude Apartment Number, Street Name, Ward Name, City Name, Provide Name��5�   -   {�5�   -   �� *Hotel_Is_Delete+.��5�   �   ��5�   .   �� 5�   2   $ TwoWay=�5�   5   $ Hotel_Address�5�   5   $ PropertyChanged=�5�   5    5�   6     5�   :   $ 0��5�   =   $ Hotel Address��5�   =     . 5�   =   5�   3   .��5�   <   5�   +   5�   '   � 5�   &   $��3��6+   .+�5�   *   �� $��20q�65   $
��Left=�6A   .+�5  .   �� $��0,0,0,0q�69   $ 
Horizontal=�6J   .+�5  2     $��30��5  5   $��30��5  5   $��Center=�5  5   
���iii�$ Phone=�5  5   �� 5
  2   $	��260��5  5   $��10,0,0,0q�5  5   $ Phone Number��5  5   $��18(�5  5   $- 'Hotel Phone Number - Accept Number Only��5  5   {�5  5   �� *Hotel_Is_Delete+.��5  g   ��5  6   �� 5  :   $ TwoWay=�5  =   $ Hotel_Phone_Number�5  =   $ PropertyChanged=�5  =    5  >   8	   2TourManagementSystem.Global.Ruler.PhoneNumberRuler	  5  B   $ 	  MaximumCharacters$$ 12��5  E   % 	  MinimumCharacters$% 6��5  E   & 	  NameFill$& Hotel Phone Number��5  E     . 5  E   5  ;   .��5  D   5  3   5   /   �� 5"  .   $��0,30,0,0q�69   $ 
Horizontal=�6K   .+�5$  2     $��30��5%  5   $��30��5&  5   $��Center=�5'  5   
���iii�$ Money=�5)  5   �� 5+  2   $	��260��5,  5   $��10,0,0,0q�5-  5   $ Price��5.  5   .
  (MaterialDesignThemes.Wpf.TextFieldAssist' 
  
PrefixText$	' VND��5/  5   $��18(�50  5   $% Hotel Price - Accept Price Only��52  5   {�51  5   �� *Hotel_Is_Delete+.��52  _   ��53  6   �� 54  :   $ TwoWay=�55  =   $ Hotel_Price�56  =   $ PropertyChanged=�57  =    58  >   2   ,TourManagementSystem.Global.Ruler.MoneyRuler  59  B   (   NameFill$( Hotel Price��6S     . 6j   5;  ;   .��5<  D   5=  3   5>  /   5?  +   �� 5A  *   $��20,20,30,20q�65   $��Right=�6J   .+�5C  .   �� $��0,0,0,0q�69   $ 
Horizontal=�6J   .+�5E  2     $��30��5F  5   $��30��5G  5   $��Center=�5H  5   
���iii�$ Email=�5K  5   {�5J  5   �� *Hotel_Is_Delete+5K  5   �� 5M  2   $	��260��5N  5   $��8,0,0,0q�5O  5   $ Email��5P  5   $��18(�5Q  5   $% Hotel Email - Accept Email Type��5S  5   {�5R  5   �� *Hotel_Is_Delete+.��5S  _   ��5T  6   �� 5U  :   $ TwoWay=�5V  =   $ Hotel_Email�5W  =   $ PropertyChanged=�5X  =    5Y  >   2   ,TourManagementSystem.Global.Ruler.EmailRuler  5Z  B   )   NameFill$) Hotel Email��6S     . 6j   5\  ;   .��5]  D   5^  3   5_  /   �� 5a  .   $��0,30,0,0q�69   $ 
Horizontal=�6K   .+�5c  2     $��30��5d  5   $��30��5e  5   $��Center=�5f  5   
���iii�$ 
Restaurant=�5h  5   �� 5j  2   $	��260��5k  5   $��10,0,0,0q�5l  5   $
��Left=�5m  5   $ 
Restaurant��5n  5   $��18(�5o  5   
���iii�$ Is Hotel has restaurant?��5r  5   {�5q  5   �� *Hotel_Is_Delete+.@�5s  6   �� $	��Yes��6C   �� 5t  6   $��No��6C   * �� Text* 5u  6   �� 5v  :   $ TwoWay=�5w  =   $ Hotel_Is_Restaurant�5x  =   $ PropertyChanged=�5y  =    5z  >     5{  B   $ 0��5|  E   $ Hotel Restaurant��5}  E     . 5~  E   5�  ;   5�  3   5�  /   5�  +   5�  '   �� 5�  &   $��4��5�  )   $��0,10,0,0q�5�  )   
���   �$��12q�5�  )   $	# 0.8Q�5�  )   �� 5�  &   $��5��5�  )   $��20q�5�  )   $	��Top=�5�  )   .+�5�  *   �� $��	35,10,0,0q�5�  -   $��22(�5�  -   
���iii�Description5�  +   �� 5�  *   $	��720��5�  -   $	��100��5�  -   $��
35,10,20,0q�5�  -   $
��Left=�5�  -   +   
HelperText$+ Detail about the Hotel ?��5�  -   , �� AcceptsReturn, . $��17(�5�  -   
���iii�- �� MinLines$- 8��5�  -    ! MaterialDesignOutlinedTextBox#��[ 5�  -   . �� TextWrapping$
. Wrap=�5�  -   {�5�  -   �� *Hotel_Is_Delete+��5�  -   �� *Hotel_Description+$ TwoWay=�5�  -   5�  '   � 5�  &   $��6��5�  )   ���#F9F9F9y�5�  )   �� *IsVisibility+ 5�  *   �� 5�  .   �� 5�  .   .+�5�  *   �� $	��200��5�  -   $��60��5�  -   $��10,16,20,16q�5�  -   $
��Left=�5�  -   $��Delete��5�  -   ���#F36E6B  CancelButton#��[ 5�  -   ��5�  -   �� *DeleteCommand+��5�  -   �� $ contentControlDisplay��5�  -   �� 5�  *   $��1��5�  -   $	��200��5�  -   $��60��5�  -   $��10,16,20,16q�5�  -   $��Right=�5�  -   $��Save Changes��5�  -   ���#1885F2  ConfirmButton#��[ 5�  -   ��5�  -   �� *SaveChangeCommand+5�  -   5�  '   5�  #   5�     �� 5�     $	��590��5�  !   
������ #��[ 5�  !   ��5�  "   �� 5�  &   $	��240��5�  )   $��50��5�  )   $��Center=�5�  )   $ 
Horizontal=�5�  )   .+�5�  *     $��30��5�  -   $��30��5�  -   $
��20,0q�5�  -   $��Center=�5�  -   $
 Grid=�5�  -   �� 5�  *   $
��20,0q�5�  -   $��Center=�5�  -   $��Center=�5�  -   $��24(�5�  -   
���   �$��History��5�  -   5�  '   .��5�  "   �  5�  &   �� 5�  *   $��60 �68   �� 5�  *   .+�5�  &   �� $��2��6-   / K� ZIndex$	/ 500��6>   ._�5�  *   � y�6/   �� *WaitingVisbility+��5�  .   �� 5�  2   0 �� Opacity$0 1Q�6B   1 �� Color$1 White��6N   .+�5�  .   �� $��0,60,0,0q�5�  1   $��Center=�5�  1   $ Vertical=�5�  1   .+�5�  2   �� $	��600��5�  5   $	��300��5�  5   "  WpfAnimatedGif.ImageBehavior2   AnimatedSource$92 3pack://application:,,,/Resources/Images/waiting.gif��5�  5   3   	AutoStart3 . 5�  5   �� 5�  2   $��16,16q�5�  5   $��Center=�5�  5   $��Center=�5�  5   $��Roboto)�5�  5   $��32(�5   5   $��Italic$�5  5   $��DemiBold"�5  5   
���   �$)��#This hotel is not used by any tour.��5  5   5  /   5  +   5  '   �� 5  &   $ 
Horizontal=�61   .+�5	  *   �� $��0��5
  -   $	��400��5  -   $��50��5  -   $��	40,5,20,5q�5  -   ���#FAFAFA
�������$��1q�5  -   $ 10��5  -   ._�5  .   �� $��10,0,0,0q�69   $ 
Horizontal=�6K   .+�5  2     $��25��5  5   $��30��5  5   $��0,0,0,0q�5  5   $��Center=�5  5   
���iii�$ Search=�5  5   �� 5  2   $	��300��5  5   $��40��5  5   $��10,2,0,0q�5  5   $ Search��5  5   4 
  DecorationVisibility$4 Hidden=�5   5   
������ $��18(�5"  5    	 MaterialDesignTextBoxBase#��[	 5#  5   .��6h   ��5$  6   �� 5%  :   $ TourHotelDetailFilterText�6B   $ PropertyChanged=�6c    5&  >   5'  ;   .��5(  D   5)  3   5*  /   5+  +   �� 5-  *   -   5        $��cbSearch��5.  -   $	��200��5/  -   $��34��50  -   $��10q�51  -   $! CB_Name��52  -   $��18(�53  -   
���iii���55  -   �� *CB_TourHotelDetailList+$ TwoWay=�" 56  -   �� *CB_TourHotelDetailSelected+��57  .   �� 58  2   " ��68   .�59  6   ��  �@��
IsSelected	 6S   �� *
IsSelected+5:  3   5<  +   5=  '   &   System.Windows.Controls.DataGrid  5>  &   $��1��5?  )   $	��360��5@  )   $��20q�5A  )   $	��Top=�5B  )   -  'MaterialDesignThemes.Wpf.DataGridAssist5   CellPadding$5 12 8 0 8q�5C  )   6   ColumnHeaderPadding$6 20 8 0 8q�5D  )   7 J� 	AllowDrop7 . 8   AutoGenerateColumns8 .  9   CanUserAddRows9 .  :   CanUserDeleteRows: .  ;   CanUserReorderColumns; .  <   CanUserSortColumns< . $��15(�5K  )   =   GridLinesVisibility$= Vertical=�5L  )   >   
IsReadOnly> . ?   SelectionMode$? Single=�5O  )   ��5N  )   �� *TourHotelDetailCollection+@   Columns@ 5P  *   0  *System.Windows.Controls.DataGridTextColumn  5Q  .   ,  &System.Windows.Controls.DataGridColumnA   Width5  /System.Windows.Controls.DataGridLengthConverter$A 0.05* 5R  1   1  +System.Windows.Controls.DataGridBoundColumnB   ElementStyle#B [  5T  1   C   
Foreground
C �OO/�D   Header$D ID��5V  1   E   BindingE 5S  1   �� *TOUR_HOTEL_DETAIL_ID+5V  1     5W  .   $
A 0.2* 5X  1   #B [  5Z  1   
C �OO/�$D 	Tour Name��5\  1   E 5Y  1   �� *	TOUR_NAME+5\  1     5]  .   $
A 0.2* 5^  1   #B [  5`  1   
C �OO/�$D Travel Group Name��5b  1   E 5_  1   �� *TRAVEL_GROUP_NAME+5b  1     5c  .   $A 0.15* 5d  1   #B [  5f  1   
C �OO/�$D 
Start Date��5h  1   E 5e  1   �� *STRING_START_DATE+5h  1     5i  .   $A 0.15* 5j  1   #B [  5l  1   
C �OO/�$D End Date��5n  1   E 5k  1   �� *STRING_END_DATE+5n  1     5o  .   $A 0.15* 5p  1   #B [  5r  1   
C �OO/�$	D Day��5t  1   E 5q  1   �� *	HOTEL_DAY+5t  1   5v  '   5w  #   5x     5y     5z     5{     5|     5}     5~     5     
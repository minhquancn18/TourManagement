   M S B A M L   `   `   `  ����O  KTourManagementSystem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]3clr-namespace:TourManagementSystem.ManagerView.View%TourManagementSystem.ManagerView.View  5      U/clr-namespace:TourManagementSystem.Global.Ruler!TourManagementSystem.Global.Ruler  5
      =    7TourManagementSystem.ManagerView.View.ShowTravellerView   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      U QWpfAnimatedGif, Version=2.0.0.0, Culture=neutral, PublicKeyToken=9e7cd3b544a090dc,gif"http://wpfanimatedgif.codeplex.com  5      ?local3clr-namespace:TourManagementSystem.ManagerView.View  5      _ [MaterialDesignThemes.Wpf, Version=4.3.0.3, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5	      ;ruler/clr-namespace:TourManagementSystem.Global.Ruler  5
      $
��1190��5      $	��620��5      ��5      �� 5   
     �� Triggers  5      :� 5       :� RoutedEvent$ UserControl.Loaded��6   .[�5      �� .��5      �� .��5      W�  �� TargetProperty$ Opacity�5   !    W� From$	 0.0X�5   !   	 W� To$	 1.0X�5   !    g� Duration$ 0:0:1D�5   !   5      5      5      5       � 	Resources 5          WrapText �� 
TargetType �� Property	 �� Value & "MaterialDesignDataGridColumnHeader
 �� BasedOn=  7System.Windows.Controls.Primitives.DataGridColumnHeader  MaterialDesignDataGridCell*  $System.Windows.Controls.DataGridCell P� Property P� Value��%�  &	        '  J     7  '  �     7  �� 5!   
   " ��6!   .�5"      ��  � ��$
	 Wrap=�6-   5#      �� 5$   
   8
   "  6N   .�5%      ��  � ��$		 0.5q�60   �� 5&       � ��	 �#D6D6D66,   �� 5'       � ��	 �#FFFFFF6+   5(      �� 5)   
   8
   "  6F   .�5*      ��  � ��$	 0q�60   �� 5+       � ��	 �#d6d6d66,     5,      P� 5-       �@J�IsMouseOver . . �5.      ��  � ��	 �#FDF8EA63   5/      51      52      .��53      �� -   5         ��Name$ contentControlDisplay��53      $
��auto��64   .��54   
   �� ���#0f6f68$��3q�56       �� CornerRadius$ 15��57      ._�58      � .+�5X      �  � RowDefinitions 5Z      �� 5[      $
��auto �6(   �� 5\      $��* �6(   .+�5_      �� $��0��5`      $��60��5a      ���#0f6f68$ 	15 15 0 0��5c      ._�5d      � .+�5e      �� $��60��5f   !   $��60��5g   !   $
��20,0q�5h   !   $
��Left=�5i   !   $	��Top=�5j   !   
������   
BackButton#��[ 5n   !   ��5l   !   �� *CancelCommand+��5m   !   ��  �� ElementName$ contentControlDisplay��5n   !   �� 5o      $��Center=�5p   !   $��Center=�5q   !   $��24(�5r   !   
�������$)��#D I S P L A Y    T R A V E L L E R ��5t   !   5u      5v      �� 5x      $��1��6#   $
��Auto=�60   .��5y      �� $��0,0,10,0q�5z      .  (MaterialDesignThemes.Wpf.ColorZoneAssist   Mode$ Standard=�5{      +  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth0=�5|      
������  ) %MaterialDesignNavigatilRailTabControl#��[ 5~       �� TabStripPlacement$	 Top=�5      .@�5�      �� $	��590��5�   !   
������  ' #MaterialDesignNavigationRailTabItem#��[ 5�   !   ��5�   "   �� 5�   &   $	��240��5�   )   $��50��5�   )   $��Center=�5�   )    �� Orientation$ 
Horizontal=�5�   )   .+�5�   *   '  !MaterialDesignThemes.Wpf.PackIcon  $��30��5�   -   $��30��5�   -   $
��20,0q�5�   -   $��Center=�5�   -      Kind$ FolderInformation=�5�   -   �� 5�   *   $
��20,0q�5�   -   $��Center=�5�   -   $��Center=�5�   -   $��24(�5�   -   
���   �$��Information��5�   -   5�   '   .��5�   "   � $	��840��5�   %   $	��400��5�   %   $��Center=�5�   %   .+�5�   &   � $��10q�6+    5�   *   �� 5�   .   $
��auto �6<   �� 5�   .   $
��auto �6<   �� 5�   .   $
��auto �6<   �� 5�   .   $
��auto �6<   .+�5�   *   � $��0��6/    � ColumnDefinitions 5�   .   �� 5�   2   $��* �6C   �� 5�   2   $��* �6C   .+�5�   .   �� $��Center=�69   $ 
Horizontal=�6V   .+�5�   2     $��30��5�   5   $��30��5�   5   $��Center=�5�   5   
���iii�$
 User=�5�   5   �� 5�   2   $	��300��5�   5   $��8,0,0,0q�5�   5   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$
 Name��5�   5   $��18(�5�   5    � ToolTip$ Travller Name��5�   5   {�5�   5   �� *
IsEnable+.��5�   M   ��5�   6   �� 5�   :    �� Mode$ TwoWay=�5�   =    �� Path$ Traveller_Name�5�   =    �� UpdateSourceTrigger$ PropertyChanged=�5�   =    �� ValidationRules 5�   >   =   7TourManagementSystem.Global.Ruler.MiniMumCharacterRuler  5�   B      MaximumCharacters$ 40��5�   E      MinimumCharacters$ 0��5�   E      NameFill$ Traveller Name��5�   E   ,  &System.Windows.Controls.ValidationRule    ValidatesOnTargetUpdated  . 5�   E   5�   ;   .��5�   D   5�   3   5�   /   �� 5�   .   $��1��5�   1   $
��36,0q�5�   1   $
��Left=�5�   1   $ 
Horizontal=�5�   1   .+�5�   2     $��30��5�   5   $��30��5�   5   $��Center=�5�   5   
���iii�$ FormatListNumbers=�5�   5   �� 5�   2   $	��8,0q�5�   5   $��Center=�5�   5   $��18(�5�   5   Number Of Tour:5�   3   �� 5�   2   $	��8,0q�5�   5   $��Center=�5�   5   $��18(�5�   5   ��5�   5   �� *NumberOfTour+5�   /   5�   +   �� 5�   *   $��1��5�   -   $��0,24,0,0q�5�   -   
���   �$��12q�5�   -   ! J� Opacity$! 1Q�5�   -   � 5�   *   $��2��6/   $
��0,32q�6<    5�   .   �� 5�   2   $��* �6C   �� 5�   2   $��* �6C   .+�5�   .   �� $��0��69   $��Center=�6I   .+�5�   2   �� $��0,0,0,0q�6=   $ 
Horizontal=�6N   .+�5�   6     $��30��5�   9   $��30��5�   9   $��Center=�5�   9   
���iii�$
 Sort=�5�   9   �� 5  6   $	��300��5  9   $��10,0,0,0q�5  9   $
��Left=�5  9   $
 Type��5  9   $��18(�5  9   
���iii�$ Traveller Type��5	  9   {�5  9   �� *
IsEnable+.@�5
  :   �� $��Domestic Traveller��6G   �� 5  :   $��Foreign Traveller��6G   " �� Text" 5  :   �� 5  >   $ TwoWay=�5  A   $ Traveller_Type�5  A   $ PropertyChanged=�5  A    5  B     5  F   $ 0��5  I   $ Traveller Type��5  I     . 5  I   5  ?   5  7   5  3   �� 5  2   $��0,32,0,0q�6=   $ 
Horizontal=�6O   .+�5  6     $��30��5  9   $��30��5   9   $��Center=�5!  9   
���iii�$ AddressMarkerOutline=�5#  9   �� 5%  6   $	��300��5&  9   $��8,0,0,0q�5'  9   $ Address��5(  9   $��18(�5)  9   $' !Traveller Address - Province Only��5+  9   {�5*  9   �� *
IsEnable+.��5+  e   ��5,  :   �� 5-  >   $ TwoWay=�5.  A   $ Traveller_Address�5/  A   $ PropertyChanged=�50  A    51  B     52  F   $ 0��53  I   $ Traveller Address��54  I     . 55  I   57  ?   .��58  H   59  7   5:  3   �� 5<  2   $��0,32,0,0q�6=   $ 
Horizontal=�6O   .+�5>  6     $��30��5?  9   $��30��5@  9   $��Center=�5A  9   
���iii�$ Phone=�5C  9   �� 5E  6   $	��300��5F  9   $��8,0,0,0q�5G  9   $ Phone Number��5H  9   $��18(�5I  9   $0 *Traveller Phone Number from 6 to 12 number��5K  9   {�5J  9   �� *
IsEnable+.��5K  n   ��5L  :   �� 5M  >   $ TwoWay=�5N  A   $ Traveller_PhoneNumber�5O  A   $ PropertyChanged=�5P  A    5Q  B   8	   2TourManagementSystem.Global.Ruler.PhoneNumberRuler	  5R  F   # 	  MaximumCharacters$# 12��5S  I   $ 	  MinimumCharacters$$ 6��5T  I   % 	  NameFill$% Traveller Phone Number��5U  I     . 5V  I   5X  ?   .��5Y  H   5Z  7   5[  3   5\  /   �� 5^  .   $��1��69   $��Center=�6I   .+�5_  2   �� $��0,0,0,0q�6=   $ 
Horizontal=�6N   .+�5a  6     $��30��5b  9   $��30��5c  9   $��Center=�5d  9   
���iii�$ IdCard=�5f  9   �� 5h  6   $	��300��5i  9   $��8,0,0,0q�5j  9   $ Citizen Identity Card��5k  9   $��18(�5l  9   $+ %Traveller ID Card from 9 to 12 number��5n  9   {�5m  9   �� *
IsEnable+.��5n  i   ��5o  :   �� 5p  >   $ TwoWay=�5q  A   $ Traveller_CitizenIdentity�5r  A   $ PropertyChanged=�5s  A    5t  B   	  5u  F   $# 12��5v  I   $$ 9��5w  I   $% Traveller ID Card��5x  I     . 5y  I   5{  ?   .��5|  H   5}  7   5~  3   �� 5�  2   $��0,32,0,0q�6=   $ 
Horizontal=�6O   .+�5�  6     $��30��5�  9   $��30��5�  9   $��Center=�5�  9   
���iii�$ 
GenderEnby=�5�  9   �� 5�  6   $	��300��5�  9   $��10,0,0,0q�5�  9   $
��Left=�5�  9   $ Gender��5�  9   $��18(�5�  9   
���iii�$ Traveller Gender��5�  9   {�5�  9   �� *
IsEnable+.@�5�  :   �� $
��Male��6G   �� 5�  :   $��Female��6G   " 5�  :   �� 5�  >   $ TwoWay=�5�  A   $ Traveller_Sex�5�  A   $ PropertyChanged=�5�  A    5�  B     5�  F   $ 0��5�  I   $ Traveller Gender��5�  I     . 5�  I   5�  ?   5�  7   5�  3   �� 5�  2   $��0,32,0,0q�6=   $ 
Horizontal=�6O   .+�5�  6     $��30��5�  9   $��30��5�  9   $��Center=�5�  9   
���iii�$ BirthdayCakeOutline=�5�  9   (
  "System.Windows.Controls.DatePicker
  5�  6   -   5        & 
 Name$& 
BirthdayDP��5�  9   $	��300��5�  9   $��60��5�  9   $��10,0,0,0q�5�  9   $ Birthday��5�  9   $��18(�5�  9   ' 
  SelectedDateFormat$' Short=�5�  9    $  MaterialDesignOutlinedDatePicker#��[ 5�  9   $ Traveller Birthday��5�  9   {�5�  9   �� *
IsEnable+( 
  SelectedDate( 5�  :   �� 5�  >   $ TwoWay=�5�  A   $ Traveller_Birth�5�  A   ) �� StringFormat$) {0: dd/MM/yyyy}��5�  A   $ PropertyChanged=�5�  A   5�  7   5�  3   5�  /   5�  +   �� 5�  *   $��3��5�  -   $��Right=�5�  -   $ 
Horizontal=�5�  -   .+�5�  .   �� $	��200��5�  1   $��60��5�  1   $��0,0,60,0q�5�  1   $��Save Changes��5�  1   ���#1885F2  ConfirmButton#��[ 5�  1   ��5�  1   �� *SaveTravellerCommand+y�5�  1   �� *IsVisibility+5�  +   5�  '   5�  #   5�     �� 5�     $	��590��5�  !   
������ #��[ 5�  !   ��5�  "   �� 5�  &   $	��240��5�  )   $��50��5�  )   $��Center=�5�  )   $ 
Horizontal=�5�  )   .+�5�  *     $��30��5�  -   $��30��5�  -   $
��20,0q�5�  -   $��Center=�5�  -   $
 Grid=�5�  -   �� 5�  *   $
��20,0q�5�  -   $��Center=�5�  -   $��Center=�5�  -   $��24(�5�  -   
���   �$��History��5�  -   5�  '   .��5�  "   �  5�  &   �� 5�  *   $��60 �68   �� 5�  *   .+�5�  &   �� $��2��6-   * K� ZIndex$	* 500��6>   ._�5�  *   � y�6/   �� *WaitingVisbility+��5�  .   �� 5�  2   + �� Opacity$+ 1Q�6B   , �� Color$, White��6N   .+�5�  .   �� $��0,60,0,0q�5�  1   $��Center=�5   1   $ Vertical=�5  1   .+�5  2   �� $	��600��5  5   $	��300��5  5   "  WpfAnimatedGif.ImageBehavior-   AnimatedSource$9- 3pack://application:,,,/Resources/Images/waiting.gif��5  5   .   	AutoStart. . 5  5   �� 5  2   $��16,16q�5  5   $��Center=�5	  5   $��Center=�5
  5   $��Roboto)�5  5   $��32(�5  5   $��Italic$�5  5   $��DemiBold"�5  5   
���   �$0��*He/She is not belong to any travel groups.��5  5   5  /   5  +   5  '   �� 5  &   $ 
Horizontal=�61   .+�5  *   �� $��0��5  -   $	��400��5  -   $��50��5  -   $��	40,5,20,5q�5  -   ���#FAFAFA
�������$��1q�5  -   $ 10��5  -   ._�5   .   �� $��10,0,0,0q�69   $ 
Horizontal=�6K   .+�5!  2     $��25��5"  5   $��30��5#  5   $��0,0,0,0q�5$  5   $��Center=�5%  5   
���iii�$ Search=�5'  5   �� 5(  2   $	��300��5)  5   $��40��5*  5   $��10,2,0,0q�5+  5   $ Search��5,  5   .  (MaterialDesignThemes.Wpf.TextFieldAssist/   DecorationVisibility$/ Hidden=�5-  5   
������ $��18(�5/  5     MaterialDesignTextBoxBase#��[ 50  5   .��6h   ��51  6   �� 52  :   $ TravellerDetailFilterText�6B   $ PropertyChanged=�6c    53  >   54  ;   .��55  D   56  3   57  /   58  +   �� 5:  *   -   5        $��cbSearch��5;  -   $	��200��5<  -   $��34��5=  -   $��10q�5>  -   0 �� DisplayMemberPath$0 CB_Name��5?  -   $��18(�5@  -   
���iii���5B  -   �� *CB_TravellerDetailList+$ TwoWay=�1 �� SelectedValue1 5C  -   �� *CB_TravellerDetailSelected+��5D  .   �� 5E  2   " ��68   .�5F  6   ��  �@��
IsSelected	 6S   �� *
IsSelected+5G  3   5I  +   5J  '   &   System.Windows.Controls.DataGrid  5K  &   $��1��5L  )   $
��1100��5M  )   $	��380��5N  )   $��20q�5O  )   $	��Top=�5P  )   -  'MaterialDesignThemes.Wpf.DataGridAssist2   CellPadding$2 12 8 0 8q�5Q  )   3   ColumnHeaderPadding$3 20 8 0 8q�5R  )   4 J� 	AllowDrop4 . 5   AutoGenerateColumns5 .  6   CanUserAddRows6 .  7   CanUserDeleteRows7 .  8   CanUserReorderColumns8 .  9   CanUserSortColumns9 . $��15(�5Y  )   :   GridLinesVisibility$: Vertical=�5Z  )   ;   
IsReadOnly; . <   SelectionMode$< Single=�5]  )   ��5\  )   �� *TravellerDetailCollection+=   Columns= 5^  *   0  *System.Windows.Controls.DataGridTextColumn  5_  .   ,  &System.Windows.Controls.DataGridColumn>   Width5  /System.Windows.Controls.DataGridLengthConverter$> 0.05* 5`  1   1  +System.Windows.Controls.DataGridBoundColumn?   ElementStyle#? [  5b  1   @   
Foreground
@ �OO/�A   Header$A ID��5d  1   B   BindingB 5a  1   �� *TravelGroup_ID+5d  1     5e  .   $
> 0.2* 5f  1   #? [  5h  1   
@ �OO/�$A 	Tour Name��5j  1   B 5g  1   �� *	Tour_Name+5j  1     5k  .   $
> 0.2* 5l  1   #? [  5n  1   
@ �OO/�$A Travel Group Name��5p  1   B 5m  1   �� *TravelGroup_Name+5p  1     5q  .   $> 0.15* 5r  1   #? [  5t  1   
@ �OO/�$A 
Start Date��5v  1   B 5s  1   �� *Tour_StartString+5v  1     5w  .   $> 0.15* 5x  1   #? [  5z  1   
@ �OO/�$A End Date��5|  1   B 5y  1   �� *Tour_EndString+5|  1     5}  .   $> 0.15* 5~  1   #? [  5�  1   
@ �OO/�$A Price��5�  1   B 5  1   �� *TourInformation_Price+5�  1   5�  '   5�  #   5�     5�     5�     5�     5�     5�     5�     5�     
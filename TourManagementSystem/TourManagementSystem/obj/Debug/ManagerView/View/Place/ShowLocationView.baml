   M S B A M L   `   `   `  ����O  KTourManagementSystem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]3clr-namespace:TourManagementSystem.ManagerView.View%TourManagementSystem.ManagerView.View  5      U/clr-namespace:TourManagementSystem.Global.Ruler!TourManagementSystem.Global.Ruler  5
      <    6TourManagementSystem.ManagerView.View.ShowLocationView   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      U QWpfAnimatedGif, Version=2.0.0.0, Culture=neutral, PublicKeyToken=9e7cd3b544a090dc,gif"http://wpfanimatedgif.codeplex.com  5      ?local3clr-namespace:TourManagementSystem.ManagerView.View  5      _ [MaterialDesignThemes.Wpf, Version=4.3.0.3, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5	      ;ruler/clr-namespace:TourManagementSystem.Global.Ruler  5
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
��auto��64   .��54   
   �� ���#0f6f68$��3q�56       �� CornerRadius$ 15��57      ._�59      �  � RowDefinitions 5;      �� 5<      $
��auto �6$   �� 5=      $��* �6$   .+�5@      �� $��0��5A      $��60��5B      ���#0f6f68$ 	15 15 0 0��5D      ._�5E      � .+�5F      �� $��60��5G      $��60��5H      $
��20,0q�5I      $
��Left=�5J      $	��Top=�5K      
������   
BackButton#��[ 5O      ��5M      �� *CancelCommand+��5N      ��  �� ElementName$ contentControlDisplay��5O      �� 5P      $��Center=�5Q      $��Center=�5R      $��24(�5S      
�������$'��!D I S P L A Y    L O C A T I O N ��5U      5V      5W      �� 5X      $��1��6   $
��Auto=�6,   .��5Y      �� $��0,0,10,0q�5Z      .  (MaterialDesignThemes.Wpf.ColorZoneAssist   Mode$ Standard=�5[      +  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth0=�5\      
������  ) %MaterialDesignNavigatilRailTabControl#��[ 5^       �� TabStripPlacement$	 Top=�5_      .@�5a      �� $	��590��5b      
������  ' #MaterialDesignNavigationRailTabItem#��[ 5d      ��5f      �� 5g   "   $	��240��5h   %   $��50��5i   %   $��Center=�5j   %    �� Orientation$ 
Horizontal=�5k   %   .+�5l   &   '  !MaterialDesignThemes.Wpf.PackIcon  $��30��5m   )   $��30��5n   )   $
��20,0q�5o   )   $��Center=�5p   )      Kind$ FolderInformation=�5q   )   �� 5r   &   $
��20,0q�5s   )   $��Center=�5t   )   $��Center=�5u   )   $��24(�5v   )   
���   �$��Information��5x   )   5y   #   .��5|      �  5}   "   �� 5~   &   $
��auto �64   �� 5   &   $
��auto �64   �� 5�   &   $
��auto �64   �� 5�   &   $
��auto �64   .+�5�   "   � $��0��6'   $��120,20,120,20q�64    � ColumnDefinitions 5�   &   �� 5�   *   $��* �6;   �� 5�   *   $��* �6;   .+�5�   &   �� $��0��5�   )   $��
20,30,0,30q�5�   )   $ 
Horizontal=�5�   )   .+�5�   *     $��30��5�   -   $��30��5�   -   $��Center=�5�   -   
���iii�$ PlaceOutline=�5�   -   �� 5�   *   $	��360��5�   -   $��8,0,0,0q�5�   -   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$
 Name��5�   -   $��24(�5�   -    � ToolTip$. (Location Name is the name of famous Site��5�   -   {�5�   -   �� *
IsEnable+.��5�   `   ��5�   .   �� 5�   2    �� Mode$ TwoWay=�5�   5    �� Path$ Location_Name�5�   5    �� UpdateSourceTrigger$ PropertyChanged=�5�   5    �� ValidationRules 5�   6   =   7TourManagementSystem.Global.Ruler.MiniMumCharacterRuler  5�   :      MinimumCharacters$ 0��5�   =      NameFill$ Location Name��5�   =   ,  &System.Windows.Controls.ValidationRule   ValidatesOnTargetUpdated . 5�   =   5�   3   .��5�   <   5�   +   5�   '   �� 5�   &   $��1��5�   )   $��
20,30,0,30q�5�   )   $ 
Horizontal=�5�   )   .+�5�   *     $��30��5�   -   $��30��5�   -   $��Center=�5�   -   
���iii�$ Earth=�5�   -   �� 5�   *   $	��360��5�   -   $��8,0,0,0q�5�   -       
HelperText$  The place of Location��5�   -   !   HelperTextFontSize$! 18Q�5�   -   $ Place��5�   -   $��24(�5�   -   {�.  .��5�   ?   ��5�   .   �� 5�   2   $ TwoWay=�5�   5   $ 
Place_Name�5�   5   $ PropertyChanged=�5�   5    5�   6   5�   3   .��5�   <   5�   +   5�   '   5�   #   �� 5�   "   $��1��5�   %   $��140,10,160,10q�5�   %   $ 
Horizontal=�5�   %   .+�5�   &     $��30��5�   )   $��30��5�   )   $��Center=�5�   )   
���iii�$ AddressMarker=�5�   )   �� 5�   &   $	��850��5�   )   $��10,0,0,0q�5�   )   $ Address��5�   )   $��18(�5�   )   {�5�   )   �� *
IsEnable+.��6H   ��5�   *   �� 5�   .   $ TwoWay=�5�   1   $ Location_Address�5�   1   $ PropertyChanged=�5�   1    5�   2     5�   6   $ 0��5�   9   $ Location Address��5�   9    . 5�   9   5�   /   .��5�   8   5�   '   5�   #   �� 5�   "   $��2��5�   %   $��120,20,120,20q�5�   %   $	��Top=�5�   %   .+�5�   &   �� $��	35,10,0,0q�5�   )   $��24(�5�   )   
���iii�Description5�   '   �� 5�   &   $	��850��5�   )   $	��120��5�   )   $��
35,10,20,0q�5�   )   $
��Left=�5�   )   $!  Detail about the location ?��5�   )   $! 16Q�5   )   " �� AcceptsReturn" . $��18(�5  )   
���iii�# �� MinLines$# 8��5  )    ! MaterialDesignOutlinedTextBox#��[ 5  )   $ �� TextWrapping$
$ Wrap=�5  )   {�5  )   �� *
IsEnable+��5  )   �� *Location_Description+$ TwoWay=�5  )   5	  #   �� 5  "   $��3��5  %   $��Center=�5  %   $ 
Horizontal=�5  %   .+�5  &   �� $	��200��5  )   $��60��5  )   $��Save Changes��5  )   ���#1885F2  	AddButton#��[ 5  )   ��5  )   �� *SaveChangeCommand+y�5  )   �� *IsVisibility+5  #   5     5     �� 5     $	��590��5     
������ #��[ 5     ��5!     �� 5"  "   $	��240��5#  %   $��50��5$  %   $��Center=�5%  %   $ 
Horizontal=�5&  %   .+�5'  &     $��30��5(  )   $��30��5)  )   $
��20,0q�5*  )   $��Center=�5+  )   $ Travel=�5,  )   �� 5-  &   $
��20,0q�5.  )   $��Center=�5/  )   $��Center=�50  )   $��24(�51  )   
���   �$
��Tour��53  )   54  #   .��56     �  58  "   �� 59  &   $��60 �64   �� 5:  &   .+�5=  "   �� $��2��6)   % K� ZIndex$	% 500��6:   ._�5>  &   � y�6+   �� *WaitingVisbility+��5@  *   �� 5A  .   & �� Opacity$& 1Q�6>   ' �� Color$' White��6J   .+�5C  *   �� $��0,60,0,0q�5D  -   $��Center=�5E  -   $ Vertical=�5F  -   .+�5G  .   �� $	��600��5H  1   $	��300��5I  1   "	  WpfAnimatedGif.ImageBehavior( 	  AnimatedSource$9( 3pack://application:,,,/Resources/Images/waiting.gif��5J  1   ) 	  	AutoStart) . 5K  1   �� 5L  .   $��16,16q�5M  1   $��Center=�5N  1   $��Center=�5O  1   $��Roboto)�5P  1   $��32(�5Q  1   $��Italic$�5R  1   $��DemiBold"�5S  1   
���   �$/��)This location is not visited by any tour.��5U  1   5V  +   5W  '   5X  #   �� 5Y  "   $ 
Horizontal=�6-   .+�5Z  &   �� $��0��5[  )   $	��400��5\  )   $��50��5]  )   $��	40,5,20,5q�5^  )   ���#FAFAFA
�������$��1q�5a  )   $ 10��5b  )   ._�5d  *   �� $��10,0,0,0q�65   $ 
Horizontal=�6G   .+�5e  .     $��25��5f  1   $��30��5g  1   $��0,0,0,0q�5h  1   $��Center=�5i  1   
���iii�$ Search=�5k  1   �� 5l  .   $	��300��5m  1   $��40��5n  1   $��10,2,0,0q�5o  1   $ Search��5p  1   .
  (MaterialDesignThemes.Wpf.TextFieldAssist* 
  DecorationVisibility$* Hidden=�5q  1   
������ $��18(�5s  1     MaterialDesignTextBoxBase#��[ 5t  1   .��6d   ��5u  2   �� 5v  6   $ TourLocationFilterText�6>   $ PropertyChanged=�6\    5w  :   5x  7   .��5y  @   5z  /   5{  +   5|  '   �� 5~  &   -   5        $��cbSearch��5  )   $	��200��5�  )   $��34��5�  )   $��10q�5�  )   + �� DisplayMemberPath$+ CB_Name��5�  )   $��18(�5�  )   
���iii���5�  )   �� *CB_TourLocationList+$ TwoWay=�, �� SelectedValue, 5�  )   �� *CB_TourLocationSelected+��5�  *   �� 5�  .   " ��64   .�5�  2   ��  �@��
IsSelected	 6O   �� *
IsSelected+5�  /   5�  '   5�  #   &   System.Windows.Controls.DataGrid  5�  "   $��1��5�  %   $
��1100��5�  %   $	��380��5�  %   $��20q�5�  %   $	��Top=�5�  %   -  'MaterialDesignThemes.Wpf.DataGridAssist-   CellPadding$- 12 8 0 8q�5�  %   .   ColumnHeaderPadding$. 20 8 0 8q�5�  %   / J� 	AllowDrop/ . 0   AutoGenerateColumns0 .  1   CanUserAddRows1 .  2   CanUserDeleteRows2 .  3   CanUserReorderColumns3 .  4   CanUserSortColumns4 . 5   GridLinesVisibility$5 Vertical=�5�  %   6   
IsReadOnly6 . 7   SelectionMode$7 Single=�5�  %   ��5�  %   �� *TourLocationCollection+8   Columns8 5�  &   0  *System.Windows.Controls.DataGridTextColumn  5�  *   ,  &System.Windows.Controls.DataGridColumn9   Width5  /System.Windows.Controls.DataGridLengthConverter$
9 0.1* 5�  -   1  +System.Windows.Controls.DataGridBoundColumn:   ElementStyle#: [  5�  -   ;   
Foreground
; �OO/�<   Header$< ID��5�  -   =   Binding= 5�  -   �� *	TOUR_ID+5�  -     5�  *   $
9 0.5* 5�  -   #: [  5�  -   
; �OO/�$
< Name��5�  -   = 5�  -   �� *	TOUR_NAME+5�  -     5�  *   $
9 0.4* 5�  -   #: [  5�  -   
; �OO/�$
< Time��5�  -   = 5�  -   �� *TOUR_STRING_DATE+5�  -   5�  #   5�     5�     5�     5�     5�     5�     5�     5�     
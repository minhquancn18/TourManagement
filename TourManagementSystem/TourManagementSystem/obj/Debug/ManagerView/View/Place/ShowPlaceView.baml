   M S B A M L   `   `   `  ����O  KTourManagementSystem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]3clr-namespace:TourManagementSystem.ManagerView.View%TourManagementSystem.ManagerView.View  5      U/clr-namespace:TourManagementSystem.Global.Ruler!TourManagementSystem.Global.Ruler  5
      9    3TourManagementSystem.ManagerView.View.ShowPlaceView   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      U QWpfAnimatedGif, Version=2.0.0.0, Culture=neutral, PublicKeyToken=9e7cd3b544a090dc,gif"http://wpfanimatedgif.codeplex.com  5      ?local3clr-namespace:TourManagementSystem.ManagerView.View  5      _ [MaterialDesignThemes.Wpf, Version=4.3.0.3, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5	      ;ruler/clr-namespace:TourManagementSystem.Global.Ruler  5
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
��auto��64   .��55   
   �� ���#0f6f68$��3q�57       �� CornerRadius$ 15��58      ._�5:      �  � RowDefinitions 5<      �� 5=      $
��auto �6$   �� 5>      $��* �6$   .+�5A      �� $��0��5B      $��60��5C      ���#0f6f68$ 	15 15 0 0��5E      ._�5F      � .+�5G      �� $��60��5H      $��60��5I      $
��20,0q�5J      $
��Left=�5K      $	��Top=�5L      
������   
BackButton#��[ 5P      ��5N      �� *CancelCommand+��5O      ��  �� ElementName$ contentControlDisplay��5P      �� 5Q      $��Center=�5R      $��Center=�5S      $��24(�5T      
�������$!��D I S P L A Y    P L A C E ��5V      5W      5X      �� 5Z      $��1��6   $
��Auto=�6,   .��5[      �� $��0,0,10,0q�5\      .  (MaterialDesignThemes.Wpf.ColorZoneAssist   Mode$ Standard=�5]      +  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth0=�5^      
������  ) %MaterialDesignNavigatilRailTabControl#��[ 5`       �� TabStripPlacement$	 Top=�5a      .@�5c      �� $	��590��5d      
������  ' #MaterialDesignNavigationRailTabItem#��[ 5f      ��5h      �� 5i   "   $	��240��5j   %   $��50��5k   %   $��Center=�5l   %    �� Orientation$ 
Horizontal=�5m   %   .+�5n   &   '  !MaterialDesignThemes.Wpf.PackIcon  $��30��5o   )   $��30��5p   )   $
��20,0q�5q   )   $��Center=�5r   )      Kind$ FolderInformation=�5s   )   �� 5t   &   $
��20,0q�5u   )   $��Center=�5v   )   $��Center=�5w   )   $��24(�5x   )   
���   �$��Information��5z   )   5{   #   .��5~      �  5   "   �� 5�   &   $
��auto �64   �� 5�   &   $
��auto �64   .+�5�   "   �� $��0��5�   %   $	��500��5�   %   $��
40,20,0,40q�5�   %   $��Center=�5�   %   $��Center=�5�   %   .+�5�   &   �� $��
20,30,0,30q�61   $ 
Horizontal=�6E   .+�5�   *     $��30��5�   -   $��30��5�   -   $��Center=�5�   -   
���iii�$ PlaceOutline=�5�   -   �� 5�   *   $	��360��5�   -   $��8,0,0,0q�5�   -   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$
 Name��5�   -   $��24(�5�   -    � ToolTip$( "Place Name like Province of Nation��5�   -   {�5�   -   �� *
IsEnable+.��5�   Z   ��5�   .   �� 5�   2    �� Mode$ TwoWay=�5�   5    �� Path$ 
Place_Name�5�   5    �� UpdateSourceTrigger$ PropertyChanged=�5�   5    �� ValidationRules 5�   6   =   7TourManagementSystem.Global.Ruler.MiniMumCharacterRuler  5�   :      MinimumCharacters$ 0��5�   =      NameFill$ 
Place Name��5�   =   ,  &System.Windows.Controls.ValidationRule   ValidatesOnTargetUpdated . 5�   =   5�   3   .��5�   <   5�   +   5�   '   �� 5�   &   $��
20,30,0,30q�61   $ 
Horizontal=�6E   .+�5�   *     $��30��5�   -   $��30��5�   -   $��Center=�5�   -   
���iii�$ Earth=�5�   -   �� 5�   *   $	��360��5�   -   $��8,0,0,0q�5�   -   $ Nation��5�   -   $��24(�5�   -   $ The name of the country��5�   -   {�5�   -   �� *
IsEnable+.��5�   O   ��5�   .   �� 5�   2   $ TwoWay=�5�   5   $ Place_Nation�5�   5   $ PropertyChanged=�5�   5    5�   6     5�   :   $ 0��5�   =   $ Place Nation��5�   =    . 5�   =   5�   3   .��5�   <   5�   +   5�   '   �� 5�   &   $��
20,30,0,30q�61   $ 
Horizontal=�6E   .+�5�   *     $��30��5�   -   $��30��5�   -   $��Center=�5�   -   
���iii�$ Travel=�5�   -   �� 5�   *   $	��360��5�   -   $��8,0,0,0q�5�   -      
HelperText$# Number Location of this place��5�   -       HelperTextFontSize$  18Q�5�   -   $ Nimber Location��5�   -   $��24(�5�   -   
���   �{�.  .��5�   ?   ��5�   .   �� 5�   2   $ TwoWay=�5�   5   $ Place_Location�5�   5   $ PropertyChanged=�5�   5    5�   6   5�   3   .��5�   <   5�   +   5�   '   5�   #   �� 5�   "   $��2��5�   %   $��Center=�5�   %   $ 
Horizontal=�5�   %   .+�5�   &   �� $	��200��5�   )   $��60��5�   )   $��Save Changes��5�   )   ���#1885F2  	AddButton#��[ 5�   )   ��5�   )   �� *SaveChangeCommand+y�5�   )   �� *IsVisibility+5�   #   5�      5�      �� 5�      $	��590��5�      
������ #��[ 5�      ��5�      �� 5�   "   $	��240��5   %   $��50��5  %   $��Center=�5  %   $ 
Horizontal=�5  %   .+�5  &     $��30��5  )   $��30��5  )   $
��20,0q�5  )   $��Center=�5  )   $ PlaceOutline=�5	  )   �� 5
  &   $
��20,0q�5  )   $��Center=�5  )   $��Center=�5  )   $��24(�5  )   
���   �$��Location��5  )   5  #   .��5     � $��0,10,0,0q�6#    5  "   �� 5  &   $
��auto �64   �� 5  &   $
��auto �64   .+�5  "   � $��0��6'   ! � ColumnDefinitions! 5  &   �� 5  *   $
��auto �6;   �� 5  *   $
��auto �6;   �� 5  *   $
��auto �6;   .+�5!  &   �� $��0��5"  )   $	��400��5#  )   $��50��5$  )   $��	40,5,40,5q�5%  )   ���#FAFAFA
�������$��1q�5(  )   $ 10��5)  )   ._�5+  *   �� $��10,0,0,0q�65   $ 
Horizontal=�6G   .+�5,  .     $��25��5-  1   $��30��5.  1   $��0,0,0,0q�5/  1   $��Center=�50  1   
���iii�$ Search=�52  1   �� 53  .   $	��300��54  1   $��40��55  1   $��10,2,0,0q�56  1   $ Search��57  1   .	  (MaterialDesignThemes.Wpf.TextFieldAssist" 	  DecorationVisibility$" Hidden=�58  1   
������ $��18(�5:  1     MaterialDesignTextBoxBase#��[ 5;  1   .��6d   ��5<  2   �� 5=  6   $ LocationFilterText�6>   $ PropertyChanged=�6X    5>  :   5?  7   .��5@  @   5A  /   5B  +   5C  '   �� 5E  &   $��1��61   $ 
Horizontal=�6A   .+�5F  *   �� $	��160��5G  -   $��34��5H  -   $��10,10,80,10q�5I  -   # �� DisplayMemberPath$# CB_Name��5J  -   $��18(�5K  -   
���iii���5M  -   �� *CB_LocationList+$ TwoWay=�$ �� SelectedValue$ 5N  -   �� *CB_LocationSelected+��5O  .   �� 5P  2   " ��68   .�5Q  6   ��  �@��
IsSelected	 6S   �� *
IsSelected+5R  3   5T  +   5U  '   �� 5W  &   $��2��5X  )   $	��200��5Y  )   $��50��5Z  )   $��Add New Location��5]  )   ���#0f6f68#��[ 5_  )   ��5[  )   �� *AddLocationCommand+��5\  )   �� $ contentControlDisplay��y�5`  )   �� *IsVisibility+5a  #   �� 5c  "   $��1��6)   % K� ZIndex$	% 500��66   ._�5d  &   � y�6+   �� *WaitingVisbility+��5f  *   �� 5g  .   & �� Opacity$& 1Q�6>   ' �� Color$' White��6J   .+�5i  *   �� $��0,0,0,0q�5j  -   $��Center=�5k  -   $ Vertical=�5l  -   .+�5m  .   �� $	��600��5n  1   $	��300��5o  1   "
  WpfAnimatedGif.ImageBehavior( 
  AnimatedSource$9( 3pack://application:,,,/Resources/Images/waiting.gif��5p  1   ) 
  	AutoStart) . 5q  1   �� 5r  .   $��16,16q�5s  1   $��Center=�5t  1   $��Center=�5u  1   $��Roboto)�5v  1   $��32(�5w  1   $��Italic$�5x  1   $��DemiBold"�5y  1   
���   �$#��Please update more locations.��5{  1   5|  +   5}  '   5~  #   &   System.Windows.Controls.DataGrid  5�  "   $��1��5�  %   $
��1100��5�  %   $	��360��5�  %   $��20q�5�  %   $	��Top=�5�  %   -  'MaterialDesignThemes.Wpf.DataGridAssist*   CellPadding$* 12 8 0 8q�5�  %   +   ColumnHeaderPadding$+ 20 8 0 8q�5�  %   , J� 	AllowDrop, . -   AutoGenerateColumns- .  .   CanUserAddRows. .  /   CanUserDeleteRows/ .  0   CanUserReorderColumns0 .  1   CanUserSortColumns1 . 
���OO/�2   GridLinesVisibility$2 Vertical=�5�  %   3   
IsReadOnly3 . 4   SelectionMode$4 Single=�5�  %   ��5�  %   �� *LocationItems+5 �� SelectedItem5 5�  %   �� *LocationSelected+6 J� InputBindings6 5�  &   d� 5�  *   7 d� Gesture$7 LeftDoubleClicka�5�  -   8 �� Command8 5�  -   �� *ShowDetailLocationCommand+9 �� CommandParameter9 5�  -   �� $ contentControlDisplay��5�  -   :   Columns: 5�  &   0  *System.Windows.Controls.DataGridTextColumn  5�  *   ,  &System.Windows.Controls.DataGridColumn;   Width5  /System.Windows.Controls.DataGridLengthConverter$
; 0.1* 5�  -   1  +System.Windows.Controls.DataGridBoundColumn<   ElementStyle#< [  5�  -   =   
Foreground
= �OO/�>   Header$> ID��5�  -   ?   Binding? 5�  -   �� *LOCATION_ID+5�  -     5�  *   $
; 0.2* 5�  -   #< [  5�  -   
= �OO/�$
> Name��5�  -   ? 5�  -   �� *LOCATION_NAME+5�  -     5�  *   $; 0.35* 5�  -   #< [  5�  -   
= �OO/�$> Address��5�  -   ? 5�  -   �� *LOCATION_ADDRESS+5�  -     5�  *   $; 0.45* 5�  -   #< [  5�  -   
= �OO/�$> Description��5�  -   ? 5�  -   �� *LOCATION_DESCRIPTION+5�  -   5�  #   5�     5�     5�     5�     5�     5�     5�     5�     
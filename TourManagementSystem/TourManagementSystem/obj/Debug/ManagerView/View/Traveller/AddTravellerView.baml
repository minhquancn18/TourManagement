   M S B A M L   `   `   `  ����O  KTourManagementSystem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]3clr-namespace:TourManagementSystem.ManagerView.View%TourManagementSystem.ManagerView.View  5      U/clr-namespace:TourManagementSystem.Global.Ruler!TourManagementSystem.Global.Ruler  5	      <    6TourManagementSystem.ManagerView.View.AddTravellerView   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Elocal3clr-namespace:TourManagementSystem.ManagerView.View     5      _ [MaterialDesignThemes.Wpf, Version=4.3.0.3, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5      ;ruler/clr-namespace:TourManagementSystem.Global.Ruler  5	      $
��1190��5
      $	��620��5      ��5      �� 5   
     �� Triggers  5      :� 5       :� RoutedEvent$ UserControl.Loaded��6   .[�5      �� .��5      �� .��5      W�  �� TargetProperty$ Opacity�5   !    W� From$	 0.0X�5   !   	 W� To$	 1.0X�5   !    g� Duration$ 0:0:1D�5   !   5      5      5      5      .��5      �� -   5         ��Name$ contentControlAdd��5      $
��auto��60   .��5   
   �� ���#0f6f68$��3q�5!       �� CornerRadius$ 15��5"      ._�5#      � .+�5C      �  � RowDefinitions 5E      �� 5F      $
��auto �6(   �� 5G      $��* �6(   �� 5H      $
��auto �6(   .+�5K      �� $��0��5L      $��60��5M      ���#0f6f68$ 	15 15 0 0��5O      ._�5P      �� $��Center=�5Q      $��Center=�5R      $��24(�5S      
�������$*��$A D D    N E W    T R A V E L L E R ��5U      5V      �� 5X      $��1��6#   .��5Y      � $	��840��5Z      $	��400��5[      $��Center=�5\      .+�5^      � $��10q�6#    5_   "   �� 5`   &   $
��auto �64   �� 5a   &   $
��auto �64   �� 5b   &   $
��auto �64   �� 5c   &   $
��auto �64   .+�5f   "   � $��0��6'   .+�5g   &   �� $��Center=�61   	 �� Orientation$	 
Horizontal=�6N   .+�5i   *   '  !MaterialDesignThemes.Wpf.PackIcon  $��30��5j   -   $��30��5k   -   $��Center=�5l   -   
���iii�
   Kind$

 User=�5n   -   �� 5p   *   $	��400��5q   -   $��8,0,0,0q�5r   -   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$
 Name��5s   -   $��18(�5t   -    � ToolTip$ Travller Name��5u   -   .��6E   ��5v   .   �� 5w   2    �� Mode$ TwoWay=�5x   5    �� Path$ Traveller_Name�5y   5    �� UpdateSourceTrigger$ PropertyChanged=�5z   5    �� ValidationRules 5{   6   =   7TourManagementSystem.Global.Ruler.MiniMumCharacterRuler  5|   :      MaximumCharacters$ 40��5}   =      MinimumCharacters$ 0��5~   =      NameFill$ Traveller Name��5   =   ,  &System.Windows.Controls.ValidationRule   ValidatesOnTargetUpdated . 5�   =   5�   3   .��5�   <   5�   +   5�   '   5�   #   �� 5�   "   $��2��5�   %   $��0,24,0,0q�5�   %   
���   �$��12q�5�   %    J� Opacity$ 1Q�5�   %   � 5�   "   $��3��6'   $
��0,32q�64    � ColumnDefinitions 5�   &   �� 5�   *   $��* �6;   �� 5�   *   $��* �6;   .+�5�   &   �� $��0��61   $��Center=�6A   .+�5�   *   �� $��0,0,0,0q�65   $	 
Horizontal=�6F   .+�5�   .     $��30��5�   1   $��30��5�   1   $��Center=�5�   1   
���iii�$

 Sort=�5�   1   �� 5�   .   $	��300��5�   1   $��10,0,0,0q�5�   1   $
��Left=�5�   1   $
 Type��5�   1   $��18(�5�   1   
���iii�$ Traveller Type��5�   1   .@�5�   2   �� $��Domestic Traveller��6?   �� 5�   2   $��Foreign Traveller��6?    �� Text 5�   2   �� 5�   6   $ TwoWay=�5�   9   $ Traveller_Type�5�   9   $ PropertyChanged=�5�   9    5�   :     5�   >   $ 0��5�   A   $ Traveller Type��5�   A    . 5�   A   5�   7   5�   /   5�   +   �� 5�   *   $��0,32,0,0q�65   $	 
Horizontal=�6G   .+�5�   .     $��30��5�   1   $��30��5�   1   $��Center=�5�   1   
���iii�$
 AddressMarkerOutline=�5�   1   �� 5�   .   $	��300��5�   1   $��8,0,0,0q�5�   1   $ Address��5�   1   $��18(�5�   1   $' !Traveller Address - Province Only��5�   1   .��6]   ��5�   2   �� 5�   6   $ TwoWay=�5�   9   $ Traveller_Address�5�   9   $ PropertyChanged=�5�   9    5�   :     5�   >   $ 0��5�   A   $ Traveller Address��5�   A    . 5�   A   5�   7   .��5�   @   5�   /   5�   +   �� 5�   *   $��0,32,0,0q�65   $	 
Horizontal=�6G   .+�5�   .     $��30��5�   1   $��30��5�   1   $��Center=�5�   1   
���iii�$
 Phone=�5�   1   �� 5�   .   $	��300��5�   1   $��8,0,0,0q�5�   1   $ Phone Number��5�   1   $��18(�5�   1   $0 *Traveller Phone Number from 6 to 12 number��5�   1   .��6f   ��5�   2   �� 5�   6   $ TwoWay=�5�   9   $ Traveller_PhoneNumber�5�   9   $ PropertyChanged=�5�   9    5�   :   8   2TourManagementSystem.Global.Ruler.PhoneNumberRuler  5�   >      MaximumCharacters$ 12��5�   A      MinimumCharacters$ 6��5�   A      NameFill$ Traveller Phone Number��5�   A    . 5�   A   5�   7   .��5�   @   5�   /   5�   +   5�   '   �� 5�   &   $��1��61   $��Center=�6A   .+�5�   *   �� $��0,0,0,0q�65   $	 
Horizontal=�6F   .+�5�   .     $��30��5�   1   $��30��5�   1   $��Center=�5�   1   
���iii�$
 IdCard=�5  1   �� 5  .   $	��300��5  1   $��8,0,0,0q�5  1   $ Citizen Identity Card��5  1   $��18(�5  1   $+ %Traveller ID Card from 9 to 12 number��5  1   .��6a   ��5	  2   �� 5
  6   $ TwoWay=�5  9   $ Traveller_CitizenIdentity�5  9   $ PropertyChanged=�5  9    5  :     5  >   $ 12��5  A   $ 9��5  A   $ Traveller ID Card��5  A    . 5  A   5  7   .��5  @   5  /   5  +   �� 5  *   $��0,32,0,0q�65   $	 
Horizontal=�6G   .+�5  .     $��30��5  1   $��30��5  1   $��Center=�5  1   
���iii�$
 
GenderEnby=�5!  1   �� 5#  .   $	��300��5$  1   $��10,0,0,0q�5%  1   $
��Left=�5&  1   $ Gender��5'  1   $��18(�5(  1   
���iii�$ Traveller Gender��5*  1   .@�5+  2   �� $
��Male��6?   �� 5,  2   $��Female��6?    5-  2   �� 5.  6   $ TwoWay=�5/  9   $ Traveller_Sex�50  9   $ PropertyChanged=�51  9    52  :     53  >   $ 0��54  A   $ Traveller Gender��55  A    . 56  A   58  7   5:  /   5;  +   �� 5=  *   $��0,32,0,0q�65   $	 
Horizontal=�6G   .+�5?  .     $��30��5@  1   $��30��5A  1   $��Center=�5B  1   
���iii�$
 BirthdayCakeOutline=�5D  1   (  "System.Windows.Controls.DatePicker  5F  .   -   5          Name$ 
BirthdayDP��5G  1   $	��300��5H  1   $��60��5I  1   $��10,0,0,0q�5J  1   $ Birthday��5K  1   $��18(�5L  1      SelectedDateFormat$ Short=�5M  1    $   MaterialDesignOutlinedDatePicker#��[  5N  1   $ Traveller Birthday��5O  1      SelectedDate 5P  2   �� 5Q  6   $ TwoWay=�5R  9   $ Traveller_Birth�5S  9    �� StringFormat$ {0: dd/MM/yyyy}��5T  9   $ PropertyChanged=�5U  9   5W  /   5X  +   5Y  '   5Z  #   5[     5\     5]     �� 5_     $��2��5`     ���#F9F9F9$	 
Horizontal=�5b     .+�5d     �� $	��200��5e     $��60��5f     $��360,20,20,20q�5g     $��Confirm��5j     ���#1885F2  ConfirmButton#��[ 5l     ��5h     �� *AddTravellerCommand+��5i     ��  �� ElementName$ contentControlAdd��5l     �� 5n     $	��200��5o     $��60��5p     $��20,20,20,20q�5q     $��Cancel��5t     ���#F36E6B  CancelButton#��[ 5v     ��5r     �� *CancelCommand+��5s     �� $ contentControlAdd��5v     5w     5x     5y     5z     5{     5|     
   M S B A M L   `   `   `  ����O  KTourManagementSystem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]3clr-namespace:TourManagementSystem.ManagerView.View%TourManagementSystem.ManagerView.View  5      U/clr-namespace:TourManagementSystem.Global.Ruler!TourManagementSystem.Global.Ruler  5	      8    2TourManagementSystem.ManagerView.View.AddHotelView   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Elocal3clr-namespace:TourManagementSystem.ManagerView.View     5      _ [MaterialDesignThemes.Wpf, Version=4.3.0.3, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5      ;ruler/clr-namespace:TourManagementSystem.Global.Ruler  5	      $
��1190��5
      $	��620��5      ��5      �� 5   
     �� Triggers  5      :� 5       :� RoutedEvent$ UserControl.Loaded��6   .[�5      �� .��5      �� .��5      W�  �� TargetProperty$ Opacity�5   !    W� From$	 0.0X�5   !   	 W� To$	 1.0X�5   !    g� Duration$ 0:0:1D�5   !   5      5      5      5      .��5      �� -   5         ��Name$ contentControlAdd��5      $
��auto��60   .��5   
   �� ���#0f6f68$��3q�5!       �� CornerRadius$ 15��5"      ._�5#      � .+�5$      �  � RowDefinitions 5&      �� 5'      $
��auto �6(   �� 5(      $��* �6(   �� 5)      $
��auto �6(   .+�5,      �� $��0��5-      $��60��5.      ���#0f6f68$ 	15 15 0 0��50      ._�51      �� $��Center=�52      $��Center=�53      $��24(�54      
�������$��ADD NEW HOTEL��56      57      �� 59      $��1��6#   .��5:      � $��150,0q�6    5<      �� 5=   "   $
��auto �60   �� 5>   "   $
��auto �60   �� 5?   "   $
��auto �60   �� 5@   "   $
��auto �60   �� 5A   "   $
��auto �60   �� 5B   "   $
��auto �60   .+�5E      � $��0��6#   	 � ColumnDefinitions	 5G   "   �� 5H   &   $��* �67   �� 5I   &   $��* �67   .+�5L   "   �� $��0��6-   $��20q�6=   .+�5N   &   �� $��0,30,0,0q�61   
 �� Orientation$
 
Horizontal=�6C   .+�5P   *   '  !MaterialDesignThemes.Wpf.PackIcon  $��30��5Q   -   $��30��5R   -   $��Center=�5S   -   
���iii�   Kind$ Hotel=�5U   -   �� 5W   *   $	��260��5X   -   $��8,0,0,0q�5Y   -   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$
 Name��5Z   -   $��18(�5[   -    � ToolTip$ 
Hotel Name��5\   -   .��6B   ��5]   .   �� 5^   2    �� Mode$ TwoWay=�5_   5    �� Path$ 
Hotel_Name�5`   5    �� UpdateSourceTrigger$ PropertyChanged=�5a   5    �� ValidationRules 5b   6   =   7TourManagementSystem.Global.Ruler.MiniMumCharacterRuler  5c   :      MaximumCharacters$ 30��5d   =      MinimumCharacters$ 0��5e   =      NameFill$ 
Hotel Name��5f   =   ,  &System.Windows.Controls.ValidationRule   ValidatesOnTargetUpdated . 5g   =   5i   3   .��5j   <   5k   +   5l   '   5m   #   �� 5o   "   $��1��5p   %   $��20,40,30,20q�5q   %   $��Right=�5r   %   $
 
Horizontal=�5s   %   .+�5u   &     $��30��5v   )   $��30��5w   )   $��Center=�5x   )   
���iii�$ PlaceOutline=�5z   )   �� 5{   &   $	��260��5|   )   $��30��5}   )   $��10,0,0,0q�5~   )   $ Place��5   )    �� DisplayMemberPath$ CB_Name��5�   )   $��18(�5�   )   
���iii�$ Hotel Place��5�   )   ��5�   )   �� *CB_PlaceList+$ TwoWay=� �� SelectedValue 5�   )   �� *CB_PlaceSelected+��5�   *   �� 5�   .    �� 
TargetType" ��64   .�5�   2   ��  �� Property �@��
IsSelected �� Value 6O   �� *
IsSelected+5�   /   5�   '   5�   #   5�      �� 5�      $��1��5�   !   $��0,10,0,0q�5�   !   
���   �$��12q�5�   !    J� Opacity$	 0.8Q�5�   !   �� 5�      $��2��5�   !   $��20q�5�   !   $
 
Horizontal=�5�   !   .+�5�   "     $��30��5�   %   $��30��5�   %   $��Center=�5�   %   
���iii�$ AddressMarker=�5�   %   �� 5�   "   $	��760��5�   %   $ Address��5�   %   $��18(�5�   %   $O IInclude Apartment Number, Street Name, Ward Name, City Name, Provide Name��5�   %   .��6y   ��5�   &   �� 5�   *   $ TwoWay=�5�   -   $ Hotel_Address�5�   -   $ PropertyChanged=�5�   -    5�   .     5�   2   $ 0��5�   5   $ Hotel Address��5�   5    . 5�   5   5�   +   .��5�   4   5�   #   5�      � 5�      $��3��6#   .+�5�   "   �� $��20q�6-   $
��Left=�69   .+�5�   &   �� $��0,0,0,0q�61   $
 
Horizontal=�6B   .+�5�   *     $��30��5�   -   $��30��5�   -   $��Center=�5�   -   
���iii�$ Phone=�5�   -   �� 5�   *   $	��260��5�   -   $��10,0,0,0q�5�   -   $ Phone Number��5�   -   $��18(�5�   -   $- 'Hotel Phone Number - Accept Number Only��5�   -   .��6_   ��5�   .   �� 5�   2   $ TwoWay=�5�   5   $ Hotel_Phone_Number�5�   5   $ PropertyChanged=�5�   5    5�   6   8   2TourManagementSystem.Global.Ruler.PhoneNumberRuler  5�   :      MaximumCharacters$ 12��5�   =      MinimumCharacters$ 6��5�   =      NameFill$ Hotel Phone Number��5�   =    . 5�   =   5�   3   .��5�   <   5�   +   5�   '   �� 5�   &   $��0,30,0,0q�61   $
 
Horizontal=�6C   .+�5�   *     $��30��5�   -   $��30��5�   -   $��Center=�5�   -   
���iii�$ Money=�5�   -   �� 5�   *   $	��260��5�   -   $��10,0,0,0q�5�   -   $ Price��5�   -   .  (MaterialDesignThemes.Wpf.TextFieldAssist   
PrefixText$	 VND��5�   -   $��18(�5�   -   $% Hotel Price - Accept Price Only��5�   -   .��6W   ��5�   .   �� 5�   2   $ TwoWay=�5�   5   $ Hotel_Price�5�   5   $ PropertyChanged=�5�   5    5�   6   2   ,TourManagementSystem.Global.Ruler.MoneyRuler  5�   :       NameFill$  Hotel Price��6K    . 6b   5�   3   .��5�   <   5�   +   5�   '   5�   #   �� 5�   "   $��20,20,30,20q�6-   $��Right=�6B   .+�5�   &   �� $��0,0,0,0q�61   $
 
Horizontal=�6B   .+�5�   *     $��30��5�   -   $��30��5�   -   $��Center=�5   -   
���iii�$ Email=�5  -   �� 5  *   $	��260��5  -   $��8,0,0,0q�5  -   $ Email��5  -   $��18(�5  -   $% Hotel Email - Accept Email Type��5	  -   .��6W   ��5
  .   �� 5  2   $ TwoWay=�5  5   $ Hotel_Email�5  5   $ PropertyChanged=�5  5    5  6   2   ,TourManagementSystem.Global.Ruler.EmailRuler  5  :   !   NameFill$! Hotel Email��6K    . 6b   5  3   .��5  <   5  +   5  '   �� 5  &   $��0,30,0,0q�61   $
 
Horizontal=�6C   .+�5  *     $��30��5  -   $��30��5  -   $��Center=�5  -   
���iii�$ 
Restaurant=�5  -   �� 5   *   $	��260��5!  -   $��10,0,0,0q�5"  -   $
��Left=�5#  -   $ 
Restaurant��5$  -   $��18(�5%  -   
���iii�$ Is Hotel has restaurant?��5'  -   .@�5(  .   �� $	��Yes��6;   �� 5)  .   $��No��6;   " �� 
IsSelected" . 6H   # �� Text# 5*  .   �� 5+  2   $ TwoWay=�5,  5   $ Hotel_Is_Restaurant�5-  5   $ PropertyChanged=�5.  5    5/  6     50  :   $ 0��51  =   $ Hotel Restaurant��52  =    . 53  =   55  3   57  +   58  '   59  #   5:     �� 5<     $��4��5=  !   $��0,10,0,0q�5>  !   
���   �$��12q�5@  !   $	 0.8Q�5A  !   �� 5C     $��5��5D  !   $��20q�5E  !   $	��Top=�5F  !   .+�5H  "   �� $��	35,10,0,0q�5I  %   $��22(�5J  %   
���iii�Description5M  #   �� 5O  "   $	��720��5P  %   $	��100��5Q  %   $��
35,10,20,0q�5R  %   $
��Left=�5S  %   $   
HelperText$$ Detail about the Hotel ?��5T  %   % �� AcceptsReturn% . $��17(�5V  %   
���iii�& �� MinLines$& 8��5X  %    !  MaterialDesignOutlinedTextBox#��[  5Y  %   ' �� TextWrapping$
' Wrap=�5[  %   ��5Z  %   �� *Hotel_Description+$ TwoWay=�5[  %   5\     5]     5^     �� 5`     $��2��5a     ���#F9F9F9$
 
Horizontal=�5c     .+�5e     �� $	��200��5f     $��60��5g     $��360,14,20,12q�5h     $��Confirm��5k     ���#1885F2  ConfirmButton#��[ 5m     ��5i     �� *AddHotelCommand+��5j     �� ( �� ElementName$( contentControlAdd��5m     �� 5o     $	��200��5p     $��60��5q     $��20,14,20,12q�5r     $��Cancel��5u     ���#F36E6B  CancelButton#��[ 5w     ��5s     �� *CancelCommand+��5t     �� $( contentControlAdd��5w     5x     5y     5z     5{     5|     5}     
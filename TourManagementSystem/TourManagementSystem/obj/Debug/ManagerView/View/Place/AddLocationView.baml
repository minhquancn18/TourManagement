   M S B A M L   `   `   `  ����O  KTourManagementSystem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]3clr-namespace:TourManagementSystem.ManagerView.View%TourManagementSystem.ManagerView.View  5      U/clr-namespace:TourManagementSystem.Global.Ruler!TourManagementSystem.Global.Ruler  5	      ;    5TourManagementSystem.ManagerView.View.AddLocationView   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Elocal3clr-namespace:TourManagementSystem.ManagerView.View     5      _ [MaterialDesignThemes.Wpf, Version=4.3.0.3, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5      ;ruler/clr-namespace:TourManagementSystem.Global.Ruler  5	      $
��1190��5
      $	��620��5      ��5      �� 5   
     �� Triggers  5      :� 5       :� RoutedEvent$ UserControl.Loaded��6   .[�5      �� .��5      �� .��5      W�  �� TargetProperty$ Opacity�5   !    W� From$	 0.0X�5   !   	 W� To$	 1.0X�5   !    g� Duration$ 0:0:1D�5   !   5      5      5      5      .��5      �� -   5         ��Name$ contentControlAdd��5      $
��auto��60   .��5   
   �� ���#0f6f68$��3q�5!       �� CornerRadius$ 15��5"      ._�5#      �  � RowDefinitions 5%      �� 5&      $
��auto �6$   �� 5'      $
��auto �6$   �� 5(      $
��auto �6$   �� 5)      $
��auto �6$   �� 5*      $
��auto �6$   .+�5-      �� $��0��5.      $��60��5/      ���#0f6f68$ 	15 15 0 0��51      ._�52      �� $��Center=�53      $��Center=�54      $��24(�55      
�������$(��"A D D    N E W    L O C A T I O N ��57      58      � 5:      $��1��6   $��120,20,120,20q�6$   	 � ColumnDefinitions	 5;      �� 5<      $��* �6+   �� 5=      $��* �6+   .+�5@      �� $��0��5A      $��
20,30,0,30q�5B      
 �� Orientation$
 
Horizontal=�5C      .+�5E      '  !MaterialDesignThemes.Wpf.PackIcon  $��30��5F      $��30��5G      $��Center=�5H      
���iii�   Kind$ PlaceOutline=�5J      �� 5L      $	��360��5M      $��8,0,0,0q�5N      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$
 Name��5O      $��24(�5P       � ToolTip$. (Location Name is the name of famous Site��5Q      .��6P   ��5R      �� 5S   "    �� Mode$ TwoWay=�5T   %    �� Path$ Location_Name�5U   %    �� UpdateSourceTrigger$ PropertyChanged=�5V   %    �� ValidationRules 5W   &   =   7TourManagementSystem.Global.Ruler.MiniMumCharacterRuler  5X   *      MinimumCharacters$ 0��5Y   -      NameFill$ Location Name��5Z   -   ,  &System.Windows.Controls.ValidationRule   ValidatesOnTargetUpdated . 5[   -   5]   #   .��5^   ,   5_      5`      �� 5b      $��1��5c      $��
20,30,0,30q�5d      $
 
Horizontal=�5e      .+�5g        $��30��5h      $��30��5i      $��Center=�5j      
���iii�$ Earth=�5l      �� 5n      $	��360��5o      $��8,0,0,0q�5p         
HelperText$ The place of Location��5q         HelperTextFontSize$ 18Q�5r      $ Place��5s      $��24(�5t      {�.  .��5u   /   ��5v      �� 5w   "   $ TwoWay=�5x   %   $ 
Place_Name�5y   %   $ PropertyChanged=�5z   %    5{   &   5|   #   .��5}   ,   5~      5      5�      �� 5�      $��2��5�      $��120,10,120,10q�5�      $
 
Horizontal=�5�      .+�5�        $��30��5�      $��30��5�      $��Center=�5�      
���iii�$ AddressMarker=�5�      �� 5�      $	��850��5�      $��10,0,0,0q�5�      $ Address��5�      $��18(�5�      $6 0Include Apartment Number, Street Name, Ward Name��5�      .��6T   ��5�      �� 5�      $ TwoWay=�5�   !   $ Location_Address�5�   !   $ PropertyChanged=�5�   !    5�   "     5�   &   $ 0��5�   )   $ Location Address��5�   )    . 5�   )   5�      .��5�   (   5�      5�      �� 5�      $��3��5�      $��120,20,120,20q�5�      $	��Top=�5�      .+�5�      �� $��	35,10,0,0q�5�      $��24(�5�      
���iii�Description5�      �� 5�      $	��850��5�      $	��160��5�      $��
35,10,20,0q�5�      $
��Left=�5�      $! Detail about the location ?��5�      $ 16Q�5�       �� AcceptsReturn . $��18(�5�      
���iii� �� MinLines$ 8��5�       !  MaterialDesignOutlinedTextBox#��[  5�       �� TextWrapping$
 Wrap=�5�      ��5�      �� *Location_Description+$ TwoWay=�5�      5�      �� 5�      $��4��6   $
 
Horizontal=�6*   .+�5�      �� $	��200��5�      $��60��5�      $��340,16,20,12q�5�      $��Confirm��5�      ���#1885F2  ConfirmButton#��[ 5�      ��5�      �� *AddLocationCommand+��5�      ��  �� ElementName$ contentControlAdd��5�      �� 5�      $	��200��5�      $��60��5�      $��20,16,20,12q�5�      $��Cancel��5�      ���#F36E6B  CancelButton#��[ 5�      ��5�      �� *CancelCommand+��5�      �� $ contentControlAdd��5�      5�      5�      5�      5�      5�      
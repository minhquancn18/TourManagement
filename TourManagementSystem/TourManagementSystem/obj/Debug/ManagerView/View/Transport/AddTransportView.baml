   M S B A M L   `   `   `  ����O  KTourManagementSystem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]3clr-namespace:TourManagementSystem.ManagerView.View%TourManagementSystem.ManagerView.View  5      U/clr-namespace:TourManagementSystem.Global.Ruler!TourManagementSystem.Global.Ruler  5	      <    6TourManagementSystem.ManagerView.View.AddTransportView   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Elocal3clr-namespace:TourManagementSystem.ManagerView.View     5      _ [MaterialDesignThemes.Wpf, Version=4.3.0.3, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5      ;ruler/clr-namespace:TourManagementSystem.Global.Ruler  5	      $
��1190��5
      $	��620��5      ��5      �� 5   
     �� Triggers  5      :� 5       :� RoutedEvent$ UserControl.Loaded��6   .[�5      �� .��5      �� .��5      W�  �� TargetProperty$ Opacity�5   !    W� From$	 0.0X�5   !   	 W� To$	 1.0X�5   !    g� Duration$ 0:0:1D�5   !   5      5      5      5      .��5      �� -   5         ��Name$ contentControlAdd��5      $
��auto��60   .��5   
   �� ���#0f6f68$��3q�5!       �� CornerRadius$ 15��5"      ._�5#      � .+�5$      �  � RowDefinitions 5&      �� 5'      $
��auto �6(   �� 5(      $��* �6(   �� 5)      $
��auto �6(   .+�5,      �� $��0��5-      $��60��5.      ���#0f6f68$ 	15 15 0 0��50      ._�51      �� $��Center=�52      $��Center=�53      $��24(�54      
�������$*��$A D D    N E W    T R A N S P O R T ��56      57      �� 59      $��1��6#   .��5:      � $��150,0q�6    5<      �� 5=   "   $
��auto �60   �� 5>   "   $
��auto �60   �� 5?   "   $
��auto �60   �� 5@   "   $
��auto �60   �� 5A   "   $
��auto �60   .+�5D      � $��0��6#   	 � ColumnDefinitions	 5F   "   �� 5G   &   $
��auto �67   �� 5H   &   $��* �67   .+�5K   "   �� $��20,70,20,20q�5L   %   $
��Left=�5M   %   
 �� Orientation$
 
Horizontal=�5N   %   .+�5P   &   '  !MaterialDesignThemes.Wpf.PackIcon  $��30��5Q   )   $��30��5R   )   $��Center=�5S   )   
���iii�   Kind$	 Car=�5U   )   �� 5W   &   $	��460��5X   )   $��8,0,0,0q�5Y   )   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$
 Name��5Z   )   $��18(�5[   )    � ToolTip$ Transport Name��5\   )   .��6B   ��5]   *   �� 5^   .    �� Mode$ TwoWay=�5_   1    �� Path$ Transport_Name�5`   1    �� UpdateSourceTrigger$ PropertyChanged=�5a   1    �� ValidationRules 5b   2   =   7TourManagementSystem.Global.Ruler.MiniMumCharacterRuler  5c   6      MaximumCharacters$ 50��5d   9      MinimumCharacters$ 0��5e   9      NameFill$ Transport Name��5f   9   ,  &System.Windows.Controls.ValidationRule   ValidatesOnTargetUpdated . 5g   9   5i   /   .��5j   8   5k   '   5l   #   �� 5n   "   $��1��5o   %   $��20,70,30,20q�5p   %   $��Right=�5q   %   $
 
Horizontal=�5r   %   .+�5t   &     $��30��5u   )   $��30��5v   )   $��Center=�5w   )   
���iii�$ FormatListBulletedType=�5y   )   �� 5z   &   $	��260��5{   )   $��10,0,0,0q�5|   )   $
��Left=�5}   )   $ Status��5~   )   $��18(�5   )   
���iii�$ Transport Status��5�   )   .@�5�   *   �� $��National��67   �� 5�   *   $��International��67    �� Text 5�   *   �� 5�   .   $ TwoWay=�5�   1   $ Transport_Type�5�   1   $ PropertyChanged=�5�   1    5�   2     5�   6   $ 0��5�   9   $ Transport Status��5�   9    . 5�   9   5�   /   5�   '   5�   #   5�      �� 5�      $��1��5�   !   $��0,10,0,0q�5�   !   
���   �$��12q�5�   !    J� Opacity$	 0.8Q�5�   !   � 5�      $��2��6#   .+�5�   "   �� $��20q�5�   %   $
��Left=�5�   %   $
 Vertical=�5�   %   .+�5�   &   �� $��0,0,0,0q�5�   )   $
��Left=�5�   )   $
 
Horizontal=�5�   )   .+�5�   *     $��30��5�   -   $��30��5�   -   $��Center=�5�   -   
���iii�$ Class=�5�   -   �� 5�   *   $	��260��5�   -   $��10,0,0,0q�5�   -   $
��Left=�5�   -   $ Type Transport��5�   -   $��18(�5�   -   
���iii�$ Transport Type��5�   -   .@�5�   .   �� $��Road Transport��6;   �� 5�   .   $��Water Transport��6;   �� 5�   .   $��Air Transport��6;    5�   .   �� 5�   2   $ TwoWay=�5�   5   $ Transport_TypeTrans�5�   5   $ PropertyChanged=�5�   5    5�   6     5�   :   $ 0��5�   =   $ Transport Type��5�   =    . 5�   =   5�   3   5�   +   5�   '   �� 5�   &   $��0,30,0,0q�5�   )   $
��Left=�5�   )   $
 
Horizontal=�5�   )   .+�5�   *     $��30��5�   -   $��30��5�   -   $��Center=�5�   -   
���iii�$ Numeric=�5�   -   �� 5�   *   $	��270��5�   -   $��10,0,0,0q�5�   -   $$ Amount Max (Except Plane/Ship)��5�   -   $��18(�5�   -   $ All Amount Land Transport��5�   -   {�5�   -   �� *Transport_TypeTrans_Choose+.��5�   Q   ��5�   .   �� 5�   2   $ TwoWay=�5�   5   $ Transport_Amount_Max�5�   5   $ PropertyChanged=�5�   5    5�   6   <   6TourManagementSystem.Global.Ruler.NumberTransportRuler  5�   :      NameFill$ Transport Amount Max��6U    . 6u   5�   3   .��5�   <   5�   +   5�   '   5�   #   �� 5�   "   $��20,20,30,20q�5�   %   $��Right=�5�   %   $
 Vertical=�5�   %   .+�5�   &   �� $��0,0,0,0q�5�   )   $
��Left=�5�   )   $
 
Horizontal=�5�   )   .+�5�   *     $��30��5�   -   $��30��5�   -   $��Center=�5�   -   
���iii�$ Money=�5�   -   �� 5�   *   $	��260��5�   -   $��8,0,0,0q�5�   -   $ Price��5�   -   $��18(�5   -   $" Transport Price (per ticket)��5  -   .��6T   ��5  .   �� 5  2   $ TwoWay=�5  5   $ Transport_Price�5  5   $ PropertyChanged=�5  5    5  6   2   ,TourManagementSystem.Global.Ruler.MoneyRuler  5  :      NameFill$ Transport Price��6K    . 6f   5
  3   .��5  <   5  +   5  '   �� 5  &   $��0,30,0,0q�5  )   $
��Left=�5  )   $
 
Horizontal=�5  )   .+�5  *     $��30��5  -   $��30��5  -   $��Center=�5  -   
���iii�$ HomeOutline=�5  -   �� 5  *   $	��260��5  -   $��8,0,0,0q�5  -   $ Company��5  -   $��18(�5  -   $ Transport Company��5   -   .��6I   ��5!  .   �� 5"  2   $ TwoWay=�5#  5   $ Transport_Company�5$  5   $ PropertyChanged=�5%  5    5&  6     5'  :   $ 0��5(  =   $ Transport Company��5)  =    . 5*  =   5,  3   .��5-  <   5.  +   5/  '   50  #   51     �� 53     $��3��54  !   $��0,10,0,0q�55  !   
���   �$��12q�57  !   $	 0.8Q�58  !   �� 5:     $��4��5;  !   $��
20,10,20,0q�5<  !   $	��Top=�5=  !   .+�5?  "   �� $��	35,10,0,0q�5@  %   $��22(�5A  %   
���iii�Description5D  #   �� 5F  "   $	��720��5G  %   $	��100��5H  %   $��35,10,20,20q�5I  %   $
��Left=�5J  %      
HelperText$" Detail about the transport ?��5K  %    �� AcceptsReturn . $��17(�5M  %   
���iii� �� MinLines$ 8��5O  %    !  MaterialDesignOutlinedTextBox#��[  5P  %    �� TextWrapping$
 Wrap=�5R  %   ��5Q  %   �� *Transport_Description+$ TwoWay=�5R  %   5S     5T     5U     �� 5W     $��2��5X     ���#F9F9F9$
 
Horizontal=�5Z     .+�5\     �� $	��200��5]     $��60��5^     $��360,10,20,12q�5_     $��Confirm��5b     ���#1885F2  ConfirmButton#��[ 5d     ��5`     �� *AddTransportCommand+��5a     ��  �� ElementName$ contentControlAdd��5d     �� 5f     $	��200��5g     $��60��5h     $��20,10,20,12q�5i     $��Cancel��5l     ���#F36E6B  CancelButton#��[ 5n     ��5j     �� *CancelCommand+��5k     �� $ contentControlAdd��5n     5o     5p     5q     5r     5s     5t     
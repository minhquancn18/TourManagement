   M S B A M L   `   `   `  ����O  KTourManagementSystem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]3clr-namespace:TourManagementSystem.ManagerView.View%TourManagementSystem.ManagerView.View  5      5    /TourManagementSystem.ManagerView.View.PlaceView   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      U QWpfAnimatedGif, Version=2.0.0.0, Culture=neutral, PublicKeyToken=9e7cd3b544a090dc,gif"http://wpfanimatedgif.codeplex.com  5      ?local3clr-namespace:TourManagementSystem.ManagerView.View  5      _ [MaterialDesignThemes.Wpf, Version=4.3.0.3, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5	      $
��1190��5
      $	��620��5      ��5      �� 5   
     �� Triggers  5      :� 5       :� RoutedEvent$ UserControl.Loaded��6   .[�5      �� .��5      �� .��5      W�  �� TargetProperty$ Opacity�5   !    W� From$	 0.0X�5   !   	 W� To$	 1.0X�5   !    g� Duration$ 0:0:1D�5   !   5      5      5      5       � 	Resources 5         WrapText �� 
TargetType �� Property	 �� Value & "MaterialDesignDataGridColumnHeader
 �� BasedOn=  7System.Windows.Controls.Primitives.DataGridColumnHeader  MaterialDesignDataGridCell*  $System.Windows.Controls.DataGridCell P� Property P� Value��%�  &	        '  J     7  '  �     7  �� 5    
   " ��6!   .�5!      ��  � ��$
	 Wrap=�6-   5"      �� 5#   
   8
   "  6N   .�5$      ��  � ��$		 0.5q�60   �� 5%       � ��	 �#D6D6D66,   �� 5&       � ��	 �#FFFFFF6+   5'      �� 5(   
   8
   "  6F   .�5)      ��  � ��$	 0q�60   �� 5*       � ��	 �#d6d6d66,     5+      P� 5,       �@J�IsMouseOver . . �5-      ��  � ��	 �#FDF8EA63   5.      50      51      .��52      �� -   5         ��Name$ contentControlMain��52      .��54   
   �� ���#0f6f68$��3q�56       �� CornerRadius$ 15��57      ._�58      � .+�5:      ��  K� ZIndex$
 1000��5;      $	��0.5q�5<      $ 25��5=      ._�5>      � y�6   �� *ProgressBarVisbility+��5@      �� 5A       �� Opacity$ .3Q�6.    �� Color$ Black��6;   .+�5C      �� $��0,120,0,120q�5D      $��Center=�5E       �� Orientation$ 
Horizontal=�5F      .+�5G      � $��80��5H   !   $��80��5I   !   
������� � IsIndeterminate .  % !MaterialDesignCircularProgressBar#��[ 5L   !    � Value$ 35Q�5M   !   �� 5N      $
��16,0q�5O   !   $��Center=�5P   !   $��24(�5Q   !   
�������$��
Loading...��5S   !   5T      5U      5V      � 5X      $��0,0,0,0q�6    � RowDefinitions 5Y      �� 5Z      $
��auto �6(   �� 5[      $
��auto �6(   �� 5\      $
��auto �6(   .+�5_      �� $��0��5`      $��60��5a      ���#0f6f68$ 	15 15 0 0��5c      ._�5d      �� $��Center=�5e      $��Center=�5f      $��24(�5g      
�������$��P L A C E    L I S T ��5i      5j      �� 5l      $��2��6   $	 500��6*   ._�5m      � y�6   �� *WaitingVisbility+��5o      �� 5p   "   $ 1Q�62   $ White��6>   .+�5r      �� $��0,60,0,0q�5s   !   $��Center=�5t   !   $ Vertical=�5u   !   .+�5v   "   �� $	��600��5w   %   $	��300��5x   %   "  WpfAnimatedGif.ImageBehavior   AnimatedSource$9 3pack://application:,,,/Resources/Images/waiting.gif��5y   %      	AutoStart . 5z   %   �� 5{   "   $��16,16q�5|   %   $��Center=�5}   %   $��Center=�5~   %   $��Roboto)�5   %   $��32(�5�   %   $��Italic$�5�   %   $��DemiBold"�5�   %   
���   �$$��Please update for more places.��5�   %   5�      5�      5�      � 5�      $��1��6    � ColumnDefinitions 5�      �� 5�      $
��auto �6/   �� 5�      $
��auto �6/   �� 5�      $
��auto �6/   .+�5�      �� $��0��5�      $	��400��5�      $��50��5�      $��5,5,40,5q�5�      ���#FAFAFA
�������$��1q�5�      $ 10��5�      ._�5�      �� $��10,0,0,0q�6)   $ 
Horizontal=�6;   .+�5�   "   '  !MaterialDesignThemes.Wpf.PackIcon  $��25��5�   %   $��30��5�   %   $��0,0,0,0q�5�   %   $��Center=�5�   %   
���iii�   Kind$ Search=�5�   %   �� 5�   "   $	��300��5�   %   $��40��5�   %   $��10,2,0,0q�5�   %   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Search��5�   %   .  (MaterialDesignThemes.Wpf.TextFieldAssist   DecorationVisibility$ Hidden=�5�   %   
������ $��18(�5�   %     MaterialDesignTextBoxBase#��[ 5�   %   .��6X   ��5�   &   �� 5�   *    �� Path$ 
FilterText�62    �� UpdateSourceTrigger$ PropertyChanged=�6D    �� ValidationRules 5�   .   5�   +   .��5�   4   5�   #   5�      5�      �� 5�      $��1��6%   $ 
Horizontal=�65   .+�5�      �� $	��160��5�   !   $��34��5�   !   $��10,10,80,10q�5�   !    �� DisplayMemberPath$ CB_Name��5�   !   $��18(�5�   !   
���iii���5�   !   �� *CB_PlaceList+  �� Mode$  TwoWay=�! �� SelectedValue! 5�   !   �� *CB_PlaceSelected+��5�   "   �� 5�   &   " ��6,   .�5�   *   ��  �@��
IsSelected	 6G   �� *
IsSelected+5�   '   5�      5�      �� 5�      $��2��5�      $	��200��5�      $��50��5�      $��
250,5,20,5q�5�      $��Right=�5�      $��Add New Place��5�      ���#0f6f68  	AddButton#��[ 5�      ��5�      �� *AddPlaceCommand+��5�      �� " �� ElementName$" contentControlMain��y�5�      �� *IsVisibility+5�      &   System.Windows.Controls.DataGrid  5�      $��2��5�      $
��1170��5�      $	��480��5�      $	��Top=�5�      -  'MaterialDesignThemes.Wpf.DataGridAssist#   CellPadding$# 12 8 0 8q�5�      $   ColumnHeaderPadding$$ 20 8 0 8q�5�      % J� 	AllowDrop% . &   AutoGenerateColumns& .  '   CanUserAddRows' .  (   CanUserDeleteRows( .  )   CanUserReorderColumns) .  *   CanUserSortColumns* . $��15(�5�      +   GridLinesVisibility$+ Vertical=�5�      ,   
IsReadOnly, . -   SelectionMode$- Single=�5�      ��5�      �� *
PlaceItems+. �� SelectedItem. 5�      �� *PlaceSelected+/ J� InputBindings/ 5�      d� 5�      0 d� Gesture$0 LeftDoubleClicka�5�   !   1 �� Command1 5�   !   �� *ShowDetailPlaceCommand+2 �� CommandParameter2 5�   !   �� $" contentControlMain��5�   !   3   Columns3 5�      0	  *System.Windows.Controls.DataGridTextColumn	  5�      ,
  &System.Windows.Controls.DataGridColumn4 
  Width5  /System.Windows.Controls.DataGridLengthConverter$
4 0.1* 5�   !   1  +System.Windows.Controls.DataGridBoundColumn5   ElementStyle#5 [  5�   !   6 	  
Foreground
6 �OO/�7 
  Header$7 ID��5�   !   8   Binding8 5�   !   �� *
PLACE_ID+5�   !   	  5�      $
4 0.3* 5�   !   #5 [  5�   !   
6 �OO/�$
7 Name��5�   !   8 5�   !   �� *
PLACE_NAME+5�   !   	  5�      $4 0.25* 5�   !   #5 [  5�   !   
6 �OO/�$7 Nation��5�   !   8 5�   !   �� *PLACE_NATION+5�   !   	  5      $4 0.25* 5  !   #5 [  5  !   
6 �OO/�$7 Number Of Location��5  !   8 5  !   �� *PLACE_LOCATION+5  !   5     5     5	     5
     5     5     
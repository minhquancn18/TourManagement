   M S B A M L   `   `   `  ����O  KTourManagementSystem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]3clr-namespace:TourManagementSystem.ManagerView.View%TourManagementSystem.ManagerView.View  5      8    2TourManagementSystem.ManagerView.View.RegisterView   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      U QWpfAnimatedGif, Version=2.0.0.0, Culture=neutral, PublicKeyToken=9e7cd3b544a090dc,gif"http://wpfanimatedgif.codeplex.com  5      ?local3clr-namespace:TourManagementSystem.ManagerView.View  5      _ [MaterialDesignThemes.Wpf, Version=4.3.0.3, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5	      $
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
   "  6F   .�5)      ��  � ��$	 0q�60   �� 5*       � ��	 �#d6d6d66,     5+      P� 5,       �@J�IsMouseOver . . �5-      ��  � ��	 �#FDF8EA63   5.      50      51      .��53      �� -   5         ��Name$ contentControlMain��53      .��55   
   �� ���#0f6f68$��3q�57       �� CornerRadius$ 15��58      ._�5:      � .+�5<      ��  K� ZIndex$
 1000��5=      $	��0.5q�5>      $ 25��5?      ._�5@      � y�6   �� *ProgressBarVisbility+��5B      �� 5C       �� Opacity$ .3Q�6.    �� Color$ Black��6;   .+�5E      �� $��0,120,0,120q�5F      $��Center=�5G       �� Orientation$ 
Horizontal=�5H      .+�5I      � $��80��5J   !   $��80��5K   !   
������� � IsIndeterminate .  % !MaterialDesignCircularProgressBar#��[ 5N   !    � Value$ 35Q�5O   !   �� 5P      $
��16,0q�5Q   !   $��Center=�5R   !   $��24(�5S   !   
�������$��
Loading...��5U   !   5V      5W      5X      � 5Z      $��0,0,0,0q�6    � RowDefinitions 5[      �� 5\      $
��auto �6(   �� 5]      $
��auto �6(   �� 5^      $
��auto �6(   .+�5a      �� $��0��5b      $��60��5c      ���#0f6f68$ 	15 15 0 0��5e      ._�5f      �� $��Center=�5g      $��Center=�5h      $��24(�5i      
�������$!��R E G I S T E R    L I S T ��5k      5l      �� 5n      $��1��5o      $��2��5p      $	 500��5q      ._�5r      � y�6   �� *WaitingVisbility+��5t      �� 5u   "   $ 1Q�62   $ White��6>   .+�5w      �� $��0,60,0,0q�5x   !   $��Center=�5y   !   $ Vertical=�5z   !   .+�5{   "   �� $	��600��5|   %   $	��400��5}   %   "  WpfAnimatedGif.ImageBehavior   AnimatedSource$9 3pack://application:,,,/Resources/Images/waiting.gif��5~   %      	AutoStart . 5   %   �� 5�   "   $��16,16q�5�   %   $��Center=�5�   %   $��Center=�5�   %   $��Roboto)�5�   %   $��32(�5�   %   $��Italic$�5�   %   $��DemiBold"�5�   %   
���   �$ ��There is no register here.��5�   %   5�      5�      5�      � 5�      $��1��6    � ColumnDefinitions 5�      �� 5�      $
��auto �6/   �� 5�      $
��auto �6/   �� 5�      $
��auto �6/   �� 5�      $
��auto �6/   �� 5�      $
��415* �6/   �� 5�      $
��199* �6/   .+�5�      �� $��0��5�      $��	15,5,19,5q�5�      ���#FAFAFA
�������$��1q�5�      $ 10��5�      ._�5�      �� $��10,0,0,0q�6)   $ 
Horizontal=�6;   .+�5�   "   '  !MaterialDesignThemes.Wpf.PackIcon  $��25��5�   %   $��30��5�   %   $��0,0,0,0q�5�   %   $��Center=�5�   %   
���iii�   Kind$ Search=�5�   %   �� 5�   "   $	��300��5�   %   $��40��5�   %   $��10,2,0,0q�5�   %   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Search��5�   %   .  (MaterialDesignThemes.Wpf.TextFieldAssist   DecorationVisibility$ Hidden=�5�   %   
������ $��18(�5�   %     MaterialDesignTextBoxBase#��[ 5�   %   .��6X   ��5�   &   �� 5�   *    �� Path$ 
FilterText�62    �� UpdateSourceTrigger$ PropertyChanged=�6D    �� ValidationRules 5�   .   5�   +   .��5�   4   5�   #   5�      5�      �� 5�      $��1��5�      $��1,0,25,0q�5�      $ 
Horizontal=�5�      .+�5�      �� -   5        $��cbSearch��5�   !   $	��140��5�   !   $��30��5�   !   $��10q�5�   !    �� DisplayMemberPath$ CB_Name��5�   !   $��18(�5�   !   
���iii���5�   !   �� *CB_RegisterList+  �� Mode$  TwoWay=�! �� SelectedValue! 5�   !   �� *CB_RegisterSelected+��5�   "   �� 5�   &   " ��6,   .�5�   *   ��  �@��
IsSelected	 6G   �� *
IsSelected+5�   '   5�      5�      �� 5�      $��2��5�      $	��200��5�      $��50��5�      $��370,10,0,9.6q�5�      $��Right=�5�      $��Delete��5�      ���#EB7B47  StatisticButton#��[ 5�      ��5�      �� *DeleteRegisterCommand+5�      5�      &   System.Windows.Controls.DataGrid  5�      $��2��5�      $
��1150��5�      $	��470��5�      $	��Top=�5�      -  'MaterialDesignThemes.Wpf.DataGridAssist"   CellPadding$" 12 8 0 8q�5�      #   ColumnHeaderPadding$# 20 8 0 8q�5�      $ J� 	AllowDrop$ . %   AutoGenerateColumns% .  &   CanUserAddRows& .  '   CanUserDeleteRows' .  (   CanUserReorderColumns( .  )   CanUserSortColumns) . $��15(�5�      *   GridLinesVisibility$* Vertical=�5�      +   
IsReadOnly+ . ,   SelectionMode$, Single=�5�      "-   VerticalScrollBarVisibility$- Visible=�5�      ��5�      �� *RegisterItems+. �� SelectedItem. 5�      �� *RegisterSelected+/   Columns/ 5�      0	  *System.Windows.Controls.DataGridTextColumn	  5�      ,
  &System.Windows.Controls.DataGridColumn0 
  Width5  /System.Windows.Controls.DataGridLengthConverter$
0 0.1* 5�   !   1  +System.Windows.Controls.DataGridBoundColumn1   ElementStyle#1 [  5�   !   2 
  Header$2 ID��5�   !   3   Binding3 5�   !   �� *Register_ID+5�   !   	  5�      $
0 0.1* 5�   !   #1 [  5�   !   $2 Tour ID��5�   !   3 5�   !   �� *	Tour_ID+5�   !   	  5�      $0 0.25* 5�   !   #1 [  5�   !   $
2 Name��5�   !   3 5�   !   �� *Register_Name+5�   !   	  5�      $0 0.15* 5   !   #1 [  5  !   $2 Email��5  !   3 5  !   �� *Register_Email+5  !   	  5     $0 0.15* 5  !   #1 [  5  !   $2 Address��5  !   3 5  !   �� *Register_Address+5  !   	  5	     $0 0.18* 5
  !   #1 [  5  !   $2 Phone Number��5  !   3 5  !   �� *Register_PhoneNumber+5  !   	  5     $
0 0.5* 5  !   #1 [  5  !   $2 Detail��5  !   3 5  !   �� *Register_Detail+5  !   5     5     5     5     5     5     
   M S B A M L   `   `   `  ����O  KTourManagementSystem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]3clr-namespace:TourManagementSystem.ManagerView.View%TourManagementSystem.ManagerView.View  5      =    7TourManagementSystem.ManagerView.View.StatisticTourView   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Elocal3clr-namespace:TourManagementSystem.ManagerView.View     5      _ [MaterialDesignThemes.Wpf, Version=4.3.0.3, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5      $
��1190��5	      $	��620��5
      ��5      �� 5   
     �� Triggers  5      :� 5       :� RoutedEvent$ UserControl.Loaded��6   .[�5      �� .��5      �� .��5      W�  �� TargetProperty$ Opacity�5   !    W� From$	 0.0X�5   !   	 W� To$	 1.0X�5   !    g� Duration$ 0:0:0.5D�5   !   5      5      5      5       � 	Resources 5         WrapText �� 
TargetType �� Property	 �� Value & "MaterialDesignDataGridColumnHeader
 �� BasedOn=  7System.Windows.Controls.Primitives.DataGridColumnHeader  MaterialDesignDataGridCell*  $System.Windows.Controls.DataGridCell P� Property P� Value��%�  &	        '  J     7  '  �     7  �� 5   
   " ��6!   .�5      ��  � ��$
	 Wrap=�6-   5       �� 5!   
   8
   "  6N   .�5"      ��  � ��$		 0.5q�60   �� 5#       � ��	 �#D6D6D66,   �� 5$       � ��	 �#FFFFFF6+   5%      �� 5&   
   8
   "  6F   .�5'      ��  � ��$	 0q�60   �� 5(       � ��	 �#d6d6d66,     5)      P� 5*       �@J�IsMouseOver . . �5+      ��  � ��	 �#FDF8EA63   5,      5.      5/      .��50      �� -   5         ��Name$ contentControlStatistic��50      .��51   
   �� ���#0f6f68$��3q�53       �� CornerRadius$ 15��54      ._�55      � .+�57      ��  K� ZIndex$
 1000��58      $	��0.5q�59      $ 25��5:      ._�5;      � y�6   �� *ProgressBarVisbility+��5=      �� 5>       �� Opacity$ .3Q�6.    �� Color$ Black��6;   .+�5@      �� $��0,120,0,120q�5A      $��Center=�5B       �� Orientation$ 
Horizontal=�5C      .+�5D      � $��80��5E   !   $��80��5F   !   
������� � IsIndeterminate .  % !MaterialDesignCircularProgressBar#��[ 5I   !    � Value$ 35Q�5J   !   �� 5K      $
��16,0q�5L   !   $��Center=�5M   !   $��24(�5N   !   
�������$��
Loading...��5P   !   5Q      5R      5S      � 5U       � RowDefinitions 5V      �� 5W      $
��auto �6(   �� 5X      $��* �6(   .+�5[      �� $��0��5\      $��60��5]      ���#0f6f68$ 	15 15 0 0��5_      ._�5`      � .+�5a      �� $��60��5b   !   $��60��5c   !   $
��20,0q�5d   !   $
��Left=�5e   !   $	��Top=�5f   !   
������   
BackButton#��[ 5j   !   ��5h   !   �� *CancelCommand+��5i   !   ��  �� ElementName$ contentControlStatistic��5j   !   �� 5l      $��Center=�5m   !   $��Center=�5n   !   $��24(�5o   !   
�������$4��.D I S P L A Y    S T A T I S T I C    T O U R ��5q   !   5r      5s      � 5u      $��1��6    5w      �� 5x      $
��auto �6,   �� 5y      $��* �6,   �� 5z      $
��auto �6,   .+�5}      �� $��0��5~      $
��0,20q�5      $��Center=�5�      $ 
Horizontal=�5�      .+�5�      �� $��
24,12,0,15q�5�   !   $��Stretch=�5�   !   $��Stretch=�5�   !   -  'MaterialDesignThemes.Wpf.CheckBoxAssist   CheckBoxSize$ 24Q�5�   !   ���	#FFEB5215
���   �$��20(�5�   !   
���   �  MaterialDesignCheckBox#��[ 5�   !    d� 	IsChecked 5�   !   �� *Checkbox_DisplayAll+5�   !   �� 5�      $	��8,0q�5�   !   $��Center=�5�   !   $��20(�5�   !   $��
Select All��5�   !   (  "System.Windows.Controls.DatePicker  5�      $	��200��5�   !   $��40,10,10,10q�5�   !   $��Center=�5�   !   $��Center=�5�   !   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ 
Start Date��5�   !   $��18(�5�   !      DisplayDateEnd 5�   !   �� *DateTimeNow+{�5�   !   �� *
IsEnable+   SelectedDate 5�   "   �� 5�   &    �� Mode$ TwoWay=�5�   )    �� Path$ 	StartDate�5�   )    �� StringFormat$ {0: dd/MM/yyyy}��5�   )    �� UpdateSourceTrigger$ PropertyChanged=�5�   )   5�        5�      $	��200��5�   !   $��40,10,10,10q�5�   !   $��Center=�5�   !   $��Center=�5�   !   $ 
Start Date��5�   !   $��18(�5�   !       DisplayDateStart  5�   !   �� *	StartDate+{�5�   !   �� *
IsEnable+ 5�   "   �� 5�   &   $ TwoWay=�5�   )   $ EndDate�5�   )   $ {0: dd/MM/yyyy}��5�   )   $ PropertyChanged=�5�   )   5�      �� 5�      $	��200��5�   !   $��60��5�   !   $��60,10,20,10q�5�   !   $��Filter��5�   !   ���#1885F2  	AddButton#��[ 5�   !   ��5�   !   �� *FilterCommand+5�   !   5�      &   System.Windows.Controls.DataGrid  5�      -   5        !  Name$! StatisticDatagrid��5�      $��1��5�      $
��1100��5�      $	��400��5�      $��Center=�5�      $	��Top=�5�      $��Center=�5�      -  'MaterialDesignThemes.Wpf.DataGridAssist"   CellPadding$" 12 8 0 8q�5�      #   ColumnHeaderPadding$# 20 8 0 8q�5�      $ J� 	AllowDrop$ . %   AutoGenerateColumns% .  &   CanUserAddRows& .  '   CanUserDeleteRows' .  (   CanUserReorderColumns( .  )   CanUserSortColumns) . *   GridLinesVisibility$* Vertical=�5�      +   
IsReadOnly+ . ,   SelectionMode$, Single=�5�      "-   VerticalScrollBarVisibility$
- Auto=�5�      ��5�      �� *	TourItems+.   Columns. 5�      0  *System.Windows.Controls.DataGridTextColumn  5�   "   ,	  &System.Windows.Controls.DataGridColumn/ 	  Width5
  /System.Windows.Controls.DataGridLengthConverter$
/ 0.1*
 5�   %   0 	  Header$0 ID��5�   %   1  +System.Windows.Controls.DataGridBoundColumn1   Binding1 5�   %   �� *	Tour_ID+5�   %     5�   "   $
/ 0.2*
 5�   %   $
0 Name��5�   %   1 5�   %   �� *	Tour_Name+5�   %     5�   "   $/ 0.15*
 5�   %   $0 Number Of Travel Group��5�   %   1 5�   %   �� *Tour_NumberVisitGroup+5�   %     5�   "   $/ 0.15*
 5�   %   $0 Number Of Traveller��5�   %   1 5�   %   �� *Tour_NumberVisitTraveller+5�   %     5�   "   $/ 0.15*
 5�   %   $0 
Total Cost��5�   %   1 5�   %   �� *Tour_TotalCost+5�   %   5�      �� 5�      $��2��5�      $��	0,10,40,0q�5�      $��Right=�5�      $ 
Horizontal=�5�      .+�5�      �� $	��140��5�   !   $��10q�5�   !   $��Right=�5�   !   $��Center=�5�   !   $��18(�5�   !   
���iii�2 �� Text2 5�   !   �� *SelectedExport+$ TwoWay=�$ PropertyChanged=�.@�5�   "   �� $��Excel��6/   3 �� 
IsSelected3 . 6?   �� 5�   "   $	��PDF��6/   3 .  6=   5�      �� 5�      $	��200��5�   !   $��60��5   !   $��
30,0,20,10q�5  !   $��Export��5  !   ���#1885F2  ConfirmButton#��[ 5  !   ��5  !   �� *ExportCommand+��5  !   �� $ StatisticDatagrid��5  !   5     5     5	     5
     5     5     5     
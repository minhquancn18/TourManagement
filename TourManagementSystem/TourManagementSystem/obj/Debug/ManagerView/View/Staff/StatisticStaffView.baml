   M S B A M L   `   `   `  ����O  KTourManagementSystem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]3clr-namespace:TourManagementSystem.ManagerView.View%TourManagementSystem.ManagerView.View  5      >    8TourManagementSystem.ManagerView.View.StatisticStaffView   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Elocal3clr-namespace:TourManagementSystem.ManagerView.View     5      _ [MaterialDesignThemes.Wpf, Version=4.3.0.3, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5      $
��1190��5	      $	��620��5
      ��5      �� 5   
     �� Triggers  5      :� 5       :� RoutedEvent$ UserControl.Loaded��6   .[�5      �� .��5      �� .��5      W�  �� TargetProperty$ Opacity�5   !    W� From$	 0.0X�5   !   	 W� To$	 1.0X�5   !    g� Duration$ 0:0:1D�5   !   5      5      5      5       � 	Resources 5         WrapText �� 
TargetType �� Property	 �� Value & "MaterialDesignDataGridColumnHeader
 �� BasedOn=  7System.Windows.Controls.Primitives.DataGridColumnHeader  MaterialDesignDataGridCell*  $System.Windows.Controls.DataGridCell P� Property P� Value��%�  &	        '  J     7  '  �     7  �� 5   
   " ��6!   .�5      ��  � ��$
	 Wrap=�6-   5       �� 5!   
   8
   "  6N   .�5"      ��  � ��$		 0.5q�60   �� 5#       � ��	 �#D6D6D66,   �� 5$       � ��	 �#FFFFFF6+   5%      �� 5&   
   8
   "  6F   .�5'      ��  � ��$	 0q�60   �� 5(       � ��	 �#d6d6d66,     5)      P� 5*       �@J�IsMouseOver . . �5+      ��  � ��	 �#FDF8EA63   5,      5.      5/      .��50      �� -   5         ��Name$ contentControlStatistic��50      .��52   
   �� ���#0f6f68$��3q�54       �� CornerRadius$ 15��55      ._�56      � .+�58      ��  K� ZIndex$
 1000��59      $	��0.5q�5:      $ 25��5;      ._�5<      � y�6   �� *ProgressBarVisbility+��5>      �� 5?       �� Opacity$ .3Q�6.    �� Color$ Black��6;   .+�5A      �� $��0,120,0,120q�5B      $��Center=�5C       �� Orientation$ 
Horizontal=�5D      .+�5E      � $��80��5F   !   $��80��5G   !   
������� � IsIndeterminate .  % !MaterialDesignCircularProgressBar#��[ 5J   !    � Value$ 35Q�5K   !   �� 5L      $
��16,0q�5M   !   $��Center=�5N   !   $��24(�5O   !   
�������$��
Loading...��5Q   !   5R      5S      5T      � 5V       � RowDefinitions 5W      �� 5X      $
��auto �6(   �� 5Y      $
��auto �6(   �� 5Z      $
��auto �6(   �� 5[      $��* �6(   �� 5\      $
��auto �6(   .+�5_      �� $��0��5`      $��60��5a      ���#0f6f68$ 	15 15 0 0��5c      ._�5d      � .+�5f      �� $��60��5g   !   $��60��5h   !   $
��20,0q�5i   !   $
��Left=�5j   !   $	��Top=�5k   !   
������   
BackButton#��[ 5o   !   ��5m   !   �� *CancelCommand+��5n   !   ��  �� ElementName$ contentControlStatistic��5o   !   �� 5q      $��Center=�5r   !   $��Center=�5s   !   $��24(�5t   !   
�������$6��0D I S P L A Y    S T A T I S T I C    S T A F F ��5v   !   5w      5x      �� 5z      $��1��5{      $
��0,20q�5|      $��Center=�5}      $ 
Horizontal=�5~      .+�5�      �� $��
24,12,0,15q�5�      $��Stretch=�5�      $��Stretch=�5�      -  'MaterialDesignThemes.Wpf.CheckBoxAssist   CheckBoxSize$ 24Q�5�      ���	#FFEB5215
���   �$��20(�5�      
���   �  MaterialDesignCheckBox#��[ 5�       d� 	IsChecked 5�      �� *Checkbox_DisplayAll+5�      �� 5�      $	��8,0q�5�      $��Center=�5�      $��20(�5�      $��
Select All��5�      (  "System.Windows.Controls.DatePicker  5�      $	��200��5�      $��40,10,10,10q�5�      $��Center=�5�      $��Center=�5�      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ 
Start Date��5�      $��18(�5�         DisplayDateEnd 5�      �� *DateTimeNow+{�5�      �� *
IsEnable+   SelectedDate 5�      �� 5�   "    �� Mode$ TwoWay=�5�   %    �� Path$ 	StartDate�5�   %    �� StringFormat$ {0: dd/MM/yyyy}��5�   %    �� UpdateSourceTrigger$ PropertyChanged=�5�   %   5�        5�      $	��200��5�      $��40,10,10,10q�5�      $��Center=�5�      $��Center=�5�      $ 
Start Date��5�      $��18(�5�          DisplayDateStart  5�      �� *	StartDate+{�5�      �� *
IsEnable+ 5�      �� 5�   "   $ TwoWay=�5�   %   $ EndDate�5�   %   $ {0: dd/MM/yyyy}��5�   %   $ PropertyChanged=�5�   %   5�      �� 5�      $	��200��5�      $��50��5�      $��60,10,20,10q�5�      $��Filter��5�      ���#1885F2  	AddButton#��[ 5�      ��5�      �� *FilterCommand+5�      5�      �� 5�      $��2��5�      $��10��5�      $
��0,10q�5�      
���   �$��10q�5�      &   System.Windows.Controls.DataGrid  5�      -   5        !  Name$! StatisticDatagrid��5�      $��3��5�      $	��600��5�      $	��360��5�      $��Center=�5�      $	��Top=�5�      $��Center=�5�      -  'MaterialDesignThemes.Wpf.DataGridAssist"   CellPadding$" 12 8 0 8q�5�      #   ColumnHeaderPadding$# 20 8 0 8q�5�      $ J� 	AllowDrop$ . %   AutoGenerateColumns% .  &   CanUserAddRows& .  '   CanUserDeleteRows' .  (   CanUserReorderColumns( .  )   CanUserSortColumns) . *   GridLinesVisibility$* Vertical=�5�      +   
IsReadOnly+ . ,   SelectionMode$, Single=�5�      "-   VerticalScrollBarVisibility$
- Auto=�5�      ��5�      �� *
StaffItems+.   Columns. 5�      0  *System.Windows.Controls.DataGridTextColumn  5�      ,	  &System.Windows.Controls.DataGridColumn/ 	  Width5
  /System.Windows.Controls.DataGridLengthConverter$/ 0.05*
 5�   !   0 	  Header$0 ID��5�   !   1  +System.Windows.Controls.DataGridBoundColumn1   Binding1 5�   !   �� *
Staff_ID+5�   !     5�      $/ 0.175*
 5�   !   $
0 Name��5�   !   1 5�   !   �� *
Staff_Name+5�   !     5�      $
/ 0.1*
 5�   !   $0 Number Of Tour��5�   !   1 5�   !   �� *
Staff_Tour+5�   !   5�      �� 5�      $��4��5�      $��	0,10,40,0q�5�      $��Right=�5�      $ 
Horizontal=�5�      .+�5�      �� $	��140��5�      $��10q�5�      $��Right=�5�      $��Center=�5�      $��18(�5�      
���iii�2 �� Text2 5�      �� *SelectedExport+$ TwoWay=�$ PropertyChanged=�.@�5�      �� $��Excel��6+   3 �� 
IsSelected3 . 6;   �� 5�      $	��PDF��6+   3 .  69   5�      �� 5�      $	��200��5�      $��60��5�      $��
30,0,20,10q�5�      $��Export��5     ���#1885F2  ConfirmButton#��[ 5     ��5�      �� *ExportCommand+��5      �� $ StatisticDatagrid��5     5     5     5     5     5     5     
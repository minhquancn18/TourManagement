   M S B A M L   `   `   `  ����  TourManagementSystem9    3TourManagementSystem.ManagerView.View.DashboardView   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      U QWpfAnimatedGif, Version=2.0.0.0, Culture=neutral, PublicKeyToken=9e7cd3b544a090dc,gif"http://wpfanimatedgif.codeplex.com  5      _ [MaterialDesignThemes.Wpf, Version=4.3.0.3, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5      $
��1190��5	      $	��620��5
      ��5      �� 5   
     �� Triggers  5      :� 5       :� RoutedEvent$ UserControl.Loaded��6   .[�5      �� .��5      �� .��5      W�  �� TargetProperty$ Opacity�5   !    W� From$	 0.0X�5   !   	 W� To$	 1.0X�5   !    g� Duration$ 0:0:1D�5   !   5      5      5      5       � 	Resources 5         WrapText �� 
TargetType �� Property	 �� Value & "MaterialDesignDataGridColumnHeader
 �� BasedOn=  7System.Windows.Controls.Primitives.DataGridColumnHeader  MaterialDesignDataGridCell*  $System.Windows.Controls.DataGridCell P� Property P� Value��%�  &	        '  J     7  '  �     7  �� 5    
   " ��6!   .�5!      ��  � ��$
	 Wrap=�6-   5"      �� 5#   
   8
   "  6N   .�5$      ��  � ��$		 0.5q�60   �� 5%       � ��	 �#D6D6D66,   �� 5&       � ��	 �#FFFFFF6+   5'      �� 5(   
   8
   "  6F   .�5)      ��  � ��$	 0q�60   �� 5*       � ��	 �#d6d6d66,     5+      P� 5,       �@J�IsMouseOver . . �5-      ��  � ��	 �#FDF8EA63   5.      50      51      .��53      �� ���#0f6f68$��3q�55   	    �� CornerRadius$ 15��56   	   ._�57   
   � .+�59      ��  K� ZIndex$
 1000��5:      $	��0.5q�5;      $ 25��5<      ._�5=      � y�6   �� *ProgressBarVisbility+��5?      �� 5@       �� Opacity$ .3Q�6*    �� Color$ Black��67   .+�5B      �� $��0,120,0,120q�5C      $��Center=�5D       �� Orientation$ 
Horizontal=�5E      .+�5F      � $��80��5G      $��80��5H      
������� � IsIndeterminate .  % !MaterialDesignCircularProgressBar#��[ 5K       � Value$ 35Q�5L      �� 5M      $
��16,0q�5N      $��Center=�5O      $��24(�5P      
�������$��
Loading...��5R      5S      5T      5U      � 5W       � RowDefinitions 5X      �� 5Y      $
��auto �6$   �� 5Z      $
��auto �6$   �� 5[      $
��auto �6$   �� 5\      $��* �6$   �� 5]      $
��auto �6$   .+�5`      �� $��3��5a      $��2��5b      $	 500��5c      ._�5d      � y�6   �� *WaitingVisbility+��5f      �� 5g      $ 1Q�6.   $ White��6:   .+�5i      �� $��0,0,0,0q�5j      $��Center=�5k      $ Vertical=�5l      .+�5m      �� $	��600��5n   !   $	��360��5o   !   "  WpfAnimatedGif.ImageBehavior   AnimatedSource$9 3pack://application:,,,/Resources/Images/waiting.gif��5p   !      	AutoStart . 5q   !   �� 5r      $��16,16q�5s   !   $��Center=�5t   !   $��Center=�5u   !   $��Roboto)�5v   !   $��32(�5w   !   $��Italic$�5x   !   $��DemiBold"�5y   !   
���   �$��There is no record here.��5{   !   5|      5}      5~      �� 5�      $��0��5�      $��60��5�      ���#0f6f68$ 	15 15 0 0��5�      ._�5�      �� $��Center=�5�      $��Center=�5�      $��24(�5�      
�������$#��D I S P L A Y    R E C O R D ��5�      5�      �� 5�      $��1��5�      $
��0,20q�5�      $ 
Horizontal=�5�      .+�5�      �� $	��5,0q�5�      ���#FAFAFA
�������$��1q�5�      $ 10��5�      ._�5�      �� $��10,0,0,0q�6%   $ 
Horizontal=�67   .+�5�      '  !MaterialDesignThemes.Wpf.PackIcon  $��25��5�   !   $��30��5�   !   $��0,0,0,0q�5�   !   $��Center=�5�   !   
���iii�   Kind$ Search=�5�   !   �� 5�      $	��300��5�   !   $��40��5�   !   $��10,2,0,0q�5�   !   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Search��5�   !   .  (MaterialDesignThemes.Wpf.TextFieldAssist   DecorationVisibility$ Hidden=�5�   !   
������ $��18(�5�   !     MaterialDesignTextBoxBase#��[ 5�   !   .��6T   ��5�   "   �� 5�   &    �� Path$ 
FilterText�6.    �� UpdateSourceTrigger$ PropertyChanged=�6@    �� ValidationRules 5�   *   5�   '   .��5�   0   5�      5�      5�      �� 5�      $	��200��5�      $��10q�5�       �� DisplayMemberPath$ CB_Name��5�      $��18(�5�      
���iii���5�      �� *CB_RecordList+ �� Mode$ TwoWay=� �� SelectedValue 5�      �� *CB_RecordSelected+��5�      �� 5�      " ��6$   .�5�   "   ��  �@��
IsSelected	 6?   �� *
IsSelected+5�      5�      �� 5�      $��
24,12,0,15q�5�      $��Stretch=�5�      $��Stretch=�5�      -  'MaterialDesignThemes.Wpf.CheckBoxAssist    CheckBoxSize$  24Q�5�      ���	#FFEB5215
���   �$��20(�5�      
���   �  MaterialDesignCheckBox#��[ 5�      ! d� 	IsChecked! 5�      �� *Checkbox_DisplayAllRecord+.��5�   I   
All Record5�      (  "System.Windows.Controls.DatePicker  5�      $	��200��5�      $��40,10,10,10q�5�      $��Center=�5�      $��Center=�5�      $ 	Pick Date��5�      $��18(�5�      "   DisplayDateEnd" 5�      �� *	EndDate+{�5�      �� *
IsEnable+#   SelectedDate# 5�      �� 5�      $ TwoWay=�5�   !   $ Select_Date�5�   !   $ �� StringFormat$$ {0: dd/MM/yyyy}��5�   !   $ PropertyChanged=�5�   !   5�      5�      �� 5�      $��2��5�      $��10��5�      $
��0,10q�5�      
���   �$��2q�5�      &	   System.Windows.Controls.DataGrid	  5�      $��3��5�      $
��1150��5�      $	��360��5�      $��20q�5�      $	��Top=�5�      -
  'MaterialDesignThemes.Wpf.DataGridAssist% 
  CellPadding$% 12 8 0 8q�5�      & 
  ColumnHeaderPadding$& 20 8 0 8q�5�      ' J� 	AllowDrop' . ( 	  AutoGenerateColumns( .  ) 	  CanUserAddRows) .  * 	  CanUserDeleteRows* .  + 	  CanUserReorderColumns+ .  , 	  CanUserSortColumns, . $��15(�5�      - 	  GridLinesVisibility$- Vertical=�5�      . 	  
IsReadOnly. . / 	  SelectionMode$/ Single=�5�      "0 	  VerticalScrollBarVisibility$0 Visible=�5�      ��5�      �� *
RecordList+y�5�      �� *ItemVisbility+1 	  Columns1 5�      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn2   Width5  /System.Windows.Controls.DataGridLengthConverter$2 0.05* 5     1  +System.Windows.Controls.DataGridBoundColumn3   ElementStyle#3 [  5     4   Header$4 ID��5     5   Binding5 5     �� *	Record_ID+5       5     $2 0.25* 5     #3 [  5     $4 
Staff Name��5	     5 5     �� *
Staff_Name+5	       5
     $
2 0.1* 5     #3 [  5     $4 Staff_ID��5     5 5     �� *
Staff_ID+5       5     $
2 0.2* 5     #3 [  5     $4 Date Change��5     5 5     �� *Record_Date_String+5       5     $
2 0.5* 5     #3 [  5     $4 Content��5     5 5     �� *Record_Content+5     5     �� 5�     $��4��5�     $��32,10q�5�     $ 
Horizontal=�5�     .+�5�     �� $��Center=�5�     $��24(�5�     
���iii� ! MaterialDesignButtonTextBlock#��[ 5�     $��Number of Record: ��5�     �� 5�     $��16,0,0,0q�5�     $��Center=�5�     $��24(�5�     
���iii�#��[ 5�     ��5�     �� *Record_Amount+5�     5�     5�     5�     5�     
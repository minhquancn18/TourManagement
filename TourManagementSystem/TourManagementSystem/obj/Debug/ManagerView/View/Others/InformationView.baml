   M S B A M L   `   `   `  ����O  KTourManagementSystem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]3clr-namespace:TourManagementSystem.ManagerView.View%TourManagementSystem.ManagerView.View  5      ;    5TourManagementSystem.ManagerView.View.InformationView   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Elocal3clr-namespace:TourManagementSystem.ManagerView.View     5      _ [MaterialDesignThemes.Wpf, Version=4.3.0.3, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5      $
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
   "  6F   .�5'      ��  � ��$	 0q�60   �� 5(       � ��	 �#d6d6d66,     5)      P� 5*       �@J�IsMouseOver . . �5+      ��  � ��	 �#FDF8EA63   5,      5.      5/      .��50      �� -   5         ��Name$ contentControlDisplay��50      .��51   
   �� ���#0f6f68$��3q�53       �� CornerRadius$ 15��54      ._�56      � .+�58      ��  K� ZIndex$
 1000��59      $	��0.5q�5:      $ 25��5;      ._�5<      � y�6   �� *ProgressBarVisbility+��5>      �� 5?       �� Opacity$ .3Q�6.    �� Color$ Black��6;   .+�5A      �� $��0,120,0,120q�5B      $��Center=�5C       �� Orientation$ 
Horizontal=�5D      .+�5E      � $��80��5F   !   $��80��5G   !   
������� � IsIndeterminate .  % !MaterialDesignCircularProgressBar#��[ 5J   !    � Value$ 35Q�5K   !   �� 5L      $
��16,0q�5M   !   $��Center=�5N   !   $��24(�5O   !   
�������$��
Loading...��5Q   !   5R      5S      5T      � 5V       � RowDefinitions 5W      �� 5X      $
��auto �6(   �� 5Y      $��* �6(   �� 5Z      $
��auto �6(   .+�5\      � $��0��5]      $��60��5^      ���#0f6f68.+�5`      �� $��Center=�5a      $��Center=�5b      $��24(�5c      
�������$��F E E D B A C K ��5e      5f      �� 5h      $��1��6!   $ Vertical=�6.   .+�5i      �� $��
80,16,80,0q�5j      $��24(�5k      $��SemiBold"�5l      $��Feedback From User��5m      �� 5n      $	��400��5o      $��64,16,64,16q�5p      $	��Top=�5q      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Feedback��5r       �� AcceptsReturn . $��20(�5t       ! MaterialDesignOutlinedTextBox#��[ 5u       �� TextWrapping$
 Wrap=�5w      " �� VerticalScrollBarVisibility$
 Auto=�5x      ��5v      �� *
TextMail+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�5x      5y      �� 5{      $��2��5|      $
��0,10q�5}      $��Center=�5~      $ 
Horizontal=�5      .+�5�      �� $	��200��5�      $��60��5�      $��
Send Email��5�      ���#1885F2  ConfirmButton#��[ 5�      ��5�      �� *SendEmailCommand+��5�      ��  �� ElementName$ contentControlDisplay��5�      5�      5�      5�      5�      5�      5�      
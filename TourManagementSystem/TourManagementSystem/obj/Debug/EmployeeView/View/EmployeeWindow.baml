   M S B A M L   `   `   `  ����O  KTourManagementSystem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null_4clr-namespace:TourManagementSystem.EmployeeView.View&TourManagementSystem.EmployeeView.View  5      i9clr-namespace:TourManagementSystem.EmployeeView.ViewModel+TourManagementSystem.EmployeeView.ViewModel  5      ;    5TourManagementSystem.EmployeeView.View.EmployeeWindow   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Flocal4clr-namespace:TourManagementSystem.EmployeeView.View     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      Hvm9clr-namespace:TourManagementSystem.EmployeeView.ViewModel     5      -   5          �Name$  EmployeeViewWindow��5	      $
��1470��5      $	��780��5       � AllowsTransparency . 
������  � Icon$% /Resources/Images/logo_icon.ico��5       � 
ResizeMode$ NoResize=�5       � WindowStartupLocation$ CenterScreen=�5       � WindowStyle$
 None=�5       � Title 5
      �� *	TitleText+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=���5      �� 5   
   	 �� Triggers	 5      :� 5      
 :� RoutedEvent$
 Window.Loaded��6   .[�5      �� .��5      �� .��5      W�  �� TargetProperty$ Opacity�5   !    W� From$	 0.0X�5   !   	 W� To$	 1.0X�5   !    g� Duration$ 0:0:1D�5   !   5       5!      5"      5$       � DataContext 5'      F   @TourManagementSystem.EmployeeView.ViewModel.ENavigationViewModel  5(   
   .��5+      � .+�5-   
   �� ���#FFFFFF �� CornerRadius$ 10��6&   �� 50   
   $
��1340��51      $��80��52      $
��Left=�53      $	��Top=�54      ���#0f6f68$ 
10 0 100 0��56      ._�58      �� $��32(�59      $��SemiBold"�5:      
�������   HeaderStyle#��[  5<      $E��?      T O U R       M A N A G E M E N T       S Y S T E M      ��5=      5>      �� 5A   
   $
��1390��5B      $��80��5C      $��Right=�5D      $��Bottom=�5E      ���#0f6f68$ 
100 0 10 0��5G      ._�5H      �� $��32(�5I      $��SemiBold"�5J      
�������  FooterStyle#��[ 5L      ��5M      �� *
TypeText+$ TwoWay=�$ PropertyChanged=�5N      � 5Q   
   $	��680��6   $��0,10,0,0q�6    � ColumnDefinitions 5R      �� 5S      $	��220 �6#   �� 5T      .+�5V      �� ���#0f6f68���#FFFFFF$��0,5,0,5q�5Y      $ 	25 0 0 25��5Z      �� 5[      $��1��5\      ���#FFFFFF���#FFFFFF$��0,5,0,5q�5_      $ 	0 25 25 0��5`      5a      � 5d   
    5f      �� 5h      $��12 �6#   �� 5i      $	��208 �6#   �� 5j      $��12 �6#   �� 5k      �� 5l      $��12 �6#    � RowDefinitions 5o      �� 5q      $��0 �6    �� 5r      $��80 �6    �� 5s      $��55 �6    �� 5t      $	��570 �6    �� 5u      $��0 �6    .+�5y      � $��2��6   $��1��6    .+�5{      �� -   5         ��Name$ 	SearchBox��5|      $
��0,10q�5}      ���#21a096  SearchBoxStyle#��[ 5      ��5�      �� *
FilterText+$ PropertyChanged=��� 5�        SearchTextStyle#��[ 6   $��Search��6E   5�      � 5�      $��3��5�      $��1��5�      $��	0,10,10,0q�5�      .+�5�      �� ��6   �� *SourceCollection+��5�      �� 5�      .R�5�      �� .+�5�   "   	� 
���   � 	� 	GroupName$ 	MenuGroup��5�   %     MenuButtonStyle#��[ 5�   %   ��5�   %   ��  �� RelativeSource �� *FindAncestor+ �� AncestorType" �� �� Path$ DataContext.MenuCommand���5�   %   �� *
MenuName+��5�   %   �� *
MenuName+
 � Tag 5�   %   �� *	MenuImage+5�      5�      5�      5�      � 5�      $��2��5�      $��2��5�      $��3��5�      
������ .+�5�      �� -   5         ��Name$ Pages��5�      $
��1190��5�      $	��626��5�      $��	0,0,0,0.4q�5�      $��Bottom=�5�      ��5�      �� *SelectedViewModel+5�      5�      �� 5�   
   $��35��5�      $��35��5�      $��	0,10,80,0q�5�      $��Right=�5�      $	��Top=�5�        MiniBtn_Style#��[ 5�      ��5�      �� *MinimizeCommand+��5�      ��  �� ElementName$ EmployeeViewWindow��5�      �� 5�   
   $��50��5�      $��50��5�      $��0,5,20,0q�5�      $��Right=�5�      $	��Top=�5�        CloseBtn_Style#��[ 5�      ��5�      �� *CloseAppCommand+��5�      �� $ EmployeeViewWindow��5�      5�      5�      
   M S B A M L   `   `   `  ����  TourManagementSystem9    3TourManagementSystem.ManagerView.View.TransportView   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      U QWpfAnimatedGif, Version=2.0.0.0, Culture=neutral, PublicKeyToken=9e7cd3b544a090dc,gif"http://wpfanimatedgif.codeplex.com  5      _ [MaterialDesignThemes.Wpf, Version=4.3.0.3, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5      $
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
   "  6F   .�5'      ��  � ��$	 0q�60   �� 5(       � ��	 �#d6d6d66,     5)      P� 5*       �@J�IsMouseOver . . �5+      ��  � ��	 �#FDF8EA63   5,      5.      5/      .��50      �� -   5         ��Name$ contentControlMain��50      .��51   
   �� ���#0f6f68$��3q�53       �� CornerRadius$ 15��54      ._�55      � .+�57      ��  K� ZIndex$
 1000��58      $	��0.5q�59      $ 25��5:      ._�5;      � y�6   �� *ProgressBarVisbility+��5=      �� 5>       �� Opacity$ .3Q�6.    �� Color$ Black��6;   .+�5@      �� $��0,120,0,120q�5A      $��Center=�5B       �� Orientation$ 
Horizontal=�5C      .+�5D      � $��80��5E   !   $��80��5F   !   
������� � IsIndeterminate .  % !MaterialDesignCircularProgressBar#��[ 5I   !    � Value$ 35Q�5J   !   �� 5K      $
��16,0q�5L   !   $��Center=�5M   !   $��24(�5N   !   
�������$��
Loading...��5P   !   5Q      5R      5S      � 5U      $��0,0,0,0q�6    � RowDefinitions 5V      �� 5W      $
��auto �6(   �� 5X      $
��auto �6(   �� 5Y      $
��auto �6(   .+�5\      �� $��0��5]      $��60��5^      ���#0f6f68$ 	15 15 0 0��5`      ._�5a      �� $��Center=�5b      $��Center=�5c      $��24(�5d      
�������$#��T R A N S P O R T    L I S T ��5f      5g      � 5i      $��1��6    � ColumnDefinitions 5j      �� 5k      $
��auto �6/   �� 5l      $��* �6/   �� 5m      $
��auto �6/   .+�5p      �� $��0��5q      $	��400��5r      $��50��5s      $��5,5,20,5q�5t      ���#FAFAFA
�������$��1q�5w      $ 10��5x      ._�5z      �� $��10,0,0,0q�6)   $ 
Horizontal=�6;   .+�5{   "   '  !MaterialDesignThemes.Wpf.PackIcon  $��25��5|   %   $��30��5}   %   $��0,0,0,0q�5~   %   $��Center=�5   %   
���iii�   Kind$ Search=�5�   %   �� 5�   "   $	��300��5�   %   $��40��5�   %   $��10,2,0,0q�5�   %   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Search��5�   %   .  (MaterialDesignThemes.Wpf.TextFieldAssist   DecorationVisibility$ Hidden=�5�   %   
������ $��18(�5�   %     MaterialDesignTextBoxBase#��[ 5�   %   .��6X   ��5�   &   �� 5�   *    �� Path$ 
FilterText�62    �� UpdateSourceTrigger$ PropertyChanged=�6D    �� ValidationRules 5�   .   5�   +   .��5�   4   5�   #   5�      5�      �� 5�      $��1��6%   $ 
Horizontal=�65   .+�5�      �� -   5        $��cbSearch��5�   !   $	��140��5�   !   $��34��5�   !   $��10q�5�   !    �� DisplayMemberPath$ CB_Name��5�   !   $��18(�5�   !   
���iii���5�   !   �� *CB_TransportList+ �� Mode$ TwoWay=� �� SelectedValue 5�   !   �� *CB_TransportSelected+��5�   "   �� 5�   &   " ��6,   .�5�   *   ��  �@��
IsSelected	 6G   �� *
IsSelected+5�   '   5�      5�      �� 5�      $��2��5�      $	��200��5�      $��50��5�      $��	30,5,30,5q�5�      $��Right=�5�      $��Add New Transport��5�      ���#0f6f68  	AddButton#��[ 5�      ��5�      �� *AddTransportCommand+��5�      ��   �� ElementName$  contentControlMain��y�5�      �� *IsVisibility+5�      �� 5�      $��2��6   $	 500��6*   ._�5�      � y�6   �� *WaitingVisbility+��5�      �� 5�   "   $ 1Q�62   $ White��6>   .+�5�      �� $��0,60,0,0q�5�   !   $��Center=�5�   !   $ Vertical=�5�   !   .+�5�   "   �� $	��600��5�   %   $	��300��5�   %   "  WpfAnimatedGif.ImageBehavior!   AnimatedSource$9! 3pack://application:,,,/Resources/Images/waiting.gif��5�   %   "   	AutoStart" . 5�   %   �� 5�   "   $��16,16q�5�   %   $��Center=�5�   %   $��Center=�5�   %   $��Roboto)�5�   %   $��32(�5�   %   $��Italic$�5�   %   $��DemiBold"�5�   %   
���   �$$��Please update more transports.��5�   %   5�      5�      5�      &   System.Windows.Controls.DataGrid  5�      $��2��5�      $
��1170��5�      $	��480��5�      $	��Top=�5�      -  'MaterialDesignThemes.Wpf.DataGridAssist#   CellPadding$# 12 8 0 8q�5�      $   ColumnHeaderPadding$$ 20 8 0 8q�5�      % J� 	AllowDrop% . &   AutoGenerateColumns& .  '   CanUserAddRows' .  (   CanUserDeleteRows( .  )   CanUserReorderColumns) .  *   CanUserSortColumns* . $��15(�5�      +   GridLinesVisibility$+ Vertical=�5�      ,   
IsReadOnly, . -   SelectionMode$- Single=�5�      ".   VerticalScrollBarVisibility$. Visible=�5�      ��5�      �� *TransportItems+/ �� SelectedItem/ 5�      �� *TransportSelected+0   RowStyle0 5�      �� 5�      )	  #System.Windows.Controls.DataGridRow" 	 6$     5�   "   �� 5�   &   1 �� Binding1 62   �� *TRANSPORT_IS_DELETE+2 �� Value	2 false6Z   .a�5�   *   ��  � ��
	 �����6G   �� 5�   *    � ��
	 �OO/�6G   5�   '   �� 5�   &   1 62   �� *TRANSPORT_IS_DELETE+2 true6Z   .a�5�   *   ��  � ��
	 �����6G   �� 5�   *    � ��
	 �  ��6G   5�   '   5�      3 J� InputBindings3 5�      d� 5�      4 d� Gesture$4 LeftDoubleClicka�5�   !   5 �� Command5 5�   !   �� *ShowDetailTransportCommand+6 �� CommandParameter6 5�   !   �� $  contentControlMain��5�   !   7   Columns7 5�      0
  *System.Windows.Controls.DataGridTextColumn
  5�      ,  &System.Windows.Controls.DataGridColumn8   Width5  /System.Windows.Controls.DataGridLengthConverter$8 0.05* 5�   !   1  +System.Windows.Controls.DataGridBoundColumn9   ElementStyle#9 [  5�   !   :   Header$: ID��5�   !   ;   Binding; 5�   !   �� *TRANSPORT_ID+5�   !   
  5      $
8 0.2* 5  !   #9 [  5  !   $
: Name��5  !   ; 5  !   �� *TRANSPORT_NAME+5  !   
  5     $
8 0.2* 5  !   #9 [  5  !   $
: Type��5	  !   ; 5  !   �� *TRANSPORT_TYPETRANS+5	  !   
  5
     $
8 0.2* 5  !   #9 [  5  !   $: 
Amount Max��5  !   ; 5  !   �� *TRANSPORT_AMOUNT_MAX+5  !   
  5     $
8 0.2* 5  !   #9 [  5  !   $: Price��5  !   ; 5  !   �� *TRANSPORT_PRICE+5  !   
  5     $
8 0.2* 5  !   #9 [  5  !   $: National��5  !   ; 5  !   �� *TRANSPORT_TYPE+5  !   
  5     $
8 0.2* 5  !   #9 [  5  !   $: Status��5  !   ; 5  !   �� *TRANSPORT_STATUS+5  !   5     5      5!     5"     5#     5$     
   M S B A M L   `   `   `  ����Q  MBindingProjektWarships, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:BindingProjektWarshipsBindingProjektWarships  5   	   '    !BindingProjektWarships.MainWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   6local$clr-namespace:BindingProjektWarships     5   	     � Title$  WW1 Hajókezelő��5   	   $	��450��6    $	��800��6-   .��5	      �  � RowDefinitions 5
   
   �� 5      $
��0.5* �6   6,   �� 5      6   �� 5      6    � ColumnDefinitions 5   
   �� 5      6!   �� 5      6!   .+�5   
   �� $��2��6   $��32(�6$   $��Center=�62   $��Center=�6M   
���  ��$
��Bold"�6{   .��6�   Első Világháborús hajók6�   &   System.Windows.Controls.DataGrid  5   
   $��1��6   $	��155��6       AutoGenerateColumns$ False��6-      
IsReadOnly$
 True��6I   ��6[   �� *
Warships+ �� SelectedItem 6|   �� *SelectedWarship+   Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$
 Név��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 62   �� *Name+5        5      $ Hajóosztály��6%    6:   �� *Class+5        5      $ HajóTípus��6%    68   �� *Type+5        5      $ Indítási év��6%    6:   �� *
Launched+5!        5"      $ Fegyver Kaliber��6%    6>   �� *MainGunCaliber+5$        5%      $ Ország��6%    65   �� *	Country+5'      5)      �� 5*   
   $��1��6   $��1��6   .��6-   Szűrt adatok:6<     5+   
   $��2��6   $��1��6    $ False��6Z   $
 True��6v   ��60   �� *FilteredWarships+ 5,        5-      $
 Név��6%    62   �� *Name+5/        50      $ Hajóosztály��6%    6:   �� *Class+52        53      $ HajóTípus��6%    68   �� *Type+55        56      $ Indítási év��6%    6:   �� *
Launched+58        59      $ Fegyver Kaliber��6%    6>   �� *MainGunCaliber+5;        5<      $ Ország��6%    65   �� *	Country+5>      5@      �� 5A   
   $��0��6   $��2��6%   .+�5B      �� -   5        	 ��Name$	 	BtnAddNew��5B      .��6@   Új Hozzáadása6O   �� 5C      -   5        $	 	BtnModify��5C      .��6@   " Kiválasztott Adat módosítása6^   �� 5D      -   5        $	 	BtnDelete��5D      .��6@   Kiválasztott törlése6V   �� 5E      $��Keresés Ország alapján��6   $	��105��67   .��5F      �� .+�5G      �� .��6   
Ország:6&   �� 5H      ��6   �� *	Countries+ 6A   �� *
SelCountry+6g   �� 5I      -   5        $	 	BtnSearch��5I      .��6H   
Keresés6Q   5J      5L      5M      5O      5P      
   M S B A M L   `   `   `  ����Q  MBindingProjektWarships, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:BindingProjektWarshipsBindingProjektWarships  5   	   +    %BindingProjektWarships.WarshipManager   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   6local$clr-namespace:BindingProjektWarships     5   	     � Title$  WarshipManager��5   	   $	��450��6    $	��350��6-    � 	Resources 5	         WW1Font �� 
TargetType �� Property �� Value��%C  &	        '��      7   '�� �     7   '�� Y    7   *� 5   
   6'   �� 5   
   " ��6   .�5      ��  � ��8   6+   �� 5       � ��
 �����6+   �� 5       � ��
 �����6+   �� 5       � ��$
 bold"�6+   5      �� 5   
   " ��6   .�5      ��  � ��8   6+   �� 5       � ��
 �����6+   �� 5       � ��$
 bold"�6+   5      �� 5   
   " ��6   .�5      ��  � ��8   6+   �� 5       � ��
 �����6+   �� 5       � ��$
 bold"�6+   �� 5       � ��
 �����6+   5      5      .��5       � $��6q�6   ��5!   
   �� 5"       �� ImageSource$ 	ww1bg.png��6    j� Stretch$ UniformToFill=�5#       j� 
AlignmentX$ Center=�5$       j� 
AlignmentY$ Center=�5%      	 � ColumnDefinitions	 5'   
   �� 5(      �� 5)      
 � RowDefinitions
 5+   
   �� 5,      �� 5-      �� 5.      �� 5/      �� 50      �� 51      �� 52      .+�54   
   �� $��Hajó neve:��6   $��0��6%   $��0��62   $��Center=�6B   $��Right=�6]   6{   �� 55   
   $��0��6   $��1��6   $��Center=�6/   $��35��6J   ��6V   �� *ManagedWarship.Name+6}   �� 56   
   $��Hajó osztálya:��6   $��1��6)   $��0��66   $��Center=�6F   $��Right=�6a   6   �� 57   
   $��1��6   $��1��6   $��Center=�6/   $��35��6J   ��6V   �� *ManagedWarship.Class+6~   �� 58   
   $��Hajó típusa:��6   $��2��6'   $��0��64   $��Center=�6D   $��Right=�6_   6}   �� 59   
   $��2��6   $��1��6   $��Center=�6/   $��35��6J   ��6V   �� *ManagedWarship.Type+6}   �� 5:   
   $ ��Szolgálatba állás éve:��6   $��3��61   $��0��6>   $��Center=�6N   $��Right=�6i   6�   �� 5;   
   $��3��6   $��1��6   $��Center=�6/   $��35��6J   ��6V   �� *ManagedWarship.Launched+6�   �� 5<   
   $$��Fő fegyver kaliber(inch-ben):��6   $��4��68   $��0��6E   $��Center=�6U   $��Right=�6p   6�   �� 5=   
   $��4��6   $��1��6   $��Center=�6/   $��35��6J   ��6V   �� *ManagedWarship.MainGunCaliber+6�   �� 5>   
   $��Ország:��6   $��5��6"   $��0��6/   $��Center=�6?   $��Right=�6Z   6x   �� 5?   
   $��5��6   $��1��6   $��Center=�6/   $��35��6J   ��6V   �� *ManagedWarship.Country+6�   �� 5@   
   -   5         ��Name$ BtnSave��5@   !   $��0��6   $��2��62   $��6��6F   .��6i   	Mentés6q   5A      5B      
   M S B A M L   `   `   `  ���� B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp1WpfApp1      WpfApp1.ShowingWindow   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     'localclr-namespace:WpfApp1     -     �Name$  myShowingWindow�� � Title$ ShowingWindow��$	��450��$	��800��.��� -   $��MainGrid��
���   � � ColumnDefinitions �� $	��50* ��� $	��50* � � LayoutTransform �� -   ApplicationScaleTransform�� �� CenterX$ 0Q� �� CenterY$ 0Q� �� ScaleX ��  �� ElementName$ myShowingWindow�� �� Path$ 
ScaleValue�	 �� ScaleY	 �� $ myShowingWindow��$ 
ScaleValue�.+��� -   
 ��Name$
 Timer��$��Center=�$
��Wrap=�$��01:30��$	��Top=�
�������$	��100(�$��2���� $
��Left=�$��	0,130,0,0q�$	��Top=����#FFFFFF
�������$	��801��$��2���� -    ��Name$ 	Rectangle��$
��Left=�$	��220��$��
10,135,0,0q�
���   �$	��Top=�$	��780��$��2������  �� 
StartPoint$ 0,0.5&� �� EndPoint$ 1,0.5&�.���  � Color$	 Red�� � Offset$	 0.0Q�� $	 Red��$	 0.3Q�� $ Black��$	 0.5Q�� $
 Blue��$	 0.7Q�� $
 Blue��$	 1.0Q��� $
��Left=�$��	0,360,0,0q�$	��Top=����#FFFFFF
�������$	��801��$��2���� $��Center=�$	��100��$��	0,208,0,0q�$	��Top=�$	��100��$��/logo-mws.png��$��2���� -   $
 LeftFighter��$��Center=�$��	0,156,0,0q�$
��Wrap=�$��Красный Боец��$	��Top=�
�������$��36(��� -   $
 RightFighter��$��1��$��Center=�$��	0,156,0,0q�$
��Wrap=�$��Синий боец��$	��Top=�
�������$��36(��� -   $
 RightFighterCounter��$��1��$��Center=�$��	0,201,0,0q�$
��Wrap=�$��0��$	��Top=�$	��100(�
��������� -	   $
 LeftFighterCounter��$��Center=�$��	0,200,0,0q�$
��Wrap=�$��0��$	��Top=�$	��100(�
��������� $
��Left=�$��180,366,0,0q�$
��Wrap=�$*��$Обоюдные поражения:��$	��Top=�$��36(�
�������$��2���� -
   $
 OboydkiCounter��$��1��$��Center=�$��	0,366,0,0q�$
��Wrap=�$��0��$	��Top=�$��36(�
�������
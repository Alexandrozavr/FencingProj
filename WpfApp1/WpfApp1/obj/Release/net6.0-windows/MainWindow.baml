   M S B A M L   `   `   `  ���� B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp1WpfApp1      WpfApp1.MainWindow   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     'localclr-namespace:WpfApp1     -   $��myMainWindow��  � Title$  
MainWindow��$	��450��$	��800��.��� -   $��MainGrid�� � LayoutTransform �� -   ApplicationScaleTransform�� �� CenterX$ 0Q� �� CenterY$ 0Q� �� ScaleX ��  �� ElementName$ myMainWindow�� �� Path$ 
ScaleValue� �� ScaleY �� $ myMainWindow��$ 
ScaleValue� � RowDefinitions �� $	��64* ��� $	��97* ��� $
��120* ��� $
��120* ��� $	��64* �	 � ColumnDefinitions	 �� $��5* ��� $	��40* ��� $	��10* ��� $	��40* ��� $��5* �.+��� -   
 ��Name$
 	Rectangle��$��3��$��3�� �� RadiusX$ 15�� �� RadiusY$ 15��$��0,0,0,0q�$��1��$��1������  �� 
StartPoint$ 0,0.5&� �� EndPoint$ 1,0.5&�.���  � Color$	 Red�� � Offset$	 0.0Q�� $	 Red��$	 0.3Q�� $ Black��$	 0.5Q�� $
 Blue��$	 0.7Q�� $
 Blue��$	 1.0Q��� -    ��Name$ LeftFighterName�� �� TextWrapping$
 Wrap=�$��Красный Боец��$��36(�$��1��$��1��$��10,15,10,15q��� -   $ RightFighterName��$
 Wrap=�$��Синий Боец��$��36(�$��3��$��1��$��	11,21,9,9q�
��������� $��5��$��2��$	��Top=�$��	44,2,44,0q�$��1���� -   $ LeftFighterPointsCounter��$��Right=�$��0,0,10,0q�$
 Wrap=�$��0��$��Center=�$	��100��$��55��$��36(� �� TextAlignment$ Center=�$��2��$��1���� -    ��Name$ 	NullerRed��$��0��$��Right=�$��	0,0,200,0q�$��Center=�$��36(�$��42��$��55��$��2��$��1���� -	   $ RightFighterPointsCounter��$
��Left=�$��10,0,0,0q�$
 Wrap=�$��0��$��Center=�$	��100��$��55��$��36(�$ Center=�$��3��$��2���� -
   $ 
NullerBlue��$��0��$��	200,0,0,0q�$��Center=�$��36(�$��55��$��3��$��2��$
��Left=�$��42���� -   $ AddPointToRed��$��+1��$��Center=�$��Center=�$��55��$��55��$��36(�$��2��$��1�� J� RenderTransformOrigin$ 0.491,-0.029&��� -   $ RemovePointFromRed��$��-1��$��Right=�$��Center=�$��56��$��55��$��36(�$��2��$��1��$��	0,0,255,0q��� -   $ AddPointToBlue��$��+1��$
��Left=�$��	252,0,0,0q�$��Center=�$��55��$��55��$��36(�$��3��$��2���� -   $ RemovePointFromBlue��$��-1��$��Center=�$��Center=�$��55��$ 1.036,-0.327&�$��55��$��36(�$��3��$��2���� $��2��$��Счёт��$��Center=�$��2��$��Center=�$��55��$��60��$��24(�
��������� $��1��$��3��$"��Предупреждения��$��Center=�$��3��$��Center=�
�������$��24(��� -   $ RemoveAlertRed��$��1��$��3��$��-1��$
��Left=�$��10,0,0,0q�$��Center=�$��55��$��55��$��36(��� -   $ 	AlertsRed��$��1��$��3��$ Center=�$��0��$
��Left=�$��80,0,0,0q�$��Center=�$��55��$��42��$��36(��� -   $ AddAlertRed��$��1��$��3��$��+1��$
��Left=�$��	140,0,0,0q�$��Center=�$��55��$��55��$��36(��� -   $ RemoveAlertBlue��$��3��$��3��$��-1��$��Right=�$��	0,0,140,0q�$��Center=�$��55��$��55��$��36(��� -   $ 
AlertsBlue��$��3��$��3��$ Center=�$��0��$��Right=�$��0,0,80,0q�$��Center=�$��55��$��42��$��36(��� -   $ AddAlertBlue��$��3��$��3��$��+1��$��Right=�$��0,0,10,0q�$��Center=�$��55��$��55��$��36(��� -   $ Timer��$��2��$��Center=�$��01:30��$��Center=�$��70��$��24(�$��Center=�$��Center=�
���   �$��1q��� -   $ TimerSwitch��$��1��$��▶️��$
��Left=�$��	200,0,0,0q�$��Center=�$��40��$��40��$��24(��� -   $ SubstractTime��$��1��$
��Left=�$��	270,0,0,0q�$��40��$��Center=�$��20(�$��Center=�$��40��$��0,0,0,10q�$��Center=�$��-��$
��Bold"��� -   $ AddTime��$��3��$��+��$
��Left=�$��10,0,0,0q�$��Center=�$��24(�$��1,1,1,10q�$��40��$
��Bold"�$��40���� -   $ ResetButton��$��1��$
��Left=�$��Center=�$��40��$��40��$��	150,0,0,0q����	#FFDDDDDD.���� $��
/reset.png���� -    ��Name$ oboydki��$��1��$��3��$
��Left=�$��	105,0,0,0q�$��4��$
��Wrap=�$)��#Обоюдные поражения��$��Center=�$��36(��� -   $ OboydkiCounter��$��3��$��0��$
��Left=�$��95,0,0,0q�$��4��$��Center=�
���   �$��1,1,1,1q�$��36(�$��Center=��� -   $ 
AddOboydki��$��3��$
��🡩��$��Center=�$��4��$	��Top=�$��23��$��2��$��30��$��0,5,0,0q��� -   $ RemoveOboydki��$��3��$
��🡫��$��Center=�$��4��$��Bottom=�$��23��$��30��$��0,0,0,5q��� -   $ SwitchSides��$��2��$	��⇔��$��Center=�$��1��$��Center=�$��36(�$��Center=�$��Center=�$��0,0,0,7q��� -   $ SecondWindowBotton��$��3��$��Начать��$��Right=�$��0,0,10,0q�$��4��$��Center=�$ -0.239,-0.293&�$��95��$��24(�$��40��
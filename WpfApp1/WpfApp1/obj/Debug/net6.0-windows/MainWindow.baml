   M S B A M L   `   `   `  ����B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp1WpfApp1  5          WpfApp1.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:WpfApp1     5      -   5        $��myMainWindow��5   	     � Title$  
MainWindow��5	   	   $	��450��6   $	��800��6)   .��5
      � -   5        $��MainGrid��5
       � LayoutTransform 5   
   �� 5      -   5        ApplicationScaleTransform�� �� CenterX$ 0Q�5       �� CenterY$ 0Q�5       �� ScaleX 5      ��  �� ElementName$ myMainWindow�� �� Path$ 
ScaleValue� �� ScaleY 5      �� $ myMainWindow��$ 
ScaleValue� � RowDefinitions 5   
   �� 5      $	��64* �6   �� 5      $	��97* �6   �� 5      $
��120* �6   �� 5      $
��120* �6   �� 5      $	��64* �6   	 � ColumnDefinitions	 5   
   �� 5      $��5* �6   �� 5      $	��40* �6   �� 5      $	��10* �6   �� 5      $	��40* �6   �� 5      $��5* �6   .+�5    
   �� -   5        
 ��Name$
 	Rectangle��5       $��3��6'   $��3��6;    �� RadiusX$ 15��6L    �� RadiusY$ 15��6Y   $��0,0,0,0q�6f   $��1��6w   $��1��6�   ��5!      �� 5"       �� 
StartPoint$ 0,0.5&�6&    �� EndPoint$ 1,0.5&�69   .��5#      �  � Color$	 Red��6#    � Offset$	 0.0Q�6/   � 5$      $	 Red��6#   $	 0.3Q�6/   � 5%      $ Black��6#   $	 0.5Q�61   � 5&      $
 Blue��6#   $	 0.7Q�60   � 5'      $
 Blue��6#   $	 1.0Q�60   5(      5*      �� 5+   
   -   5         ��Name$ LeftFighterName��5+       �� TextWrapping$
 Wrap=�6+   $��Красный Боец��6?   $��36(�6U   $��1��6c   $��1��6p   $��10,15,10,15q�6�   6�   �� 5,   
   -   5        $ RightFighterName��5,      $
 Wrap=�6,   $��Синий Боец��6@   $��36(�6S   $��3��6a   $��1��6q   $��	11,21,9,9q�6~   
�������6�   �� 5-   
   $��5��6   $��2��6(   $	��Top=�65   $��	44,2,44,0q�6M   $��1��6`   �� 5.   
   -   5        $ LeftFighterPointsCounter��5.      $��Right=�64   $��0,0,10,0q�6P   $
 Wrap=�6b   $��0��6v   $��Center=�6   $	��100��6�   $��55��6�   $��36(�6�    �� TextAlignment$ Center=�6�   $��2��6�   $��1��6�   6�   �� 5/   
   -   5         ��Name$ 	NullerRed��5/      $��0��6$   $��Right=�60   $��	0,0,200,0q�6L   $��Center=�6_   $��36(�6z   $��42��6�   $��55��6�   $��2��6�   $��1��6�   6�   �� 50   
   -	   5        $ RightFighterPointsCounter��50      $
��Left=�65   $��10,0,0,0q�6P   $
 Wrap=�6b   $��0��6v   $��Center=�6   $	��100��6�   $��55��6�   $��36(�6�   $ Center=�6�   $��3��6�   $��2��6�   6�   �� 51   
   -
   5        $ 
NullerBlue��51      $��0��6%   $��	200,0,0,0q�61   $��Center=�6D   $��36(�6_   $��55��6m   $��3��6y   $��2��6�   $
��Left=�6�   $��42��6�   6�   �� 52   
   -   5        $ AddPointToRed��52      $��+1��6(   $��Center=�65   $��Center=�6R   $��55��6m   $��55��6x   $��36(�6�   $��2��6�   $��1��6�    J� RenderTransformOrigin$ 0.491,-0.029&�6�   6�   �� 53   
   -   5        $ RemovePointFromRed��53      $��-1��6-   $��Right=�6:   $��Center=�6V   $��56��6q   $��55��6|   $��36(�6�   $��2��6�   $��1��6�   $��	0,0,255,0q�6�   �� 54   
   -   5        $ AddPointToBlue��54      $��+1��6)   $
��Left=�66   $��	252,0,0,0q�6Q   $��Center=�6d   $��55��6   $��55��6�   $��36(�6�   $��3��6�   $��2��6�   6�   �� 55   
   -   5        $ RemovePointFromBlue��55      $��-1��6.   $��Center=�6;   $��Center=�6X   $��55��6s   $ 1.036,-0.327&�6~   $��55��6�   $��36(�6�   $��3��6�   $��2��6�   6�   �� 56   
   $��2��6   $��Счёт��6    $��Center=�6/   $��2��6L   $��Center=�6Y   $��55��6t   $��60��6�   $��24(�6�   
�������6�   �� 57   
   $��1��6   $��3��6    $"��Предупреждения��64   $��Center=�6M   $��3��6j   $��Center=�6w   
�������$��24(�6�   �� 58   
   -   5        $ RemoveAlertRed��58   .   $��1��6   $��3��6!   $��-1��6F   $
��Left=�6S   $��10,0,0,0q�6n   $��Center=�6�   $��55��6�   $��55��6�   $��36(�6�   6�   �� 59   
   -   5        $ 	AlertsRed��59   /   $��1��6   $��3��6"   $ Center=�6B   $��0��6Y   $
��Left=�6b   $��80,0,0,0q�6}   $��Center=�6�   $��55��6�   $��42��6�   $��36(�6�   �� 5:   
   -   5        $ AddAlertRed��5:   .   $��1��6   $��3��6!   $��+1��6C   $
��Left=�6P   $��	140,0,0,0q�6k   $��Center=�6~   $��55��6�   $��55��6�   $��36(�6�   6�   �� 5;   
   -   5        $ RemoveAlertBlue��5;   .   $��3��6   $��3��6!   $��-1��6G   $��Right=�6T   $��	0,0,140,0q�6p   $��Center=�6�   $��55��6�   $��55��6�   $��36(�6�   6�   �� 5<   
   -   5        $ 
AlertsBlue��5<   /   $��3��6   $��3��6"   $ Center=�6C   $��0��6Z   $��Right=�6c   $��0,0,80,0q�6   $��Center=�6�   $��55��6�   $��42��6�   $��36(�6�   �� 5=   
   -   5        $ AddAlertBlue��5=   .   $��3��6   $��3��6!   $��+1��6D   $��Right=�6Q   $��0,0,10,0q�6m   $��Center=�6   $��55��6�   $��55��6�   $��36(�6�   6�   �� 5>   
   -   5        $ Timer��5>      $��2��6!   $��Center=�62   $��01:30��6O   $��Center=�6\   $��70��6w   $��24(�6�   $��Center=�6�   $��Center=�6�   
���   �$��1q�6�   6�   �� 5?   
   -   5        $ TimerSwitch��5?      $��1��6&   $��▶️��66   $
��Left=�6C   $��	200,0,0,0q�6^   $��Center=�6q   $��40��6�   $��40��6�   $��24(�6�   �� 5@   
   -   5        $ SubstractTime��5@      $��1��6(   $
��Left=�68   $��	270,0,0,0q�6S   $��40��6f   $��Center=�6q   $��20(�6�   $��Center=�6�   $��40��6�   $��0,0,0,10q�6�   $��Center=�6�   $��-��6�   $
��Bold"�6  6  �� 5A   
   -   5        $ AddTime��5A      $��3��6"   $��+��62   $
��Left=�6>   $��10,0,0,0q�6Y   $��Center=�6k   $��24(�6�   $��1,1,1,10q�6�   $��40��6�   $
��Bold"�6�   $��40��6�   6�   �� 5B   
   -   5        $ ResetButton��5B      $��1��6&   $
��Left=�66   $��Center=�6Q   $��40��6l   $��40��6w   $��	150,0,0,0q�6�   ���	#FFDDDDDD.��5C      �� $��
/reset.png��6   6*   5D      �� 5E   
   -   5         ��Name$ oboydki��5E      $��1��6%   $��3��65   $
��Left=�6I   $��	105,0,0,0q�6d   $��4��6w   $
��Wrap=�6�   $)��#Обоюдные поражения��6�   $��Center=�6�   $��36(�6�   �� 5F   
   -   5        $ OboydkiCounter��5F      $��3��6*   $��0��6:   $
��Left=�6D   $��95,0,0,0q�6_   $��4��6q   $��Center=�6~   
���   �$��1,1,1,1q�6�   $��36(�6�   $��Center=�6�   6�   �� 5G   
   -   5        $ 
AddOboydki��5G      $��3��6%   $
��🡩��65   $��Center=�6B   $��4��6_   $	��Top=�6l   $��23��6�   $��2��6�   $��30��6�   $��0,5,0,0q�6�   6�   �� 5H   
   -   5        $ RemoveOboydki��5H      $��3��6(   $
��🡫��68   $��Center=�6E   $��4��6b   $��Bottom=�6o   $��23��6�   $��30��6�   $��0,0,0,5q�6�   6�   �� 5I   
   -   5        $ SwitchSides��5I      $��2��6&   $	��⇔��66   $��Center=�6B   $��1��6_   $��Center=�6l   $��36(�6�   $��Center=�6�   $��Center=�6�   $��0,0,0,7q�6�   6�   �� 5J   
   -   5        $ SecondWindowBotton��5J      $��3��6-   $��Начать��6=   $��Right=�6N   $��0,0,10,0q�6j   $��4��6|   $��Center=�6�   $ -0.239,-0.293&�6�   $��95��6�   $��24(�6�   $��40��6�   6�   5K      5L      
   M S B A M L   `   `   `  ����B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp1WpfApp1  5   	       WpfApp1.ShowingWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:WpfApp1     5   	   -   5          �Name$  myShowingWindow��5   	    � Title$ ShowingWindow��5	   	   $	��450��6   $	��800��6,   .��5      � -   5        $��MainGrid��5      
���   � � ColumnDefinitions 5   
   �� 5      $	��50* �6   �� 5      $	��50* �6    � LayoutTransform 5   
   �� 5      -   5        ApplicationScaleTransform�� �� CenterX$ 0Q�5       �� CenterY$ 0Q�5       �� ScaleX 5      ��  �� ElementName$ myShowingWindow�� �� Path$ 
ScaleValue�	 �� ScaleY	 5      �� $ myShowingWindow��$ 
ScaleValue�.+�5   
   �� -   5        
 ��Name$
 Timer��5      $��Center=�6#   $
��Wrap=�6@   $��01:30��6T   $	��Top=�6a   
�������$	��100(�6�   $��2��6�   �� 5   
   $
��Left=�6   $��	0,130,0,0q�6/   $	��Top=�6B   ���#FFFFFF
�������$	��801��6�   $��2��6�   �� 5   
   -   5         ��Name$ 	Rectangle��5      $
��Left=�6'   $	��220��6B   $��
10,135,0,0q�6O   
���   �$	��Top=�6r   $	��780��6�   $��2��6�   ��5      �� 5       �� 
StartPoint$ 0,0.5&�6&    �� EndPoint$ 1,0.5&�69   .��5      �  � Color$	 Red��6#    � Offset$	 0.0Q�6/   � 5      $	 Red��6#   $	 0.3Q�6/   � 5      $ Black��6#   $	 0.5Q�61   � 5      $
 Blue��6#   $	 0.7Q�60   � 5       $
 Blue��6#   $	 1.0Q�60   5!      5#      �� 5$   
   $
��Left=�6   $��	0,360,0,0q�6/   $	��Top=�6B   ���#FFFFFF
�������$	��801��6�   $��2��6�   �� 5%   
   $��Center=�6   $	��100��6-   $��	0,208,0,0q�6:   $	��Top=�6M   $	��100��6e   $��/logo-mws.png��6q   $��2��6�   �� 5&   
   -   5        $
 LeftFighter��5&      $��Center=�6)   $��	0,156,0,0q�6F   $
��Wrap=�6Y   $��Красный Боец��6m   $	��Top=�6�   
�������$��36(�6�   �� 5'   
   -   5        $
 RightFighter��5'      $��1��6*   $��Center=�6:   $��	0,156,0,0q�6W   $
��Wrap=�6j   $��Синий боец��6~   $	��Top=�6�   
�������$��36(�6�   �� 5(   
   -   5        $
 RightFighterCounter��5(      $��1��61   $��Center=�6A   $��	0,201,0,0q�6^   $
��Wrap=�6q   $��0��6�   $	��Top=�6�   $	��100(�6�   
�������6�   �� 5)   
   -	   5        $
 LeftFighterCounter��5)      $��Center=�60   $��	0,200,0,0q�6M   $
��Wrap=�6`   $��0��6t   $	��Top=�6}   $	��100(�6�   
�������6�   �� 5*   
   $
��Left=�6   $��180,366,0,0q�6/   $
��Wrap=�6D   $*��$Обоюдные поражения:��6X   $	��Top=�6s   $��36(�6�   
�������$��2��6�   �� 5+   
   -
   5        $
 OboydkiCounter��5+      $��1��6,   $��Center=�6<   $��	0,366,0,0q�6Y   $
��Wrap=�6l   $��0��6�   $	��Top=�6�   $��36(�6�   
�������6�   5-      5.      
FasdUAS 1.101.10   ��   ��    k             l      ��  ��    j d
	Script for OmniGraffle.
	
	It swaps the selected shape with his parent. It fixes all connections.
     � 	 	 � 
 	 S c r i p t   f o r   O m n i G r a f f l e . 
 	 
 	 I t   s w a p s   t h e   s e l e c t e d   s h a p e   w i t h   h i s   p a r e n t .   I t   f i x e s   a l l   c o n n e c t i o n s . 
   
�� 
 l   � ����  O    �    k   �       l   ��  ��    %  Get list of selected elements.     �   >   G e t   l i s t   o f   s e l e c t e d   e l e m e n t s .      r        n    
    1    
��
�� 
sele  4   �� 
�� 
cwin  m    ����   o      ���� 0 selected        l   ��  ��    / ) Continue if there is a selected graphic.     �   R   C o n t i n u e   i f   t h e r e   i s   a   s e l e c t e d   g r a p h i c .    ��   Z   � ! "���� ! l    #���� # ?     $ % $ l    &���� & I   �� '��
�� .corecnte****       **** ' o    ���� 0 selected  ��  ��  ��   % m    ����  ��  ��   " k   � ( (  ) * ) l   �� + ,��   + "  Get first selected graphic.    , � - - 8   G e t   f i r s t   s e l e c t e d   g r a p h i c . *  . / . r     0 1 0 n     2 3 2 4    �� 4
�� 
cobj 4 m    ����  3 o    ���� 0 selected   1 o      ���� 	0 node1   /  5 6 5 l   ��������  ��  ��   6  7 8 7 l   �� 9 :��   9 - ' Continue if there is a child for node.    : � ; ; N   C o n t i n u e   i f   t h e r e   i s   a   c h i l d   f o r   n o d e . 8  <�� < Z   � = >���� = ?    ' ? @ ? l   % A���� A I   %�� B��
�� .corecnte****       **** B n    ! C D C 2   !��
�� 
OgoL D o    ���� 	0 node1  ��  ��  ��   @ m   % &����   > k   *� E E  F G F l  * *��������  ��  ��   G  H I H O   *� J K J O   1� L M L k   8� N N  O P O l  8 8��������  ��  ��   P  Q R Q l  8 8�� S T��   S C = Get link from node1 to node1 (in this case, node1's parent).    T � U U z   G e t   l i n k   f r o m   n o d e 1   t o   n o d e 1   ( i n   t h i s   c a s e ,   n o d e 1 ' s   p a r e n t ) . R  V W V r   8 @ X Y X n   8 > Z [ Z 4   ; >�� \
�� 
cobj \ m   < =����  [ n   8 ; ] ^ ] 2  9 ;��
�� 
OgoL ^ o   8 9���� 	0 node1   Y o      ���� 0 
linkn1ton2 
linkN1toN2 W  _ ` _ l  A A�� a b��   a / ) Get node2 (in this case, node1's child).    b � c c R   G e t   n o d e 2   ( i n   t h i s   c a s e ,   n o d e 1 ' s   c h i l d ) . `  d e d r   A F f g f n   A D h i h 1   B D��
�� 
Olde i o   A B���� 0 
linkn1ton2 
linkN1toN2 g o      ���� 	0 node2   e  j k j l  G G�� l m��   l O I Delete now link from N2 to N1. At the end N1 to N2 link will be created.    m � n n �   D e l e t e   n o w   l i n k   f r o m   N 2   t o   N 1 .   A t   t h e   e n d   N 1   t o   N 2   l i n k   w i l l   b e   c r e a t e d . k  o p o I  G L�� q��
�� .coredelonull���    obj  q o   G H���� 0 
linkn1ton2 
linkN1toN2��   p  r s r l  M M��������  ��  ��   s  t u t l  M M�� v w��   v 0 * Get parents and children from both nodes.    w � x x T   G e t   p a r e n t s   a n d   c h i l d r e n   f r o m   b o t h   n o d e s . u  y z y r   M R { | { n   M P } ~ } 2  N P��
�� 
OgiL ~ o   M N���� 	0 node2   | o      ���� $0 linksparentston2 linksParentsToN2 z   �  r   S Z � � � n   S V � � � 2  T V��
�� 
OgoL � o   S T���� 	0 node2   � o      ���� &0 linksn2tochildren linksN2ToChildren �  � � � r   [ b � � � n   [ ^ � � � 2  \ ^��
�� 
OgiL � o   [ \���� 	0 node1   � o      ���� $0 linksparentston1 linksParentsToN1 �  � � � r   c j � � � n   c f � � � 2  d f��
�� 
OgoL � o   c d���� 	0 node1   � o      ���� &0 linksn1tochildren linksN1ToChildren �  � � � l  k k��������  ��  ��   �  � � � l  k k�� � ���   � - ' Node2's parents become node1's parents    � � � � N   N o d e 2 ' s   p a r e n t s   b e c o m e   n o d e 1 ' s   p a r e n t s �  � � � X   k � ��� � � k   } � � �  � � � r   } � � � � n   } � � � � 1   ~ ���
�� 
Olso � o   } ~���� 0 link   � o      ���� 0 
parentnode 
parentNode �  � � � I  � ��� ���
�� .coredelonull���    obj  � o   � ����� 0 link  ��   �  ��� � O  � � � � � r   � � � � � J   � � � �  � � � o   � ����� 0 
parentnode 
parentNode �  ��� � o   � ����� 	0 node1  ��   � J       � �  � � � 1   � ���
�� 
Olso �  ��� � 1   � ���
�� 
Olde��   � l  � � ����� � I  � ����� �
�� .corecrel****      � null��   � �� ���
�� 
kocl � m   � ���
�� 
OGLi��  ��  ��  ��  �� 0 link   � o   n o���� $0 linksparentston2 linksParentsToN2 �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � / ) Node2's children become node1's children    � � � � R   N o d e 2 ' s   c h i l d r e n   b e c o m e   n o d e 1 ' s   c h i l d r e n �  � � � X   � ��� � � k   �	 � �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
Olde � o   � ����� 0 link   � o      ���� 0 	childnode 	childNode �  � � � I  � ��� ���
�� .coredelonull���    obj  � o   � ����� 0 link  ��   �  ��� � O  �	 � � � r   � � � � J   � � � �  � � � o   � ����� 	0 node1   �  ��� � o   � ����� 0 	childnode 	childNode��   � J       � �  � � � 1   � ���
�� 
Olso �  ��� � 1  ��
�� 
Olde��   � l  � � ����� � I  � ����� �
�� .corecrel****      � null��   � �� ���
�� 
kocl � m   � ���
�� 
OGLi��  ��  ��  ��  �� 0 link   � o   � ��� &0 linksn2tochildren linksN2ToChildren �  � � � l �~�}�|�~  �}  �|   �  � � � l �{ � ��{   � - ' Node1's parents become node2's parents    � � � � N   N o d e 1 ' s   p a r e n t s   b e c o m e   n o d e 2 ' s   p a r e n t s �  � � � X  b ��z � � k  #] � �  � � � r  #, � � � n  #( � � � 1  $(�y
�y 
Olso � o  #$�x�x 0 link   � o      �w�w 0 
parentnode 
parentNode �  � � � I -2�v ��u
�v .coredelonull���    obj  � o  -.�t�t 0 link  �u   �  ��s � O 3] � � � r  A\ � � � J  AG � �  � � � o  AD�r�r 0 
parentnode 
parentNode �  ��q � o  DE�p�p 	0 node2  �q   � J       � �  � � � 1  LQ�o
�o 
Olso �  ��n � 1  WZ�m
�m 
Olde�n   � l 3> ��l�k � I 3>�j�i �
�j .corecrel****      � null�i   � �h ��g
�h 
kocl � m  7:�f
�f 
OGLi�g  �l  �k  �s  �z 0 link   � o  �e�e $0 linksparentston1 linksParentsToN1 �    l cc�d�c�b�d  �c  �b    l cc�a�a   / ) Node1's children become node2's children    � R   N o d e 1 ' s   c h i l d r e n   b e c o m e   n o d e 2 ' s   c h i l d r e n  X  c�	�`
	 k  w�  r  w~ n  wz 1  xz�_
�_ 
Olde o  wx�^�^ 0 link   o      �]�] 0 	childnode 	childNode  I ��\�[
�\ .coredelonull���    obj  o  ��Z�Z 0 link  �[   �Y O �� r  �� J  ��  o  ���X�X 	0 node2   �W o  ���V�V 0 	childnode 	childNode�W   J         1  ���U
�U 
Olso  !�T! 1  ���S
�S 
Olde�T   l ��"�R�Q" I ���P�O#
�P .corecrel****      � null�O  # �N$�M
�N 
kocl$ m  ���L
�L 
OGLi�M  �R  �Q  �Y  �` 0 link  
 o  fi�K�K &0 linksn1tochildren linksN1ToChildren %&% l ���J�I�H�J  �I  �H  & '(' l ���G)*�G  ) $  Link from node2 to node1.				   * �++ <   L i n k   f r o m   n o d e 2   t o   n o d e 1 . 	 	 	 	( ,-, O ��./. r  ��010 J  ��22 343 o  ���F�F 	0 node2  4 5�E5 o  ���D�D 	0 node1  �E  1 J      66 787 1  ���C
�C 
Olso8 9�B9 1  ���A
�A 
Olde�B  / l ��:�@�?: I ���>�=;
�> .corecrel****      � null�=  ; �<<�;
�< 
kocl< m  ���:
�: 
OGLi�;  �@  �?  - =�9= l ���8�7�6�8  �7  �6  �9   M 4  1 5�5>
�5 
OGWS> m   3 4�4�4  K 4  * .�3?
�3 
docu? m   , -�2�2  I @�1@ l ���0�/�.�0  �/  �.  �1  ��  ��  ��  ��  ��  ��    m     AA�                                                                                  OGfl  alis    N  Mac HD                     Η��H+  �:�OmniGraffle.app                                                k���y�        ����  	                Applications    Η��      �k�    �:�  $Mac HD:Applications: OmniGraffle.app     O m n i G r a f f l e . a p p    M a c   H D  Applications/OmniGraffle.app  / ��  ��  ��  ��       �-BC�-  B �,
�, .aevtoappnull  �   � ****C �+D�*�)EF�(
�+ .aevtoappnull  �   � ****D k    �GG  
�'�'  �*  �)  E �&�& 0 link  F A�%�$�#�"�!� ������������������
�% 
cwin
�$ 
sele�# 0 selected  
�" .corecnte****       ****
�! 
cobj�  	0 node1  
� 
OgoL
� 
docu
� 
OGWS� 0 
linkn1ton2 
linkN1toN2
� 
Olde� 	0 node2  
� .coredelonull���    obj 
� 
OgiL� $0 linksparentston2 linksParentsToN2� &0 linksn2tochildren linksN2ToChildren� $0 linksparentston1 linksParentsToN1� &0 linksn1tochildren linksN1ToChildren
� 
kocl
� 
Olso� 0 
parentnode 
parentNode
� 
OGLi
� .corecrel****      � null� 0 	childnode 	childNode�(���*�k/�,E�O�j j���k/E�O��-j j�*�k/�*�k/���-�k/E�O��,E�O�j O��-E�O��-E` O��-E` O��-E` O P�[a �l kh  �a ,E` O�j O*a a l  _ �lvE[�k/*a ,FZ[�l/*�,FZU[OY��O P_ [a �l kh  ��,E` O�j O*a a l  �_ lvE[�k/*a ,FZ[�l/*�,FZU[OY��O R_ [a �l kh  �a ,E` O�j O*a a l  _ �lvE[�k/*a ,FZ[�l/*�,FZU[OY��O P_ [a �l kh  ��,E` O�j O*a a l  �_ lvE[�k/*a ,FZ[�l/*�,FZU[OY��O*a a l  ��lvE[�k/*a ,FZ[�l/*�,FZUOPUUOPY hY hUascr  ��ޭ
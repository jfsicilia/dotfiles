FasdUAS 1.101.10   ��   ��    k             l      ��  ��    U O
	Script for OmniGraffle.
	
	Deletes selected shape. It fixes all connections.
     � 	 	 � 
 	 S c r i p t   f o r   O m n i G r a f f l e . 
 	 
 	 D e l e t e s   s e l e c t e d   s h a p e .   I t   f i x e s   a l l   c o n n e c t i o n s . 
   
�� 
 l    ����  O        k          l   ��  ��    %  Get list of selected elements.     �   >   G e t   l i s t   o f   s e l e c t e d   e l e m e n t s .      r        n    
    1    
��
�� 
sele  4   �� 
�� 
cwin  m    ����   o      ���� 0 selected        l   ��  ��    / ) Continue if there is a selected graphic.     �   R   C o n t i n u e   i f   t h e r e   i s   a   s e l e c t e d   g r a p h i c .    ��   Z    ! "���� ! l    #���� # ?     $ % $ l    &���� & I   �� '��
�� .corecnte****       **** ' o    ���� 0 selected  ��  ��  ��   % m    ����  ��  ��   " k    ( (  ) * ) l   �� + ,��   + "  Get first selected graphic.    , � - - 8   G e t   f i r s t   s e l e c t e d   g r a p h i c . *  . / . r     0 1 0 n     2 3 2 4    �� 4
�� 
cobj 4 m    ����  3 o    ���� 0 selected   1 o      ���� 0 node   /  5 6 5 l   �� 7 8��   7 $  Links from parents to node.		    8 � 9 9 <   L i n k s   f r o m   p a r e n t s   t o   n o d e . 	 	 6  : ; : r    # < = < n    ! > ? > 2   !��
�� 
OgiL ? o    ���� 0 node   = o      ���� $0 linksfromparents linksFromParents ;  @ A @ l  $ $�� B C��   B #  Links from node to children.    C � D D :   L i n k s   f r o m   n o d e   t o   c h i l d r e n . A  E F E r   $ ) G H G n   $ ' I J I 2  % '��
�� 
OgoL J o   $ %���� 0 node   H o      ���� "0 linkstochildren linksToChildren F  K L K l  * *��������  ��  ��   L  M N M r   * . O P O J   * ,����   P o      ���� 0 newselection newSelection N  Q R Q O   / � S T S O   6 � U V U k   = � W W  X Y X l  = =��������  ��  ��   Y  Z [ Z l  = =�� \ ]��   \ 9 3 Link every parent node to all the children nodes.     ] � ^ ^ f   L i n k   e v e r y   p a r e n t   n o d e   t o   a l l   t h e   c h i l d r e n   n o d e s .   [  _ ` _ X   = � a�� b a k   M � c c  d e d r   M T f g f n   M P h i h 1   N P��
�� 
Olso i o   M N����  0 linkfromparent linkFromParent g o      ���� 0 
parentnode 
parentNode e  j k j X   U � l�� m l k   e � n n  o p o r   e n q r q n   e j s t s 1   f j��
�� 
Olde t o   e f���� 0 linktochild linkToChild r o      ���� 0 	childnode 	childNode p  u�� u O  o � v w v r   { � x y x J   { � z z  { | { o   { ~���� 0 
parentnode 
parentNode |  }�� } o   ~ ����� 0 	childnode 	childNode��   y J       ~ ~   �  1   � ���
�� 
Olso �  ��� � 1   � ���
�� 
Olde��   w l  o x ����� � I  o x���� �
�� .corecrel****      � null��   � �� ���
�� 
kocl � m   q t��
�� 
OGLi��  ��  ��  ��  �� 0 linktochild linkToChild m o   X Y���� "0 linkstochildren linksToChildren k  � � � l  � ��� � ���   � 5 / Delete physical link from parent node graphic.    � � � � ^   D e l e t e   p h y s i c a l   l i n k   f r o m   p a r e n t   n o d e   g r a p h i c . �  � � � I  � ��� ���
�� .coredelonull���    obj  � o   � �����  0 linkfromparent linkFromParent��   �  � � � l  � ��� � ���   � 9 3 If no newSelection so far, set it to first parent.    � � � � f   I f   n o   n e w S e l e c t i o n   s o   f a r ,   s e t   i t   t o   f i r s t   p a r e n t . �  ��� � Z   � � � ����� � l  � � ����� � =   � � � � � o   � ����� 0 newselection newSelection � J   � �����  ��  ��   � r   � � � � � J   � � � �  ��� � o   � ����� 0 
parentnode 
parentNode��   � o      ���� 0 newselection newSelection��  ��  ��  ��  0 linkfromparent linkFromParent b o   @ A���� $0 linksfromparents linksFromParents `  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � 8 2 Remove physical link to children's nodes graphic.    � � � � d   R e m o v e   p h y s i c a l   l i n k   t o   c h i l d r e n ' s   n o d e s   g r a p h i c . �  � � � X   � � ��� � � k   � � � �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
Olde � o   � ����� 0 linktochild linkToChild � o      ���� 0 	childnode 	childNode �  � � � l  � ��� � ���   � 2 , Delete physical link to child node graphic.    � � � � X   D e l e t e   p h y s i c a l   l i n k   t o   c h i l d   n o d e   g r a p h i c . �  � � � I  � ��� ���
�� .coredelonull���    obj  � o   � ����� 0 linktochild linkToChild��   �  � � � l  � ��� � ���   � 8 2 If no newSelection so far, set it to first child.    � � � � d   I f   n o   n e w S e l e c t i o n   s o   f a r ,   s e t   i t   t o   f i r s t   c h i l d . �  � � � Z   � � � ����� � l  � � ����� � =   � � � � � o   � ����� 0 newselection newSelection � J   � �����  ��  ��   � r   � � � � � J   � � � �  ��� � o   � ����� 0 	childnode 	childNode��   � o      ���� 0 newselection newSelection��  ��   �  ��� � l  � ���������  ��  ��  ��  �� 0 linktochild linkToChild � o   � ����� "0 linkstochildren linksToChildren �  � � � l  � ��� � ���   �   Delete selected node.    � � � � ,   D e l e t e   s e l e c t e d   n o d e . �  ��� � I  � ��� ���
�� .coredelonull���    obj  � o   � ����� 0 node  ��  ��   V 4  6 :�� �
�� 
OGWS � m   8 9����  T 4  / 3�� �
�� 
docu � m   1 2����  R  ��� � r   � � � � o   � ���� 0 newselection newSelection � n       � � � 1  ��
�� 
sele � 4  �� �
�� 
cwin � m  ���� ��  ��  ��  ��    m      � ��                                                                                  OGfl  alis    N  Mac HD                     Η��H+  �:�OmniGraffle.app                                                k���y�        ����  	                Applications    Η��      �k�    �:�  $Mac HD:Applications: OmniGraffle.app     O m n i G r a f f l e . a p p    M a c   H D  Applications/OmniGraffle.app  / ��  ��  ��  ��       �� � ���   � ��
�� .aevtoappnull  �   � **** � �� ���� � ��~
�� .aevtoappnull  �   � **** � k     � �  
�}�}  ��  �   � �|�{�|  0 linkfromparent linkFromParent�{ 0 linktochild linkToChild �  ��z�y�x�w�v�u�t�s�r�q�p�o�n�m�l�k�j�i�h�g�f
�z 
cwin
�y 
sele�x 0 selected  
�w .corecnte****       ****
�v 
cobj�u 0 node  
�t 
OgiL�s $0 linksfromparents linksFromParents
�r 
OgoL�q "0 linkstochildren linksToChildren�p 0 newselection newSelection
�o 
docu
�n 
OGWS
�m 
kocl
�l 
Olso�k 0 
parentnode 
parentNode
�j 
Olde�i 0 	childnode 	childNode
�h 
OGLi
�g .corecrel****      � null
�f .coredelonull���    obj �~�	*�k/�,E�O�j j ���k/E�O��-E�O��-E�OjvE�O*�k/ �*�k/ � ~�[��l kh  ��,E` O H�[��l kh �a ,E` O*�a l  _ _ lvE[�k/*�,FZ[�l/*a ,FZU[OY��O�j O�jv  _ kvE�Y h[OY��O 8�[��l kh �a ,E` O�j O�jv  _ kvE�Y hOP[OY��O�j UUO�*�k/�,FY hU ascr  ��ޭ
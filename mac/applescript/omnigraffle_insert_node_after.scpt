FasdUAS 1.101.10   ��   ��    k             l      ��  ��    � �
	Script for OmniGraffle.
	
	Inserts a new shape as child of selected shape. It fixes all connections.
	The new shape will be the same type and will have the same style of the
	selected shape.
     � 	 	� 
 	 S c r i p t   f o r   O m n i G r a f f l e . 
 	 
 	 I n s e r t s   a   n e w   s h a p e   a s   c h i l d   o f   s e l e c t e d   s h a p e .   I t   f i x e s   a l l   c o n n e c t i o n s . 
 	 T h e   n e w   s h a p e   w i l l   b e   t h e   s a m e   t y p e   a n d   w i l l   h a v e   t h e   s a m e   s t y l e   o f   t h e 
 	 s e l e c t e d   s h a p e . 
   
  
 l    � ����  O     �    k    �       l   ��  ��    %  Get list of selected elements.     �   >   G e t   l i s t   o f   s e l e c t e d   e l e m e n t s .      r        n    
    1    
��
�� 
sele  4   �� 
�� 
cwin  m    ����   o      ���� 0 selected        l   ��  ��    / ) Continue if there is a selected graphic.     �     R   C o n t i n u e   i f   t h e r e   i s   a   s e l e c t e d   g r a p h i c .   !�� ! Z    � " #���� " l    $���� $ ?     % & % l    '���� ' I   �� (��
�� .corecnte****       **** ( o    ���� 0 selected  ��  ��  ��   & m    ����  ��  ��   # k    � ) )  * + * l   �� , -��   , "  Get first selected graphic.    - � . . 8   G e t   f i r s t   s e l e c t e d   g r a p h i c . +  / 0 / r     1 2 1 n     3 4 3 4    �� 5
�� 
cobj 5 m    ����  4 o    ���� 0 selected   2 o      ���� 0 node   0  6 7 6 l   ��������  ��  ��   7  8 9 8 l   �� : ;��   : 1 + Get possible links from parents to node.		    ; � < < V   G e t   p o s s i b l e   l i n k s   f r o m   p a r e n t s   t o   n o d e . 	 	 9  = > = r    # ? @ ? n    ! A B A 2   !��
�� 
OgoL B o    ���� 0 node   @ o      ���� *0 linksnodetochildren linksNodeToChildren >  C D C l  $ $��������  ��  ��   D  E F E l  $ $�� G H��   G c ] Create new node and link new node to node. If there are parents for node, delete those links    H � I I �   C r e a t e   n e w   n o d e   a n d   l i n k   n e w   n o d e   t o   n o d e .   I f   t h e r e   a r e   p a r e n t s   f o r   n o d e ,   d e l e t e   t h o s e   l i n k s F  J K J l  $ $�� L M��   L &   and relink parents to new node.    M � N N @   a n d   r e l i n k   p a r e n t s   t o   n e w   n o d e . K  O P O O   $ � Q R Q O   + � S T S k   2 � U U  V W V l  2 2�� X Y��   X ( " Duplicate node and get reference.    Y � Z Z D   D u p l i c a t e   n o d e   a n d   g e t   r e f e r e n c e . W  [ \ [ I  2 <�� ] ^
�� .coreclon****      � **** ] o   2 3���� 0 node   ^ �� _��
�� 
insh _ n   4 8 ` a `  ;   7 8 a 2  4 7��
�� 
OGGr��   \  b c b r   = E d e d n   = C f g f 4   @ C�� h
�� 
cobj h m   A B������ g 2  = @��
�� 
OGGr e o      ���� 0 newnode newNode c  i j i r   F R k l k m   F G m m � n n 
 T o p i c l n       o p o 4   L Q�� q
�� 
cpar q m   O P����  p n   G L r s r m   H L��
�� 
ctxt s o   G H���� 0 newnode newNode j  t u t l  S S��������  ��  ��   u  v w v l  S S�� x y��   x   Link note to newNode.    y � z z ,   L i n k   n o t e   t o   n e w N o d e . w  { | { O  S } } ~ } r   a |  �  J   a e � �  � � � o   a b���� 0 node   �  ��� � o   b c���� 0 newnode newNode��   � J       � �  � � � 1   j o��
�� 
Olso �  ��� � 1   u z��
�� 
Olde��   ~ l  S ^ ����� � I  S ^���� �
�� .corecrel****      � null��   � �� ���
�� 
kocl � m   W Z��
�� 
OGLi��  ��  ��   |  � � � l  ~ ~��������  ��  ��   �  � � � l  ~ ~�� � ���   � - ' Relink every parent node to new node.     � � � � N   R e l i n k   e v e r y   p a r e n t   n o d e   t o   n e w   n o d e .   �  � � � X   ~ � ��� � � k   � � � �  � � � l  � ��� � ���   �   Get child of node.    � � � � &   G e t   c h i l d   o f   n o d e . �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
Olde � o   � ����� "0 linknodetochild linkNodeToChild � o      ���� 0 	childnode 	childNode �  � � � l  � ��� � ���   �   Link newNode to child.    � � � � .   L i n k   n e w N o d e   t o   c h i l d . �  � � � O  � � � � � r   � � � � � J   � � � �  � � � o   � ����� 0 newnode newNode �  ��� � o   � ����� 0 	childnode 	childNode��   � J       � �  � � � 1   � ���
�� 
Olso �  ��� � 1   � ���
�� 
Olde��   � l  � � ����� � I  � ����� �
�� .corecrel****      � null��   � �� ���
�� 
kocl � m   � ���
�� 
OGLi��  ��  ��   �  � � � l  � ��� � ���   � $  Delete physical link graphic.    � � � � <   D e l e t e   p h y s i c a l   l i n k   g r a p h i c . �  ��� � I  � ��� ���
�� .coredelonull���    obj  � o   � ����� "0 linknodetochild linkNodeToChild��  ��  �� "0 linknodetochild linkNodeToChild � o   � ����� *0 linksnodetochildren linksNodeToChildren �  ��� � l  � ���������  ��  ��  ��   T 4  + /�� �
�� 
OGWS � m   - .����  R 4  $ (�� �
�� 
docu � m   & '����  P  � � � l  � ��� � ���   �   Select new node.    � � � � "   S e l e c t   n e w   n o d e . �  ��� � r   � � � � � J   � � � �  ��� � o   � ����� 0 newnode newNode��   � n       � � � 1   � ���
�� 
sele � 4  � ��� �
�� 
cwin � m   � ����� ��  ��  ��  ��    m      � ��                                                                                  OGfl  alis    N  Mac HD                     Η��H+  �:�OmniGraffle.app                                                k���y�        ����  	                Applications    Η��      �k�    �:�  $Mac HD:Applications: OmniGraffle.app     O m n i G r a f f l e . a p p    M a c   H D  Applications/OmniGraffle.app  / ��  ��  ��     ��� � l     ��������  ��  ��  ��       
�� � � � � � � �������   � ����������������
�� .aevtoappnull  �   � ****�� 0 selected  �� 0 node  �� *0 linksnodetochildren linksNodeToChildren�� 0 newnode newNode�� 0 	childnode 	childNode��  ��   � � ��~�} � ��|
� .aevtoappnull  �   � **** � k     � � �  
�{�{  �~  �}   � �z�z "0 linknodetochild linkNodeToChild �  ��y�x�w�v�u�t�s�r�q�p�o�n�m�l m�k�j�i�h�g�f�e�d�c
�y 
cwin
�x 
sele�w 0 selected  
�v .corecnte****       ****
�u 
cobj�t 0 node  
�s 
OgoL�r *0 linksnodetochildren linksNodeToChildren
�q 
docu
�p 
OGWS
�o 
insh
�n 
OGGr
�m .coreclon****      � ****�l 0 newnode newNode
�k 
ctxt
�j 
cpar
�i 
kocl
�h 
OGLi
�g .corecrel****      � null
�f 
Olso
�e 
Olde�d 0 	childnode 	childNode
�c .coredelonull���    obj �| �� �*�k/�,E�O�j j ���k/E�O��-E�O*�k/ �*�k/ ���*�-6l O*�-�i/E�O��a -a k/FO*a a l  ��lvE[�k/*a ,FZ[�l/*a ,FZUO R�[a �l kh  �a ,E` O*a a l  �_ lvE[�k/*a ,FZ[�l/*a ,FZUO�j [OY��OPUUO�kv*�k/�,FY hU � �b ��b  �   � �  � �  ��a�`�_ �  ��^�]�\ �  ��[ �
�[ 
docu � � � �  U n t i t l e d
�^ 
OGWS�] 
�\ kfrmID  
�a 
OGGr�`�
�_ kfrmID   � �Z ��Z  �   � �  � �  ��Y�X�W �  ��V�U�T �  ��S �
�S 
docu � � � �  U n t i t l e d
�V 
OGWS�U 
�T kfrmID  
�Y 
OGGr�X�
�W kfrmID   �  � �  ��R�Q�P �  ��O�N�M �  ��L �
�L 
docu � � � �  U n t i t l e d
�O 
OGWS�N 
�M kfrmID  
�R 
OGGr�Q�
�P kfrmID   �  � �  ��K�J�I �  ��H�G�F �  ��E �
�E 
docu � � � �  U n t i t l e d
�H 
OGWS�G 
�F kfrmID  
�K 
OGGr�J
�I kfrmID  ��  ��   ascr  ��ޭ
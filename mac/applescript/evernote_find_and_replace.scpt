FasdUAS 1.101.10   ��   ��    k             l      ��  ��   VP

Find and replace based on
Evernote Note Folder
Version 1.02
2018/03/15


SCRIPT INFORMATION
Retrieves the note's Mac folder from the database


TERMS OF USE:

CHANGELOG:


RECOMMENDED INSTALLATION AND USAGE INSTRUCTIONS:
- the database folder is hard-coded for variable targetDatabaseFolder and will have to be adjusted for the user

     � 	 	� 
 
 F i n d   a n d   r e p l a c e   b a s e d   o n 
 E v e r n o t e   N o t e   F o l d e r 
 V e r s i o n   1 . 0 2 
 2 0 1 8 / 0 3 / 1 5 
 
 
 S C R I P T   I N F O R M A T I O N 
 R e t r i e v e s   t h e   n o t e ' s   M a c   f o l d e r   f r o m   t h e   d a t a b a s e 
 
 
 T E R M S   O F   U S E : 
 
 C H A N G E L O G : 
 
 
 R E C O M M E N D E D   I N S T A L L A T I O N   A N D   U S A G E   I N S T R U C T I O N S : 
 -   t h e   d a t a b a s e   f o l d e r   i s   h a r d - c o d e d   f o r   v a r i a b l e   t a r g e t D a t a b a s e F o l d e r   a n d   w i l l   h a v e   t o   b e   a d j u s t e d   f o r   t h e   u s e r 
 
   
  
 l     ��������  ��  ��        p         ������ 0 anote aNote��        p         ������  0 targetfilepath targetFilepath��        l     ��������  ��  ��        l     ����  r         m        �   � / U s e r s / j u a n / L i b r a r y / A p p l i c a t i o n   S u p p o r t / c o m . e v e r n o t e . E v e r n o t e / a c c o u n t s / w w w . e v e r n o t e . c o m / 6 9 4 7 4 4 /  o      ����  0 databasefolder databaseFolder��  ��        l   	 ����  r    	    b       !   o    ����  0 databasefolder databaseFolder ! m     " " � # # H l o c a l N o t e S t o r e / L o c a l N o t e S t o r e . s q l i t e  o      ���� 0 databasefile databaseFile��  ��     $ % $ l     ��������  ��  ��   %  & ' & l     ��������  ��  ��   '  ( ) ( l  
  *���� * r   
  + , + I   
 �������� 0 
getnoteuid 
getNoteUID��  ��   , o      ���� 0 noteuid noteUID��  ��   )  - . - l    /���� / r     0 1 0 b     2 3 2 b     4 5 4 o    ����  0 databasefolder databaseFolder 5 m     6 6 � 7 7  c o n t e n t / 3 I    �� 8����  0 getlocalfolder getLocalFolder 8  9 : 9 o    ���� 0 databasefile databaseFile :  ;�� ; o    ���� 0 noteuid noteUID��  ��   1 o      ���� 0 localfolder localFolder��  ��   .  < = < l     �� > ?��   > I C tell application "Finder" to open folder localFolder as POSIX file    ? � @ @ �   t e l l   a p p l i c a t i o n   " F i n d e r "   t o   o p e n   f o l d e r   l o c a l F o l d e r   a s   P O S I X   f i l e =  A B A l     ��������  ��  ��   B  C D C l     ��������  ��  ��   D  E F E l     �� G H��   G M G----------------------------------------------------------GetvNote Guid    H � I I � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - G e t v N o t e   G u i d F  J K J l     �� L M��   L Q K----------------------------------------------------------- Parse from link    M � N N � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -   P a r s e   f r o m   l i n k K  O P O i      Q R Q I      �������� 0 
getnoteuid 
getNoteUID��  ��   R k     J S S  T U T l     ��������  ��  ��   U  V W V O     2 X Y X k    1 Z Z  [ \ [ r    
 ] ^ ] e     _ _ 1    ��
�� 
EV15 ^ o      ���� 0 theselection theSelection \  ` a ` r     b c b n     d e d 4    �� f
�� 
cobj f m    ����  e o    ���� 0 theselection theSelection c o      ���� 0 thenote theNote a  g h g r     i j i n     k l k 1    ��
�� 
EV24 l o    ���� 0 thenote theNote j o      ���� 0 thelink theLink h  m n m l   ��������  ��  ��   n  o p o r     q r q 1    ��
�� 
EV15 r o      ���� 0 _sel   p  s t s l   �� u v��   u , & Gets the Note(s) Selected in Evernote    v � w w L   G e t s   t h e   N o t e ( s )   S e l e c t e d   i n   E v e r n o t e t  x y x Z    / z {���� z >    " | } | o    ���� 0 _sel   } J    !����   { r   % + ~  ~ n   % ) � � � 4  & )�� �
�� 
cobj � m   ' (����  � o   % &���� 0 _sel    o      ���� 0 anote aNote��  ��   y  ��� � l  0 0��������  ��  ��  ��   Y m      � �|                                                                                  EVRN  alis      Mac HD                         BD ����Evernote.app                                                   ����            ����  
 cu             Applications  /:Applications:Evernote.app/    E v e r n o t e . a p p    M a c   H D  Applications/Evernote.app   / ��   W  � � � l  3 3��������  ��  ��   �  � � � r   3 8 � � � m   3 4 � � � � �  / � n      � � � 1   5 7��
�� 
txdl � 1   4 5��
�� 
ascr �  � � � r   9 > � � � n   9 < � � � 2  : <��
�� 
citm � o   9 :���� 0 thelink theLink � o      ���� 0 
parsedlist 
parsedList �  � � � r   ? E � � � n   ? C � � � 4   @ C�� �
�� 
cobj � m   A B����  � o   ? @���� 0 
parsedlist 
parsedList � o      ���� 0 noteuid noteUID �  � � � L   F H � � o   F G���� 0 noteuid noteUID �  ��� � l  I I��������  ��  ��  ��   P  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � - '---------------------- Get Local Folder    � � � � N - - - - - - - - - - - - - - - - - - - - - -   G e t   L o c a l   F o l d e r �  � � � l     �� � ���   � : 4----------------------  Retrive from sqlite database    � � � � h - - - - - - - - - - - - - - - - - - - - - -     R e t r i v e   f r o m   s q l i t e   d a t a b a s e �  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� �����  0 getlocalfolder getLocalFolder �  � � � o      ���� 0 databasefile databaseFile �  ��� � o      ���� 0 noteuid noteUID��  ��   � k      � �  � � � l     ��������  ��  ��   �  � � � r      � � � b      � � � b      � � � m      � � � � � \ S E L E C T   Z L O C A L U U I D   F R O M   Z e n N o t e   w h e r e   Z G U I D   =   ' � o    ���� 0 noteuid noteUID � m     � � � � �  ' ; � o      ���� 0 sqltext sqlText �  ��� � r     � � � n     � � � 2   ��
�� 
citm � l    ����� � I   �� ���
�� .sysoexecTEXT���     TEXT � b     � � � b     � � � b     � � � b     � � � b     � � � b     � � � b     � � � m    	 � � � � �  s q l i t e 3   � 1   	 
��
�� 
quot � o    ���� 0 databasefile databaseFile � 1    ��
�� 
quot � m     � � � � �    � 1    ��
�� 
quot � o    ���� 0 sqltext sqlText � 1    �
� 
quot��  ��  ��   � o      �~�~ 0 localfolder localFolder��   �  � � � l     �}�|�{�}  �|  �{   �  � � � l     �z�y�x�z  �y  �x   �  � � � l    ( ��w�v � r     ( � � � 4     &�u �
�u 
psxf � l  " % ��t�s � b   " % � � � o   " #�r�r 0 localfolder localFolder � m   # $ � � � � �  / c o n t e n t . e n m l�t  �s   � o      �q�q  0 targetfilepath targetFilepath�w  �v   �  � � � l     �p�o�n�p  �o  �n   �  � � � l     �m�l�k�m  �l  �k   �  � � � l  ) w ��j�i � O   ) w � � � k   - v � �  � � � I  - 4�h�g �
�h .EVRNonwnnull��� ��� null�g   � �f ��e
�f 
EV17 � o   / 0�d�d 0 anote aNote�e   �  ��c � O   5 v � � � k   ; u � �  �  � O  ; Y I  F X�b
�b .prcskprsnull���     ctxt m   F I �  s �a�`
�a 
faal J   L T 	
	 m   L O�_
�_ eMdsKcmd
 �^ m   O R�]
�] eMdsKctl�^  �`   4   ; C�\
�\ 
prcs m   ? B �  E v e r n o t e  �[ O  Z u I  e t�Z
�Z .prcskprsnull���     ctxt m   e h �  s �Y�X
�Y 
faal J   k p �W m   k n�V
�V eMdsKcmd�W  �X   4   Z b�U
�U 
prcs m   ^ a �  E v e r n o t e�[   � m   5 8�                                                                                  sevs  alis    P  Mac HD                         BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c   H D  -System/Library/CoreServices/System Events.app   / ��  �c   � m   ) *|                                                                                  EVRN  alis      Mac HD                         BD ����Evernote.app                                                   ����            ����  
 cu             Applications  /:Applications:Evernote.app/    E v e r n o t e . a p p    M a c   H D  Applications/Evernote.app   / ��  �j  �i   �  l     �T�S�R�T  �S  �R    !  l     �Q�P�O�Q  �P  �O  ! "#" l     �N$%�N  $ 9 3 do shell script "open -a TextEdit  targetFilepath"   % �&& f   d o   s h e l l   s c r i p t   " o p e n   - a   T e x t E d i t     t a r g e t F i l e p a t h "# '(' l     �M)*�M  ) $  display dialog targetFilepath   * �++ <   d i s p l a y   d i a l o g   t a r g e t F i l e p a t h( ,-, l     �L�K�J�L  �K  �J  - ./. l  xL0�I�H0 O   xL121 k   ~K33 454 I  ~ ��G�F�E
�G .miscactvnull��� ��� null�F  �E  5 676 I  � ��D8�C
�D .aevtodocnull  �    alis8 o   � ��B�B  0 targetfilepath targetFilepath�C  7 9:9 l  � ��A�@�?�A  �@  �?  : ;<; O   � �=>= r   � �?@? m   � ��>
�> boovtrue@ 1   � ��=
�= 
pmnd> l  � �A�<�;A 6  � �BCB 2  � ��:
�: 
cwinC F   � �DED >  � �FGF 1   � ��9
�9 
ID  G l  � �H�8�7H e   � �II n   � �JKJ 1   � ��6
�6 
ID  K 4  � ��5L
�5 
cwinL m   � ��4�4 �8  �7  E =  � �MNM 1   � ��3
�3 
pvisN m   � ��2
�2 boovtrue�<  �;  < OPO r   � �QRQ J   � �SS TUT m   � ��1�1U VWV m   � ��0�0 oW XYX m   � ��/�/�Y Z�.Z m   � ��-�-��.  R n      [\[ 1   � ��,
�, 
pbnd\ 4  � ��+]
�+ 
cwin] m   � ��*�* P ^_^ l  � ��)�(�'�)  �(  �'  _ `a` l  � ��&�%�$�&  �%  �$  a b�#b O   �Kcdc k   �Jee fgf l  � ��"hi�"  h   open the Replace dialog   i �jj 0   o p e n   t h e   R e p l a c e   d i a l o gg klk O  � �mnm I  � ��!op
�! .prcskprsnull���     ctxto m   � �qq �rr  fp � s�
�  
faals J   � �tt uvu m   � ��
� eMdsKoptv w�w m   � ��
� eMdsKcmd�  �  n 4   � ��x
� 
prcsx m   � �yy �zz  T e x t E d i tl {|{ l  � ��}~�  } ) # place cursor in the "Find" portion   ~ � F   p l a c e   c u r s o r   i n   t h e   " F i n d "   p o r t i o n| ��� O  ���� I 
���
� .prcskprsnull���     ctxt� m  
�� ���  f� ���
� 
faal� J  �� ��� m  �
� eMdsKcmd�  �  � 4   ���
� 
prcs� m  �� ���  T e x t E d i t� ��� l ����  � � � paste the text from the clipboard . This is meant to be used if you copied what you wanted changed from Evernote before running this script.   � ���   p a s t e   t h e   t e x t   f r o m   t h e   c l i p b o a r d   .   T h i s   i s   m e a n t   t o   b e   u s e d   i f   y o u   c o p i e d   w h a t   y o u   w a n t e d   c h a n g e d   f r o m   E v e r n o t e   b e f o r e   r u n n i n g   t h i s   s c r i p t .� ��� O 6��� I &5���
� .prcskprsnull���     ctxt� m  &)�� ���  v� ���
� 
faal� J  ,1�� ��� m  ,/�
� eMdsKcmd�  �  � 4  #��
� 
prcs� m  "�� ���  T e x t E d i t� ��� O 7J��� I BI���

� .prcskprsnull���     ctxt� 1  BE�	
�	 
tab �
  � 4  7?��
� 
prcs� m  ;>�� ���  T e x t E d i t�  d m   � ����                                                                                  sevs  alis    P  Mac HD                         BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c   H D  -System/Library/CoreServices/System Events.app   / ��  �#  2 m   x {��|                                                                                  ttxt  alis      Mac HD                         BD ����TextEdit.app                                                   ����            ����  
 cu             Applications  /:Applications:TextEdit.app/    T e x t E d i t . a p p    M a c   H D  Applications/TextEdit.app   / ��  �I  �H  / ��� l     ����  �  �  � ��� l Mn���� T  Mn�� k  Ri�� ��� Z Rc����� > R[��� n  RY��� 1  UY� 
�  
prun� m  RU��|                                                                                  ttxt  alis      Mac HD                         BD ����TextEdit.app                                                   ����            ����  
 cu             Applications  /:Applications:TextEdit.app/    T e x t E d i t . a p p    M a c   H D  Applications/TextEdit.app   / ��  � m  YZ��
�� boovtrue�  S  ^_�  �  � ���� I di�����
�� .sysodelanull��� ��� nmbr� m  de���� ��  ��  �  �  � ��� l     ��������  ��  ��  � ��� l o������� O o���� r  u���� m  uv��
�� boovtrue� n      ��� 1  ~���
�� 
pisf� 4  v~���
�� 
prcs� m  z}�� ���  E v e r n o t e� m  or���                                                                                  sevs  alis    P  Mac HD                         BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��  � ��� l     ��������  ��  ��  � ���� l �>������ O  �>��� k  �=�� ��� I �������
�� .coreclosnull���     obj � 4  �����
�� 
cwin� m  ������ ��  � ��� I �������
�� .EVRNonwnnull��� ��� null��  � �����
�� 
EV17� o  ������ 0 anote aNote��  � ��� O  �;��� k  �:�� ��� O ����� I ������
�� .prcskprsnull���     ctxt� m  ���� ���  l� �����
�� 
faal� J  ���� ���� m  ����
�� eMdsKcmd��  ��  � 4  �����
�� 
prcs� m  ���� ���  E v e r n o t e� ��� I �������
�� .sysodelanull��� ��� nmbr� m  ���� ?�      ��  � ��� O ����� I �������
�� .prcskprsnull���     ctxt� 1  ����
�� 
tab ��  � 4  �����
�� 
prcs� m  ���� ���  E v e r n o t e� ��� I �������
�� .sysodelanull��� ��� nmbr� m  ���� ?�      ��  � ��� O ��� � I ������
�� .prcskcodnull���     **** m  �� �  4 9��    4  ����
�� 
prcs m  �� �  E v e r n o t e�  I ����	��
�� .sysodelanull��� ��� nmbr	 m  ��

 ?�      ��    O � I 	����
�� .prcskcodnull���     **** m  	 �  5 1��   4  ���
�� 
prcs m   �  E v e r n o t e  I ����
�� .sysodelanull��� ��� nmbr m   ?�      ��    O 8 I %7��
�� .prcskprsnull���     ctxt m  %( �    s ��!��
�� 
faal! J  +3"" #$# m  +.��
�� eMdsKcmd$ %��% m  .1��
�� eMdsKctl��  ��   4  "��&
�� 
prcs& m  !'' �((  E v e r n o t e )��) l 99��������  ��  ��  ��  � m  ��**�                                                                                  sevs  alis    P  Mac HD                         BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c   H D  -System/Library/CoreServices/System Events.app   / ��  � +��+ l <<��������  ��  ��  ��  � m  ��,,|                                                                                  EVRN  alis      Mac HD                         BD ����Evernote.app                                                   ����            ����  
 cu             Applications  /:Applications:Evernote.app/    E v e r n o t e . a p p    M a c   H D  Applications/Evernote.app   / ��  ��  ��  ��       ��-./0��  - �������� 0 
getnoteuid 
getNoteUID��  0 getlocalfolder getLocalFolder
�� .aevtoappnull  �   � ****. �� R����12���� 0 
getnoteuid 
getNoteUID��  ��  1 �������������� 0 theselection theSelection�� 0 thenote theNote�� 0 thelink theLink�� 0 _sel  �� 0 
parsedlist 
parsedList�� 0 noteuid noteUID2 
 ��������� ���������
�� 
EV15
�� 
cobj
�� 
EV24�� 0 anote aNote
�� 
ascr
�� 
txdl
�� 
citm�� �� K� /*�,EE�O��k/E�O��,E�O*�,E�O�jv ��k/E�Y hOPUO���,FO��-E�O���/E�O�OP/ �� �����34����  0 getlocalfolder getLocalFolder�� ��5�� 5  ������ 0 databasefile databaseFile�� 0 noteuid noteUID��  3 ���������� 0 databasefile databaseFile�� 0 noteuid noteUID�� 0 sqltext sqlText�� 0 localfolder localFolder4  � � ��� �����
�� 
quot
�� .sysoexecTEXT���     TEXT
�� 
citm��  �%�%E�O��%�%�%�%�%�%�%j �-E�0 ��6����78��
�� .aevtoappnull  �   � ****6 k    >99  ::  ;;  (<<  -==  �>>  �?? .@@ �AA �BB �����  ��  ��  7  8 A �� "������ 6������ ��������������������������C����~�}�|�{�z�y�xyq�w������v�u�t��s�r�����q'��  0 databasefolder databaseFolder�� 0 databasefile databaseFile�� 0 
getnoteuid 
getNoteUID�� 0 noteuid noteUID��  0 getlocalfolder getLocalFolder�� 0 localfolder localFolder
�� 
psxf��  0 targetfilepath targetFilepath
�� 
EV17�� 0 anote aNote
�� .EVRNonwnnull��� ��� null
�� 
prcs
�� 
faal
�� eMdsKcmd
�� eMdsKctl
�� .prcskprsnull���     ctxt
�� .miscactvnull��� ��� null
�� .aevtodocnull  �    alis
�� 
cwinC  
�� 
ID  
� 
pvis
�~ 
pmnd�}�| o�{��z��y 
�x 
pbnd
�w eMdsKopt
�v 
tab 
�u 
prun
�t .sysodelanull��� ��� nmbr
�s 
pisf
�r .coreclosnull���     obj 
�q .prcskcodnull���     ****��?�E�O��%E�O*j+ E�O��%*��l+ %E�O*���%/E�O� K*��l Oa  <*a a / a a a a lvl UO*a a / a a a kvl UUUOa  �*j O�j O*a -a [[a ,\Z*a k/a ,E9\[a  ,\Ze8A1 	e*a !,FUOa "a #a $a %a &v*a k/a ',FOa  l*a a (/ a )a a *a lvl UO*a a +/ a ,a a kvl UO*a a -/ a .a a kvl UO*a a // 	_ 0j UUUO  hZa a 1,e Y hOkj 2[OY��Oa  e*a a 3/a 4,FUO� �*a k/j 5O*��l Oa  �*a a 6/ a 7a a kvl UOa 8j 2O*a a 9/ 	_ 0j UOa 8j 2O*a a :/ 	a ;j <UOa 8j 2O*a a =/ 	a >j <UOa 8j 2O*a a ?/ a @a a a lvl UOPUOPU ascr  ��ޭ
     �     �     �     �     �    INITIALISE.GAME�    DRAW.ROOM�     TMOV�    MOVE.PLAYER�     TMISSIL�     TMISSILEEN�    MOVE.MISSILE�     TCHEC�    CHECK.OPEN.CLOSE.WAKE�    MON.TIMER�     CURR.MONSTE�    MOVE.MONSTER�     ENERG�     GAME.DAT�
     SIZ�     MAX.DEPT�     LEVE�     X.STAR�     Y.STAR�    DOORS�    DOOR.OPEN�    DOOR.TIMER�    MON.GRAPHIC�    MON.XI�    MON.YI�    MON.SPEED�    MON.IQ�    MON.ALIVE�     LIVE�     SCOR�     X.ROO�     Y.ROO�     X.PLAYE�     Y.PLAYE�     XI.PLAYE�     YI.PLAYE�     X.FLI�    KEY.COUNT�     �
     FIR�    HIT.WALL�     FLOOR.CENTR�    ANIMATE.UP�    ANIMATE.DOWN�    COLLECT.OBJECT�     X.MISSIL�     Y.MISSIL�     XI.MISSIL�     YI.MISSIL�    REMOVE.OBJECT�     �     MOVE�    CHECK.UNLOCK�    ADD.SCORE�     �     �    RANDOM.SEED.ROOM�    DRAW.ROOM.OUTLINE�    READ.MAP�    MAKE.DOOR�    RANDOM.NEXT�
     SEE�    DRAW.WALL.ELEMENT�     CONTENT�     X.CONTENT�     Y.CONTENT�     CONTNT�    DRAW.SCORE�    DRAW.KEYS�    DRAW.ENERGY�    DRAW.DOOR�    CREATE.MONSTER�     �    REDIRECT.MONSTER�    HIT.PLAYER�    HIT.MONSTER�    KILL.MONSTER�	     IM�     OFFSE�	     RO�     �     �     �
     TYP�     C�    LINE.DRAW�     X�     Y�     C�    RANDOM.SEED�     �
     BIT�                                                                                                                                                                              d ��n ̀*** Atic Atac ***�x ��� � %��� � ;��� ��� �� K�Cο� V��� �� h�Bο� v,@�� ���� �� ��Yο� ���� � � ��,@�� � ����  �0� � A�(C�	� � �-@�� ���� ��� ̀initialise game�� ��� %�����aticatac.gfx�0�`@�����aticatac.dat��4"̀-initialise level and dimensions, put at start�,0L�0E�6+0@�60D�C0D�/@̀(door records, created when room entered.�#J��PC��̀Values 0-7 see map.py�7T��\C��̀)true if door is open, false if shut/wall.�,^��lC��̀timer for door opening/closing�h̀monster records�*r��}D��̀monster graphic (when alive)�7|���D���D��̀$movement use sprite.x functions etc.�J��� �D���D��̀7event variables for movement. timer -1 means not inuse.�l����D��̀^intelligence ; probability out of 100 of redirection / move. If this is 100 then invulnerable.�<����D��̀.flag indicating alive e.g. not in wakeup mode.��̀initialise player���0C��0@��06��0C� �0Ad��0B@�0Ax� 0@�/0@�>0@����JC��̀key counts 1-3���Z0A�C�JZ�0@̻��������̀Move Player.������ V���a�a0� �/��
� )/�&0 � %A��0��>0�A! �$A�:0 �/%A��$D�@��CV ��� �$C�(A���>���N��!B@�+x)�!Ax�+x��k��	X�z/@�b��!B@�-P(�!Ax�-P�l�z0�CU�v+0+!A������ ;������+0+ A������ ;��������������@�B�Jο�������	��a/@�	�� v-@�� v0�� BV���0��0���0 "C��0/"C�����)��0@��0��C�!A�"C��0��C�!A�"C����� ��*��4��>̀Collect object�H��R����\�B���f�+������p��z���̀Move missile������ �����A��CX�������0� ����0� ������!B@�+z��0!������!Ax�+z��0!������+ v��A��� v0!A�����������̀Hit Wall����k�����0��$0�B@!xʠ�B@ x���.0�Ax!xʠ�Ax x���8��!B@�,x(�!Ax�-J�B0!A�+B@�0A�L�)(C��%V�\(Cο�0�� ��0D@!�0��`��j��!Ax�,x(�!B@�-J�t0@�+B@�0B�~�)(C��&��\(Cο�0�� !A�0Cp!�0��������� ;��������$�̀Check unlocked in direction d����
��)�����P�(C�/@(\�0@���JP�(C�+@��JP�(C�0JP�(C�!A��P�0D�\�0��l�0!A� � � 0 � �" +""�!
�0@�� !ʂ� !�(�CG� �`��0A�� ʂ� �(�Cx� �D��0B�� ʂ� �(�CG� �`�(�0C�� !Aʂ� !A�(�Cx� �D�	2�<T��<��F��P��Z��d̀	Draw room�n��x� ;����Z�L�S�
����������Z����+����+0@��qB�����qA�̳�#���C�ƋT�ˀL�+ Aˀ ��ˀ,���%�̀First is right, second is down� ���L�+����!A����@�L$C�����L�+��!A������C�L��'���L�+��������A�L����B�L$C��(�̀!What's in the middle on the floor��z0@�̀$D4 pit, $D5 ladder���L(�A@��z0�CT �B���+0@�z0�CT��+0!A�z0�CU���"̀Wall decoration�,�Z0@�C�6����@���(�C`�0@(+0@�JS0`̲��(BοS0!S�T��Z�SʁCP ��(A��B��^��h��;r̀4Anything to pick up $DA-$DC keys 1-3 $EC-$EE energy.�|�0@���L(�B@�������0��&B@� A@�������0��&Ap� Ax!\�������0�&F�
������!���,C��0
 �Cl����0� �CZ̳������Z0@�D� �Z�0!A̻���z/@��z�B@!P�Ax!P����/@��B��������߀1 Up��A��C�DU�D������(���8��	���+@��L0A�����CV��AĂL!A�"P DB�v���&��0�@��CV���	: v0!A�D K0@� h0@� �0@� �0@�N��X��b̀read map�l��v���L�+� � ���L0�    " +""���������̀remove object������+� � ���� � 0    " +""���+� � ʜ ���� ʜ �(�A�	�Ɯ ��������'�̀ check open/close in current room���� ���
�Z�L� �Z0@�C�*�lZ�+@(��+lZ��4L0BV̲\ZοL0FP�>lZ�0�� L�H\Z�0\Z�0@�
R�JZ��\��f��p�Z0@�C�z� �Z�-@(�T�0@��ZZ������������̀Create monster����
��ZL��G�̀@DD pumpkin, E0 jelly E3 spider thing  E6 spikey thing E9 = ghost���Z�o�Z0�E����Z0@��L�0AP���L�0N���Z0A��L�0@��L�0D���Z0B��L�0C��L�0H���Z0C��L�0J��L�0J���Z0D��L�0Ad��L�0^�	}L�0�C] Z"C �C��	�L�0�B�"B!A��L�0�B�"B!A�	 �L�0�� Ad�$	�L�0��.	o0A +#B�_�8	�L�0�Cʆ�L�#o���B	�L J��CXăB@� A@ʃAx� A@�L	��V	��`	̀Move monster�j	��
t	� �L��
~	��L���	�� �L���L���
�	� � �%�	 0��L J� �L�� 0��L J� �L���	�L J� � ��	�� !B@�+x��L�0!�L���	�� !Ax�+x��L�0!�L���	��Ad�-�Lο�vL���	��@�L J�Lο��L���	��A�L J�Lο��L���	���	���	�L J�����$C�(A� �CX���D�� 
���+ �L��

 �L�0@��L�0��
�L J�}L���@�
��(
��2
��<
��F
̀redirect a monster�P
��
Z
�vL��d
�L�0�!��L J���n
�L�0�!��L J���x
���
���
̀monster hit player��
��
�
��L���
��L�-Ad��
 �0 �!J!�E���
���
 �0 �!B��
���
�8��
�
��L���
���
��̀missile hit monster���
��L��"��L�-Ad�
,��L��	6 v0���	@�<r��J��T��^��h̀
bump score�r��
|�<L����0� L�����������'�̀ kill monster if not invulnerable����
���L�����L�-Ad���L J���� �L�0!A���L�0����������@̀9create doors in given direction using preset random seed.���&���L��0L0L(G�:P�0L�\�0��l�0!A�D�L0D�\�0��N�L+D�l�0�FP� Ad�X�L+@��J��b̀door.open(d) = true�2l̀+print d,doors(d),door.open(d),door.timer(d)�v������̀	draw door����
��J�������0�CH̲++@��0�C@�	��/D���\�0���0� �P�(C���������@���D���������̀draw offset element���������S����� � ��� 0B@ �!P� 0Ax!A@���0@� �0B��0B� 0DP! �*�0A)0C�*4S0S �� 0B@!A@!`��0$A� 0Ax P ��>�0A� 0B@ A@�H��R� � !_����@��^�^�\�S��� � !`�f��p��z̀draw the energy bar������8������ � 0f���0� �"#Ad�̲�-@��0@���D@� ��@���D�  L���D@� ��A���D@ ��  L���D@� ��G���D�  L��������̀draw the score��������&�ߔ�00000 �����E���F��B���DD�P��A�����̀draw the keys�$��.�(��8�Z� � � 0AP�B�D@�  F��@�D�  h�L�Z0A�C��V 0D@ �Z!A�"U!E�`��CY Z��A��� � � jߔ�00 ��JZ���B��  K�  X�t��~������̀animate up ladder����������� ������� 0!P�P���@��CV �� $B�(A��B@�  Ax����J�����0Ax `�0B@������� ̀animate down pit�
�������Z������������(�Z0A�E�2��0@�J�<�0�"J�!F���B@!��Ax!���G�B@ ��Ax ��P��B�!Z���B@!��Ax!���@�B@ ��Ax ��d��n��x�����4�̀-draw outline room type 1 (cave) type 2 (room)����
��q���	� 0!A�����G�B@�BA�	���0A���@�r����L�x���X�q���h�y����t�t���o�c���w�O����r�@�������@�r���m�z���z�m���r�@��"��,�A@�x����@�C@�Bx�6�A@�x����G�C@�Bx�@��J��OT̀Hline.draw drawer, support routine for room draw, draws in four quadrants�^��h� � �� r�� �0 "B B@� 0 "B Ax�	|� ,@�	�� /@� ��B@�Ax�� ��B@�Ax�D@!� �,��B@�Co!Ax��Co! ��B@�Co!Ax�D@!�Co! ������ �(�� ���D@! �(�D@!� ��� �Co!(��Co! ���D@! �Co!(�D@!�Co! ����� 0�(0 ��������̀random functions���
�0L��	�0L�&��0��:�Z � �B��D�0 "e +"DmZG  "Ii�N��X��b����
l�Z�I�v��0@��0�RMEYx���Z0A�D��I0�(A���0�$A���I��0�*�KP@�������
�̀SFX� 
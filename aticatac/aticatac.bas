     �     �     �     �     �    INITIALISE.GAME�    DRAW.ROOM�     TMOV�    MOVE.PLAYER�     TMISSIL�     TMISSILEEN�    MOVE.MISSILE�     TCHEC�    CHECK.OPEN.CLOSE.WAKE�    MON.TIMER�     CURR.MONSTE�    MOVE.MONSTER�     ENERG�     GAME.DAT�
     SIZ�     MAX.DEPT�     LEVE�     X.STAR�     Y.STAR�    DOORS�    DOOR.OPEN�    DOOR.TIMER�    MON.GRAPHIC�    MON.XI�    MON.YI�    MON.SPEED�    MON.IQ�    MON.ALIVE�     LIVE�     SCOR�     X.ROO�     Y.ROO�     X.PLAYE�     Y.PLAYE�     XI.PLAYE�     YI.PLAYE�     X.FLI�    KEY.COUNT�     �
     FIR�    HIT.WALL�     FLOOR.CENTR�    ANIMATE.UP�    ANIMATE.DOWN�     X.MISSIL�     Y.MISSIL�     XI.MISSIL�     YI.MISSIL�     �     MOVE�    CHECK.UNLOCK�    ADD.SCORE�     �     �    RANDOM.SEED.ROOM�    DRAW.ROOM.OUTLINE�    READ.MAP�    MAKE.DOOR�    RANDOM.NEXT�
     SEE�    DRAW.WALL.ELEMENT�    DRAW.SCORE�    DRAW.KEYS�    DRAW.ENERGY�    DRAW.DOOR�    CREATE.MONSTER�     �    REDIRECT.MONSTER�    HIT.PLAYER�    HIT.MONSTER�    KILL.MONSTER�	     IM�     OFFSE�	     RO�     �     �     �
     TYP�     C�    LINE.DRAW�     X�     Y�     C�    RANDOM.SEED�     �     ROOM.MAS�
     BIT�                                                                                                                                                                                                                                                                   d ��n ̀*** Atic Atac ***�x ��� � %��� � ;��� ��� �� K�Cο� V��� �� h�Bο� v,@�� ���� �� ��Yο� ���� � � ��,@�� � ����  �0� � A�(C�	� � �-@�� ���� ��� ̀initialise game�� ��� %�����aticatac.gfx�0�`@�����aticatac.dat��4"̀-initialise level and dimensions, put at start�,0L�0E�6+0@�60D�C0D�/@̀(door records, created when room entered.�#J��PC��̀Values 0-7 see map.py�7T��\C��̀)true if door is open, false if shut/wall.�,^��lC��̀timer for door opening/closing�h̀monster records�*r��}D��̀monster graphic (when alive)�7|���D���D��̀$movement use sprite.x functions etc.�J��� �D���D��̀7event variables for movement. timer -1 means not inuse.�l����D��̀^intelligence ; probability out of 100 of redirection / move. If this is 100 then invulnerable.�<����D��̀.flag indicating alive e.g. not in wakeup mode.��̀initialise player���0C��0@��06��0C� �0Ad��0B@�0Ax� 0@�/0@�>0@����JC��̀key counts 1-3���Z0A�C�JZ�0@̻��������̀Move Player.������ V���a�a0� �/��
� )/�&0 � %A��0��>0�A! �$A�:0 �/%A��$D�@��CV ��� �$C�(A���>���N��!B@�+x)�!Ax�+x��k��	X�z/@�b��!B@�-P(�!Ax�-P�l�z0�CU�v+0+!A������ ;������+0+ A������ ;��������������	��a/@�	�� v-@�� v0�� BV���0��0���0 "C��0/"C�����)��0@���0��C�!A�"C��0��C�!A�"C������� ��*��4̀Move missile�>��H� ���R�A��CX�����\�0� ��f�0� ��p���!B@�+z��0!��z���!Ax�+z��0!������+ v��A��� v0!A�����������̀Hit Wall������k���������0���0�B@!xʠ�B@ x����0�Ax!xʠ�Ax x������!B@�,x(�!Ax�-J���0!A�+B@��0A��� �(C��%�\�(Cο�0�� ���0D@!��0������!Ax�,x(�!B@�-J�$�0@�+B@��0B�.� �(C��&8�\�(Cο�0�� �!A�0Cp!��0��B��L���� ;��V��`��$j̀Check unlocked in direction d�t��
~� ������P��(C�/@(\��0@���JP��(C�+@��JP��(C�0JP��(C�!A��P��0D�\��0��l��0!A��� � 0 � �" +""�!���0@�� !ʂ� !�(�CG� �`����0A�� ʂ� �(�Cx� �D����0B�� ʂ� �(�CG� �`����0C�� !Aʂ� !A�(�Cx� �D�	��T�������� ��
��̀	Draw room���(� ;��2�Z�#�*�
<�������F�1����+��P�+0@��HB�����HA�̳�#Z��C�ƋT�ˀL�+ Aˀ ��ˀ,���%d̀First is right, second is down� n�`#�+����!A���o@�#$C��x�`#�+��!A�����oC�#��'��`#�+�������oA�#���oB�#$C���z0@�̀$D4 pit, $D5 ladder���#(�A@��z0�CT �B����+0@�z0�CT���+0!A�z0�CU������Z0@�C���������(�C`�0@(+0@��#0`̲��(Bο#0!#����Z�#ʁCP ��(A��B��������Z0@�D� �Z�0!A̻��z/@��z�B@!P�Ax!P�"߀1 Up��A��C�DU�D�,������������	6��+@�@�#0A���J��CV��AĂ#!A�"P DB�v�T��^��h�@��CV���	r v0!A�| K0@� h0@� �0@� �0@��������̀read map������`�#�+� � ���#0�    " +""��������'�̀ check open/close in current room������ ���
��Z�#���Z0@�C��lZ�+@(��+lZ��#0BV̲\Zο#0FP�lZ�0�� #�&\Z�0\Z�0@�
0��Z��:��D��N�Z0@�C�X� �Z�-@(�T�0@���Z��b��l��v���̀Create monster����
���#��G�̀@DD pumpkin, E0 jelly E3 spider thing  E6 spikey thing E9 = ghost���Z��Z0�E����Z0@��#�0AP���#�0N���Z0A��#�0@��#�0D���Z0B��#�0C��#�0H���Z0C��#�0J��#�0J���Z0D��#�0Ad��#�0^��}#�0�C] Z"C �C����#�0�B�"B!A��#�0�B�"B!A�� �#�0�� Ad��#�0��0A +#B�_��#�0�Cʆ�#�#��� �# J��CXăB@� A@ʃAx� A@�*��4��>̀Move monster�H��
R� �#��
\��#��f�� �#���#���
p� � �%z 0��# J� �#�� 0��# J� �#����# J� � ���� !B@�+x��#�0!�#����� !Ax�+x��#�0!�#�����Ad�-�#ο�#�����@�# J�Lο�)#�����A�# J�Lο�:#����������# J�����$C�(A� �CX���D������+ �#��� �#�0@��#�0����# J�}#���@����	��	��	��$	̀redirect a monster�.	��
8	�#��B	�#�0�!��# J���L	�#�0�!��# J���V	��`	��j	̀monster hit player�t	��
~	�)#���	��#�-Ad��	 �0 �!J!�E���	���	 �0 �!B��	���	����
�	�L#���	���	���	̀missile hit monster��	��
�	�:#�� 
��#�-Ad�


�L#��	
 v0���	
�r��(
��2
��<
��F
̀
bump score�P
��
Z
�#��d
�0� #�n
����x
���
��'�
̀ kill monster if not invulnerable��
��
�
�L#���
��#�-Ad��
�# J����
 �#�0!A��
�#�0���
���
���
��@�
̀9create doors in given direction using preset random seed.��
���o��#��#0#(G�P��0#�\��0��l��0!A�"�#0D�\��0��,�#+D�l��0�FP� Ad�6�#+@������@̀door.open(d) = true�2J̀+print d,doors(d),door.open(d),door.timer(d)�T��^��h̀	draw door�r��
|�������_�_0�CH̲++@�_0�C@�	���/D���\��0��_0_ �P��(C����������@�_�D���������̀draw offset element���������h�*�t���� � �}�� 0B@ h!P� 0Ax!A@��}0@����0B�}0B� 0DP! ���0A)�0C�**0* t� 0B@!A@!`�}0�$A� 0Ax P h���0A� 0B@ A@�&��0� � !_����@��^�^�:�*�}� � !`�D��N��X̀draw the energy bar�b��l����v��� � 0f���0� �"#Ad�̲�-@��0@���D@� ��@���D�  L���D@� ��A���D@ ��  L���D@� ��G���D�  L��������̀draw the score���������&�ߔ�00000 �����E���F��B���DD�P��A��������̀draw the keys��������Z� � � 0AP� �D@�  F��@�D�  h�*�Z0A�C��4 0D@ �Z!A�"U!E�>��CY Z��A��� � � Hߔ�00 ��JZ���B��  K�  X�R��\��f��p̀animate up ladder�z��������� ������� 0!P�P���@��CV �� $B�(A��B@�  Ax����J�����0Ax `�0B@��������̀animate down pit�����������Z�������������Z0A�E���0@�J��0�"J�!$���B@!��Ax!���G�B@ ��Ax ��.��B�!8���B@!��Ax!���@�B@ ��Ax ��B��L��V��`��4j̀-draw outline room type 1 (cave) type 2 (room)�t��
~�H���	��0!A�����G�B@�BA�	���0A����@�r�����L�x����X�q����h�y�����t�t����o�c����w�O�����r�@��������@�r�����m�z�����z�m�����r�@�� ��
�A@�x����@�C@�Bx��A@�x����G�C@�Bx���(��O2̀Hline.draw drawer, support routine for room draw, draws in four quadrants�<��F�� � �� P������0 "B B@��0 "B Ax�	Z��,@�	d� /@� n�B@�Ax������B@�Ax�D@!����,x�B@�Co!Ax���Co!���B@�Co!Ax�D@!��Co!�����������������D@!����D@!��������Co!����Co!����D@!��Co!��D@!��Co!�������0���0���������̀random functions����
���#��	��0#������1 � ����" 0 (�� 0 (��,�0 "e +"DmZG  "Ii�6��@��J���
T�Z���^��0@��0�RMEYx�h�Z0A�D�r�0�(A�|�0�$A������0�*�KP@������� �̀Scoring system , shooting�6�̀/Energy, dropping energy/key objects, collection�
�̀SFX� 
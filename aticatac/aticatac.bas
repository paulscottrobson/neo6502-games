     �     �     �     �     �    INITIALISE.GAME�    DRAW.ROOM�     TMOV�    MOVE.PLAYER�     TMISSIL�     TMISSILEEN�    MOVE.MISSILE�     TCHEC�    CHECK.OPEN.CLOSE.WAKE�    MON.TIMER�     CURR.MONSTE�    MOVE.MONSTER�     GAME.DAT�
     SIZ�     MAX.DEPT�     LEVE�     X.STAR�     Y.STAR�    DOORS�    DOOR.OPEN�    DOOR.TIMER�    MON.GRAPHIC�    MON.XI�    MON.YI�    MON.SPEED�    MON.IQ�    MON.ALIVE�     LIVE�     SCOR�     X.ROO�     Y.ROO�     X.PLAYE�     Y.PLAYE�     XI.PLAYE�     YI.PLAYE�     X.FLI�    KEY.COUNT�     �
     FIR�    HIT.WALL�     FLOOR.CENTR�    ANIMATE.UP�    ANIMATE.DOWN�     X.MISSIL�     Y.MISSIL�     XI.MISSIL�     YI.MISSIL�     �     MOVE�    CHECK.UNLOCK�     �     �    RANDOM.SEED.ROOM�    DRAW.ROOM.OUTLINE�    READ.MAP�    MAKE.DOOR�    RANDOM.NEXT�
     SEE�    DRAW.WALL.ELEMENT�    DRAW.SCORE�    DRAW.KEYS�    DRAW.ENERGY�    DRAW.DOOR�    CREATE.MONSTER�    REDIRECT.MONSTER�	     IM�     OFFSE�	     RO�     �     �     �
     TYP�     C�    LINE.DRAW�     X�     Y�     C�    RANDOM.SEED�     �     ROOM.MAS�
     BIT�                                                                                                                                                                                                                                                                                                                                                            d ��n ̀*** Atic Atac ***�x ��� � %��� � ;��� ��� �� K�Cο� V��� �� h�Bο� v,@�� ���� �� ��Yο� ���� � � ��,@�� � ����  �0� � A�(C�� ���� ���� ��� ̀initialise game�� ��� %�����aticatac.gfx� �0�`@�����aticatac.dat� ��4"̀-initialise level and dimensions, put at start�,0L�0E�60@�*0D�70D�/@̀(door records, created when room entered.�#J��DC��̀Values 0-7 see map.py�7T��PC��̀)true if door is open, false if shut/wall.�,^��`C��̀timer for door opening/closing�h̀monster records�*r��qD��̀monster graphic (when alive)�7|���D���D��̀$movement use sprite.x functions etc.�J��� �D���D��̀7event variables for movement. timer -1 means not inuse.�l����D��̀^intelligence ; probability out of 100 of redirection / move. If this is 100 then invulnerable.�<����D��̀.flag indicating alive e.g. not in wakeup mode.��̀initialise player���0C��0@��0*��07���0B@�0Ax�0@�#0@�20@����>C��̀key counts 1-3���N0A�C�>N�0@̻��������̀Move Player.������ V���U�U0��#��
�)#�&�0� �%A��0���20�A!�$A�:0 �#%A��$D�@��CV ���� �$C�(A���2����N���!B@�+x)�!Ax�+x��_��	X�n/@�b���!B@�-P(�!Ax�-P�l�n0�CU�v0!A������ ;������0 A������ ;��������������	��U/@�	�� v-@�� v0�� BV���0���0���0"C��0#"C�����)��0@���0��C�!A�"C��0��C�!A�"C������� ��*��4̀Move missile�>��H� ���R�A��CX�����\�0� ��f�0� ��p���!B@�+z��0!��z���!Ax�+z��0!������+ v��A��� v0!A�����������̀Hit Wall������_���������0����0�B@!xʠ��B@ x����0�Ax!xʠ�Ax x�������!B@�,x(�!Ax�-J���0!A��+B@��0A�����(C��%�P�(Cο�0�� ����0D@!���0������!Ax�,x(��!B@�-J�$�0@�+B@��0B�.���(C��&8�P�(Cο�0�� �!A�0Cp!��0��B��L��� ;��V��`��$j̀Check unlocked in direction d�t��
~��������D��(C�/@(P��0@���>D��(C�+@��>D��(C�0>D��(C�!A��D��0D�P��0��`��0!A��� � 0 � � �" ""�!���0@�� !ʂ� !�(�CG� �`����0A�� ʂ� �(�Cx� �D����0B�� ʂ� �(�CG� �`����0C�� !Aʂ� !A�(�Cx� �D���������� ��
̀	Draw room���� ;��(�N���
2�������<�������F�0@��,B�����,A�̳�#P��C�ƋT�ˀL� Aˀ ��ˀ,���%Z̀First is right, second is down� d�D�����!A���S@�$C��n�D���!A�����SC���'x�D��������SA����SB�$C���n0@�̀$D4 pit, $D5 ladder���(�A@��n0�CT �B����0@�n0�CT���0!A�n0�CU������N0@�C���c�����u(�C`�0@(0@��0`̲�u(Bο0!���N�ʁCP �u(A��B���������N0@�D� �N�0!A̻��n/@��n�B@!P�Ax!P�߀1 Up��A��C�DU�D�"������������	,��+@�6�0A���@��CVĂ!A�"P DB�v�J��T��^�@��CV����	h v0!A�r K0@� h0@� �0@� �0@�|������̀read map������D��� � ���0� �    " ""��������'�̀ check open/close in current room������ ���
��N����N0@�C���`N�+@(��+`N��0BV̲PNο0FP�`N�0�� �PN�0PN�0@�
&��N��0��:��D�N0@�C�N� �N�-@(�T�0@���N��X��b��l��v̀Create monster����
�����G�̀@DD pumpkin, E0 jelly E3 spider thing  E6 spikey thing E9 = ghost���N�N0�E����N0@���0AP����0N���N0A���0@���0D���N0B���0C���0H���N0C���0J���0J���N0D���0Ad���0^��q�0�C] N"C �C�����0�B�"B!A���0�B�"B!A�� ��0�� Ad����0��� J��CXăB@� A@ʃAx� A@����� ̀Move monster�*��
4� ���
>����H�� �������
R� � �%\ 0�� J� ��� 0�� J� ���f� J� � �p�� !B@�+x���0!���z�� !Ax�+x���0!������Ad�-�ο������������ J�����$C�(A� �CX���D������+ ���� ��0@���0���� J�q���@��������������̀redirect a monster����
	����	��0��!�� J���	��0�!�� J���$	��.	��@8	̀9create doors in given direction using preset random seed.�B	��L	�S����V	0(G�`	D��0�P��0��`��0!A�j	�0D�P��0��t	�+D�`��0�FP� Ad�~	�+@�������	̀door.open(d) = true�2�	̀+print d,doors(d),door.open(d),door.timer(d)��	���	���	̀	draw door��	��
�	������	��0�CH̲+@�0�C@�	�	��/D��	�P��0��0 �D��(C���	���	���@��D�� 
��

��
̀draw offset element�
��(
�������2
� � �$�<
 0B@ !P� 0Ax!A@��$0@�F
��0B�$0B� 0DP! �P
��0A)�0C�*Z
0 � 0B@!A@!`�$0�$A� 0Ax P �d
��0A� 0B@ A@�n
��x
� � !_����@��^�^��
��$� � !`��
���
���
̀draw the energy bar��
���
�����
�+� � 0f�+0��
�D@� ��A���D@ +�  L��
�D@� ��G���D�  L��
���
���
̀draw the score��
������#ߔ�00000 �����E���F��B���DD�P���"��,̀draw the keys�6��@����J�N� � � 0AP�T�D@�  F��@�D�  h�^�N0A�C��h 0D@ �N!A�"U!E�r��CY N��A��� � � |ߔ�00 ��>N���B��  K�  X�����������̀animate up ladder����������� ������� 0!P�P���@��CV �� $B�(A��B@�  Ax����J�����0Ax `��0B@������̀animate down pit���&����0�N�2�+��������:�N0A�E�D�20@�J�N+02"J�!X���B@!+�Ax!+��G�B@ +�Ax +�b��B�!l���B@!+�Ax!+��@�B@ +�Ax +�v�����������4�̀-draw outline room type 1 (cave) type 2 (room)����
��,9��	�C0!A�����G�B@�BA�	��90A���K@�r����KL�x���KX�q���Kh�y����Kt�t���Ko�c���Kw�O����Kr�@�����K@�r���Km�z�� �Kz�m��*�Kr�@��4��>�A@�x����@�C@�Bx�H�A@�x����G�C@�Bx�R��\��Of̀Hline.draw drawer, support routine for room draw, draws in four quadrants�p��z�K � �� ��[�c�[0 "B B@�c0 "B Ax�	��C,@�	�� /@� ��B@�Ax�[�c��B@�Ax�D@![�c�,��B@�Co!Ax�[�Co!c��B@�Co!Ax�D@![�Co!c������C�k�[�c���D@!C�k�D@![�c���C�Co!k�[�Co!c���D@!C�Co!k�D@![�Co!c�����C0[�k0c������̀random functions���
$�s��	.u0�8��B��L� � ����V 0 (�� 0 (��`u0 "e "DmZG  "Ii�j��t��~�c��
��N�����u0@�u0�RMEYx���N0A�D���0u(A��u0u$A�����u0u*�KP@������� �̀Scoring system , shooting�6�̀/Energy, dropping energy/key objects, collection�
�̀SFX� 
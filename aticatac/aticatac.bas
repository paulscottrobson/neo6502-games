     �     �     �     �     �    INITIALISE.GAME�    DRAW.ROOM�     TMOV�     TMISSIL�    MOVE.PLAYER�     TMISSILEEN�    MOVE.MISSILE�     LEVE�     ROOM.MAS�     X.STAR�     Y.STAR�    DOORS�    DOOR.OPEN�    DOOR.PERIOD�    DOOR.TIMER�     LIVE�     SCOR�     X.ROO�     Y.ROO�     X.PLAYE�     Y.PLAYE�     XI.PLAYE�     YI.PLAYE�     X.FLI�    KEY.COUNT�
     FIR�    HIT.WALL�     FLOOR.CENTR�    ANIMATE.UP�    ANIMATE.DOWN�     X.MISSIL�     Y.MISSIL�     XI.MISSIL�     YI.MISSIL�     �     MOVE�     �     �     �    DRAW.ROOM.OUTLINE�    RANDOM.SEED.ROOM�    MAKE.DOOR�
     SEE�    DRAW.WALL.ELEMENT�    RANDOM.NEXT�    DRAW.SCORE�    DRAW.KEYS�    DRAW.ENERGY�
     BAS�    OPEN.DOOR�     OFFSE�	     RO�     �     �     �
     TYP�     C�    LINE.DRAW�     X�     Y�     C�    RANDOM.SEED�     �
     BIT�                                                                                                                                                                                                                                                                                                                                                                                     d ��n ̀*** Atic Atac ***�x ��� � %��� � ;���  K0@� V0@�� ��� �� K�Aο� d��� �� V�Bο� v,@�� ���� ���� ���� ��� ̀initialise game�� ��� � %��� ���aticatac.gfx�J̀Cinitialise level and dimensions, power of 2, and put in the middle.� �0A� �0O� �0� � A�$A� �0 ��/̀(door records, created when room entered.�K"�� �C��̀=$00 = wall,$C0-$C3 (cave) $C8-$CB (door) open/red/yellow/cyan�7,�� �C��̀)true if door is open, false if shut/wall.�<6�� �C��̀.if 0 normal door, else period timer open/close�,@�� �C��̀timer for door opening/closing�J̀initialise player�T0C�0@�#0 ��/0 ��^;0B@�I0Ax�W0@�f0@�u0@�h���C��̀key counts 1-3�r��|���̀Move Player.������ d��������0�W�f��
��W)f��;0; �W%A����;�u0�A!W�$A��I0I �f%A��$��@��CV ���; I�$C�(A���u�;�I����;!B@�+x)�I!Ax�+x�����	���/@����;!B@�-P(�I!Ax�-P���0�CU� �0 �!A������ ;����& �0 � A������ ;��0��:��D��N��	X��/@�	b� v-@�l v0�� BV�v�0;��0I���0W"C�0f"C�����)�0@���0��C�!A�"C�0��C�!A�"C�����������������̀Move missile������ �����A��CX�������0� ���0� ����!B@�+z��0!�����!Ax�+z�0!� ���+ v��A��� v0!A�*��4��>��H̀Hit Wall�R��\����f��%�%0��p;0�B@!xʠ;�B@ x���zI0�Ax!xʠI�Ax x������;!B@�,x(�I!Ax�-J��0!A�;+B@�0A�(�� �(Cο#0�# �( ��;0D@!;�%0��������I!Ax�,x(�;!B@�-J��0@�I+B@�0B�*�� �(Cο/0�/ !A�( ��I0Cp!I�%0�������%�� ;���������̀	Draw room����� ;���0�7�>�
�������$��C�ƋT�� �ˀ �#ˀ,�/�.� �0A��EB�����EA�̳�%8̀First is right, second is down�B�]#�/!A� ����t@���t@��L�]#�/� ����tA���tB��V�]#!A�/� ����tC��`�0@�̀$D4 pit, $D5 ladder�j�#/ �)// ��t���(L`�/Og� ~�0�CT̲ �+A(��(�P@ο�0�CU���������00@�C�9�̀2print i; ;doors(i); ;door.open(i); ;door.period(i)��� �0ο��0�@� �0��D�����������(�C`�0@( �0A��70`̲��(Bο70!7����0�7ʁCP ��(A��B�����������/@����B@!P�Ax!P� ߀1 Up��A��C�DU�D�
������������	�+@��70A��(��CVĂ7!A�"P DB�v�2��<��F�@��CV�;�I�	P v0!A�Z��d��@n̀9create doors in given direction using preset random seed.�x��
��t����0����0�C@̲ �0A��0�CH�$� ��0@� ��0�� ��0@� ��0!A���������(�D@�� ��0�� ��0������(�C@��� ��0� A �&C� ��0������(�P��� ��0Gt�� ��0� ��� �����������	� �0A��#0 �(/0 ��"�00@�C���0�̻�,��6�#0 �(/0 �!A���B��@�#0 � A(/0 ����C��J�#0 �(/0 � A���@��T�#0 �!A(/0 ����A��^��h ��0��r��|���̀set door to default open����
������ ��0�C@̲ �0A� ��0�CH�� ��0�� ��0@� ��0!A��������̀draw offset element���������>����� � ��� 0B@ !P� 0Ax!A@��0@���0B�0B� 0DP! ��0A)0C�*>0> � 0B@!A@!`�0$A� 0Ax P ��0A� 0B@ A@�&��0�>�� � !`�:��D��N̀draw the energy bar�X��b����l�!� � 0f�!0�v�D@� ��A���D@ !�  L���D@� ��G���D�  L��������̀draw the score���������#�ߔ�00000 ����E���F��B���DD�P��������̀draw the keys�����������0� � � 0AP��D@�  F��@�D�  h��00A�C�� 0D@ �0!A�"U!E� ��CY 0��A��� � �*߀00�  K�  X�4��>��H��R̀animate up ladder�\��f����p� �z� 0!P�P���@��CV �� $B�(A��B@�  Ax����J�����I0Ax `�;0B@��������̀animate down pit�����������0�(�!������00A�E���(0@�J��!0("J�!	���B@!!�Ax!!��G�B@ !�Ax !�	��B�!	���B@!!�Ax!!��@�B@ !�Ax !�$	��.	��8	��B	��4L	̀-draw outline room type 1 (cave) type 2 (room)�V	��
`	�E/��	j	90!A�t	���G�B@�BA�	~	�/0A��	�A@�r���	�AL�x���AX�q���Ah�y���	�At�t���Ao�c���Aw�O���	�Ar�@���	���	�A@�r���	�Am�z���	�Az�m���	�Ar�@���	���	�A@�x����@�C@�Bx��	�A@�x����G�C@�Bx� 
��

��O
̀Hline.draw drawer, support routine for room draw, draws in four quadrants�
��(
�A � �� 2
�Q�Y�Q0 "B B@�Y0 "B Ax�	<
�9,@�	F
� /@� P
�B@�Ax�Q�Y��B@�Ax�D@!Q�Y�,Z
�B@�Co!Ax�Q�Co!Y��B@�Co!Ax�D@!Q�Co!Y�d
��n
�9�a�Q�Y�x
�D@!9�a�D@!Q�Y��
�9�Co!a�Q�Co!Y��
�D@!9�Co!a�D@!Q�Co!Y��
���
90Q�a0Y��
���
���
̀random functions��
��
�
�i7��	�
�07��
���
���
�] � �{�� 0 ( �� 0 ( ���0 "e  �"DmZG  "Ii���"��,����
6�0���@��0@��0�RMEYx�J�00A�D�T�0�(A�^�0�$A�h����0�*�KP@�r��|���̀Handle pits and stairs.�V�̀OCreate monsters and move them. Type changes : invulnerable, speed, intelligence� �̀Scoring system , shooting�6�̀/Energy, dropping energy/key objects, collection��̀Doors and Keys� 
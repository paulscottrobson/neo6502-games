     �     �     �     �     �    INITIALISE.GAME�    DRAW.ROOM�     TMOV�     TMISSIL�    MOVE.PLAYER�     TMISSILEEN�    MOVE.MISSILE�     GAME.DAT�
     SIZ�     MAX.DEPT�     LEVE�     X.STAR�     Y.STAR�    DOORS�    DOOR.OPEN�    DOOR.TIMER�     LIVE�     SCOR�     X.ROO�     Y.ROO�     X.PLAYE�     Y.PLAYE�     XI.PLAYE�     YI.PLAYE�     X.FLI�    KEY.COUNT�
     FIR�    HIT.WALL�     FLOOR.CENTR�    ANIMATE.UP�    ANIMATE.DOWN�     X.MISSIL�     Y.MISSIL�     XI.MISSIL�     YI.MISSIL�     �     MOVE�     �     �     �    RANDOM.SEED.ROOM�    DRAW.ROOM.OUTLINE�    READ.MAP�    MAKE.DOOR�    RANDOM.NEXT�
     SEE�    DRAW.WALL.ELEMENT�    DRAW.SCORE�    DRAW.KEYS�    DRAW.ENERGY�    DRAW.DOOR�	     IM�     OFFSE�	     RO�     �     �     �
     TYP�     C�    LINE.DRAW�     X�     Y�     C�    RANDOM.SEED�     �     ROOM.MAS�
     BIT�                                                                                                                                                                                                                                                                                                                                                 d ��n ̀*** Atic Atac ***�x ��� � %��� � ;���  K0@� V0@�� ��� �� K�Aο� d��� �� V�Bο� v,@�� ���� ���� ���� ��� ̀initialise game�� ��� � %��� ���aticatac.gfx� �0�`@�����aticatac.dat� ��4̀-initialise level and dimensions, put at start� �0L� �0E�" �0@� �0D� �0D�/,̀(door records, created when room entered.�#6�� �C��̀Values 0-7 see map.py�7@�� �C��̀)true if door is open, false if shut/wall.�,J��C��̀timer for door opening/closing�T̀initialise player�^0C�0@�*0 ��60 ��hB0B@�P0Ax�^0@�m0@�|0@�r���C��̀key counts 1-3�|������̀Move Player.������ d��������0�^�m��
��^)m��B0B �^%A����B�|0�A!^�$A��P0P �m%A��$��@��CV ���B P�$C�(A���|�B�P����B!B@�+x)�P!Ax�+x�����	���/@���B!B@�-P(�P!Ax�-P���0�CU� �0 �!A������ ;��&��0 �0 � A������ ;��:��D��N��X��	b��/@�	l� v-@�v v0�� BV���0B��0P��0^"C�0m"C����)�0@��0��C�!A�"C�0��C�!A�"C�����������������̀Move missile������ �����A��CX������0� ��0� ����!B@�+z�0!� ���!Ax�+z�0!�*���+ v��A��� v0!A�4��>��H��R̀Hit Wall�\��f����p�%�,�,0��zB0�B@!xʠB�B@ x����P0�Ax!xʠP�Ax x������B!B@�,x(�P!Ax�-J��%0!A�B+B@�%0A�%�� �%(Cο*0�* %��B0D@!B�,0��������P!Ax�,x(�B!B@�-J��%0@�P+B@�%0B�&�� �%(Cο60�6 %!A�P0Cp!P�,0�������,�� ;���������̀	Draw room���� ;���7�>�E�
$�������.�L*�6� ���8� �0@��cB�����cA�̳�%B̀First is right, second is down� L�{>� ��*�6!A����@�>$C��V�{>� ��*!A�6����C�>��'`�{>� ��*�6����A�>����B�>$C��(j��C�ƋT�� �ˀ �*ˀ,�6ˀ �>ˀ �t�0@�̀$D4 pit, $D5 ladder�~�>(�A@���0�CT �B���� �0@��0�CT��� �0 �!A��0�CU������70@�C����������(�C`�0@( �0@��>0`̲��(Bο>0!>����7�>ʁCP ��(A��B�����������/@����B@!P�Ax!P� ߀1 Up��A��C�DU�D�
������������	�+@��>0A��(��CVĂ>!A�"P DB�v�2��<��F�@��CV�B�P�	P v0!A�Z��d��n̀read map�x����{�>� �� � ���>0� �    " �  �" �" ���������@�̀9create doors in given direction using preset random seed.�������%�>���>0>(G�� �%�0>� �%�0��%�0!A���>0D� �%�0����>+D�%�0�FP� Ad���>+@��%���̀door.open(d) = true��%� �%�� �%��%������"̀	draw door�,��
6�%��@��0�CH̲ �+@�0�C@�	J�%/D�T� �%�0��0 � �%�(C��^��h��%�@��D��r��|���̀draw offset element�������%��E�&���� � �/�� 0B@ !P� 0Ax!A@��/0@���%0B�/0B� 0DP! ���%0A)%0C�*�E0E &� 0B@!A@!`�/0%$A� 0Ax P ���%0A� 0B@ A@������E�/� � !`�������̀draw the energy bar�������&�6� � 0f�60�0�D@� ��A���D@ 6�  L�:�D@� ��G���D�  L�D��N��X̀draw the score�b��l����#vߔ�00000 ����E���F��B���DD�P��������̀draw the keys�����������7� � � 0AP���D@�  F��@�D�  h���70A�C��� 0D@ �7!A�"U!E����CY 7��A��� � ��߀00�  K�  X���������̀animate up ladder��� ����*� �4� 0!P�P�>�@��CV �� $B�(A��B@�  Ax�H��J�R��\P0Ax `�B0B@�f��p��z̀animate down pit�����������7�=�6������70A�E���=0@�J��60="J�!����B@!6�Ax!6��G�B@ 6�Ax 6����B�!����B@!6�Ax!6��@�B@ 6�Ax 6�������������4	̀-draw outline room type 1 (cave) type 2 (room)�	��
	�cD��	$	N0!A�.	���G�B@�BA�	8	�D0A�B	�V@�r��L	�VL�x���VX�q���Vh�y��V	�Vt�t���Vo�c���Vw�O��`	�Vr�@��j	��t	�V@�r��~	�Vm�z���	�Vz�m���	�Vr�@���	���	�A@�x����@�C@�Bx��	�A@�x����G�C@�Bx��	���	��O�	̀Hline.draw drawer, support routine for room draw, draws in four quadrants��	���	�V � �� �	�f�n�f0 "B B@�n0 "B Ax�	�	�N,@�	 
� /@� 

�B@�Ax�f�n��B@�Ax�D@!f�n�,
�B@�Co!Ax�f�Co!n��B@�Co!Ax�D@!f�Co!n�
��(
�N�v�f�n�2
�D@!N�v�D@!f�n�<
�N�Co!v�f�Co!n�F
�D@!N�Co!v�D@!f�Co!n�P
��Z
N0f�v0n�d
��n
��x
̀random functions��
��
�
�~>��	�
�0>��
���
���
�L � �����
 0 (�� 0 (���
�0 "e  �"DmZG  "Ii��
���
���
����
�
�7����
��0@��0�RMEYx��70A�D��0�(A��0�$A�"����0�*�KP@�,��6��@̀Auto doors.�J̀Key opening doors.�VT̀OCreate monsters and move them. Type changes : invulnerable, speed, intelligence� ^̀Scoring system , shooting�6h̀/Energy, dropping energy/key objects, collection� 
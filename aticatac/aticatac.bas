     �     �     �     �     �    INITIALISE.GAME�    DRAW.ROOM�     TMOV�    MOVE.PLAYER�     LEVE�     ROOM.MAS�     X.STAR�     Y.STAR�    DOORS�    DOOR.OPEN�    DOOR.PERIOD�    DOOR.TIMER�     LIVE�     SCOR�     X.ROO�     Y.ROO�     X.PLAYE�     Y.PLAYE�     XI.PLAYE�     YI.PLAYE�     X.FLI�    KEY.COUNT�
     FIR�    HIT.WALL�     �     MOVE�     �     �     �    DRAW.ROOM.OUTLINE�    RANDOM.SEED.ROOM�    MAKE.DOOR�     CONTENT�
     SEE�    DRAW.WALL.ELEMENT�    RANDOM.NEXT�    DRAW.SCORE�    DRAW.KEYS�    DRAW.ENERGY�
     BAS�    OPEN.DOOR�     OFFSE�	     RO�     �     �
     TYP�     C�    LINE.DRAW�     X�     Y�     C�    RANDOM.SEED�     �
     BIT�                                                                                                                                                                                                                                                                                    d ��n ̀*** Atic Atac ***�x ��� � %��� � ;���  K0@�� ��� �� K�Aο� V��� ���� ���� ��� ̀initialise game�� ��� � %��� ���aticatac.gfx�J� ̀Cinitialise level and dimensions, power of 2, and put in the middle.� h0A� s0O� �0� s A�$A� �0 ��/̀(door records, created when room entered.�K�� �C��̀=$00 = wall,$C0-$C3 (cave) $C8-$CB (door) open/red/yellow/cyan�7"�� �C��̀)true if door is open, false if shut/wall.�<,�� �C��̀.if 0 normal door, else period timer open/close�,6�� �C��̀timer for door opening/closing�@̀initialise player�J �0C� �0@� �0 �� �0 ��T	0B@�0Ax�%0@�40@�C0@�^��OC��̀key counts 1-3�h��r��|̀Move Player.������ V����_��_0�%�4��
��%)4��	0	 �%%A����	�C0�A!%�$A��0 �4%A��$��@��CV ���	 �$C�(A���C�	�����	!B@�+x)�!Ax�+x��i�����������̀Hit Wall����i��&�x��0��0	0�B@!xʠ	�B@ x���:0�Ax!xʠ�Ax x���D��	!B@�,x(�!Ax�-J�Nx0!A�	+B@�x0A�(X� �x(Cο �0� � x�( s�	0D@!	�0��b��l��!Ax�,x(�	!B@�-J�vx0@�+B@�x0B�*�� �x(Cο �0� � x!A�( s�0Cp!�0��������� ;���������̀	Draw room������ ;����������
�����������C�ƋT�� �ˀ,� ���� h0A���B������A�̳�%�̀First is right, second is down��� �� �!A� h����@����@���� �� �� h����A����B���� �!A� �� h����C�� �0@�̀$D4 pit, $D5 ladder�*� �/ �) �/ ��4���(L`�0@� >�0�CT̲ h+A(��(�`@ο�0�CU�H��R��\��0@�C�9f̀2print i; ;doors(i); ;door.open(i); ;door.period(i)�p� ��ο����@� ����D��z�������(�C`�0@( h0A���0`̲��(Bο�0!��������ʁCP ��(A��B�����������/@����B@!P�Ax!P��߀1 Up��A��C�DU�D��� ���1���A��	�� �+@����0A� �����CVĂ�!A�"P DB�v��������@��CV�	������@$̀9create doors in given direction using preset random seed.�.��
8��x��B���S�S0�C@̲ h0A�S0�CH�$L �x�0@� �x�0�� �x�0@� �x�0!A�V���`��(�D@�j �x�0S� �x�0��t���(�C@��~ �x�0S A �&C� �x�0������(�P��� �x�0Gt�� �x�0� �x�� ������������	�� h0A��� �0 �( �0 �����0@�C��]��̻������ �0 �( �0 �!A��]B���� �0 � A( �0 ���]C�� � �0 �( �0 � A��]@��
� �0 �!A( �0 ���]A���� �x�0��(��2��<̀set door to default open�F��
P�]x��Z �x�0�C@̲ h0A� �x�0�CH�d �x�0�� �x�0@� �x�0!A�n��x���̀draw offset element�������x�m���y���� � ���� 0B@ m!P� 0Ax!A@���0@���x0B��0B� 0DP! ���x0A)x0C�*��0� y� 0B@!A@!`��0x$A� 0Ax P m���x0A� 0B@ A@���������� � !`�������̀draw the energy bar����A��"��� � 0f��0�,�D@� ��A���D@ ��  L�6�D@� ��G���D�  L�@��J��T̀draw the score�^��h� ��#rߔ�00000 �� ���E���F��B���DD�P�|������̀draw the keys������1������ � � 0AP���D@�  F��@�D�  h����0A�C��� 0D@ ��!A�"U!E����CY ���A��� � ��߀00�  K�  X����������4̀-draw outline room type 1 (cave) type 2 (room)���
�����	&�0!A�0���G�B@�BA�	:��0A�D��@�r��N��L�x����X�q����h�y��X��t�t����o�c����w�O��b��r�@��l��v��@�r�����m�z�����z�m�����r�@�������A@�x����@�C@�Bx���A@�x����G�C@�Bx�������O�̀Hline.draw drawer, support routine for room draw, draws in four quadrants������� � �� �������0 "B B@��0 "B Ax�	���,@�	� /@� �B@�Ax������B@�Ax�D@!����,�B@�Co!Ax���Co!���B@�Co!Ax�D@!��Co!�� ��*���������4�D@!����D@!����>���Co!����Co!��H�D@!��Co!��D@!��Co!��R��\�0���0��f��p��z̀random functions����
������	��0����������� � ����� 0 ( s� 0 ( s���0 "e  h"DmZG  "Ii�����������
���������0@��0�RMEYx�	��0A�D�	�0�(A�	�0�$A�$	���0�*�KP@�.	��8	�� 
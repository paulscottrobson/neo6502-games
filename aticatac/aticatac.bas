     �     �     �     �     �    INITIALISE.GAME�    DRAW.ROOM�     TMOV�     TMISSIL�     TCHEC�    MOVE.PLAYER�     TMISSILEEN�    MOVE.MISSILE�    CHECK.OPEN.CLOSE.WAKE�     GAME.DAT�
     SIZ�     MAX.DEPT�     LEVE�     X.STAR�     Y.STAR�    DOORS�    DOOR.OPEN�    DOOR.TIMER�    MON.XI�    MON.YI�    MON.TIMER�    MON.SPEED�    MON.IQ�    MON.ALIVE�     LIVE�     SCOR�     X.ROO�     Y.ROO�     X.PLAYE�     Y.PLAYE�     XI.PLAYE�     YI.PLAYE�     X.FLI�    KEY.COUNT�     �
     FIR�    HIT.WALL�     FLOOR.CENTR�    ANIMATE.UP�    ANIMATE.DOWN�     X.MISSIL�     Y.MISSIL�     XI.MISSIL�     YI.MISSIL�     �     MOVE�    CHECK.UNLOCK�     �     �    RANDOM.SEED.ROOM�    DRAW.ROOM.OUTLINE�    READ.MAP�    MAKE.DOOR�    RANDOM.NEXT�
     SEE�    DRAW.WALL.ELEMENT�    DRAW.SCORE�    DRAW.KEYS�    DRAW.ENERGY�    DRAW.DOOR�	     IM�     OFFSE�	     RO�     �     �     �
     TYP�     C�    LINE.DRAW�     X�     Y�     C�    RANDOM.SEED�     �     ROOM.MAS�
     BIT�                                                                                                                                                                                               d ��n ̀*** Atic Atac ***�x ��� � %��� � ;���  K0@� V0@� d0@�� ��� �� K�Aο� p��� �� V�Bο� �,@�� ���� �� d�Yο� ���� ���� ���� ��� ̀initialise game�� ��� � %�����aticatac.gfx� �0�`@�����aticatac.dat� ��4̀-initialise level and dimensions, put at start�" �0L� �0E�, �0@� �0D�0D�/6̀(door records, created when room entered.�#@��C��̀Values 0-7 see map.py�7J��C��̀)true if door is open, false if shut/wall.�,T��+C��̀timer for door opening/closing�^̀monster records�7h��<D��ID��̀$movement use sprite.x functions etc.�Jr��VD��fD��̀7event variables for movement. timer -1 means not inuse.�l|��vD��̀^intelligence ; probability out of 100 of redirection / move. If this is 100 then invulnerable.�<����D��̀.flag indicating alive e.g. not in wakeup mode.��̀initialise player���0C��0@��0 ���0���0B@��0Ax��0@��0@��0@����C��̀key counts 1-3���0A�C��0@̻��������̀Move Player.������ p������0������
��)���0� ��%A������0�A!��$A�&�0� ��%A��$0�@��CV ���� ��$C�(A���������:���!B@�+x)��!Ax�+x��(��	D�7/@�N���!B@�-P(��!Ax�-P�X�70�CU�b �0 �!A��I��� ;��l��v �0 � A��Z��� ;��������������	��/@�	�� �-@�� �0�� BV��m0��|0����0�"C��0�"C�����)��0@���0��C�!A�"C��0��C�!A�"C������������� ̀Move missile�*��4� ���>�A��CX�m�|�Hm0m ��R|0| ��\��m!B@�+z��0!��f��|!Ax�+z��0!��p���+ ���A��� �0!A�z���������̀Hit Wall������(���������0����0�B@!xʠ��B@ x�����0�Ax!xʠ��Ax x�������!B@�,x(��!Ax�-J���0!A��+B@��0A�����(C��%���(Cο�0�� ����0D@!���0��������!Ax�,x(��!B@�-J��0@��+B@��0B����(C��&$��(Cο�0�� �!A��0Cp!���0��.��8���� ;��B��L��$V̀Check unlocked in direction d�`��
j�����t����(C�/@(��0@�~���(C�+@����(C�0��(C�!A����0D���0��+��0!A��� � 0 � � �" �  �" �" ��!���0@�� ! �ʂ� ! ��(�CG� �`����0A�� ʂ� �(�Cx� �D����0B�� ʂ� �(�CG� �`����0C�� !Aʂ� !A�(�Cx� �D��������������̀	Draw room� ��
� ;��������
�������(������ ���2� �0@���B������A�̳�$<��C�ƋT�� �ˀ ��ˀ,��ˀ ���%F̀First is right, second is down� P��� �����!A���@��$C��Z��� ���!A�����C����'d��� ��������A�����B��$C��n70@�̀$D4 pit, $D5 ladder�x��(�A@��70�CT �B���� �0@�70�CT��� �0 �!A�70�CU������0@�C���,�����>(�C`�0@( �0@���0`̲�>(Bο�0!����H��ʁCP �>(A��B����������0@�D�V�0!A̻���7/@��7�B@!P�Ax!P�߀1 Up��A��C�DU�D��`���q������	��+@�"��0A���,��CVĂ�!A�"P DB�v�6��@��J�@��CV�����	T �0!A�^��h��r̀read map�|������� �� � ����0� �    " �  �" �" ���������'�̀ check open/close in current room������ ���
�������0@�C���+�+@(��++����0BV̲ο�0FP��+�0�� ����0�0@�
��������&��0��@:̀9create doors in given direction using preset random seed.�D��N������X�0�(G�b��0����0��+��0!A�l��0D���0��v��+D�+��0�FP� Ad����+@�������̀door.open(d) = true�����������+����������̀	draw door����
�����������0�CH̲ �+@��0�C@�	���/D�����0���0� ���(C�������H��@���D������̀draw offset element� ��*�H���������4� � ���> 0B@ �!P� 0Ax!A@���0@�H��0B��0B� 0DP! �R��0A)�0C�*\�0� �� 0B@!A@!`��0�$A� 0Ax P ��f��0A� 0B@ A@�p��z� � !_����@��^�^������� � !`��������̀draw the energy bar������������� � 0f��0���D@� ��A���D@ ��  L���D@� ��G���D�  L��������̀draw the score����	�`��#	ߔ�00000 �����E���F��B���DD�P�	��$	��.	̀draw the keys�8	��B	�q��L	�� � � 0AP�V	�D@�  F��@�D�  h�`	�0A�C��j	 0D@ �!A�"U!E�t	��CY ��A��� � � ~	ߔ�00 �����B��  K�  X��	���	���	���	̀animate up ladder��	���	�I���	� ��	� 0!P�P��	�@��CV �� $B�(A��B@�  Ax��	��J��	���	�0Ax `��0B@� 
��

��
̀animate down pit�
��(
�Z��2
���������<
�0A�E�F
��0@�J�P
�0�"J�!Z
���B@!��Ax!���G�B@ ��Ax ��d
��B�!n
���B@!��Ax!���@�B@ ��Ax ��x
���
���
���
��4�
̀-draw outline room type 1 (cave) type 2 (room)��
��
�
�����	�
�0!A��
���G�B@�BA�	�
��0A��
��@�r���
��L�x����X�q����h�y���
��t�t����o�c����w�O���
��r�@������@�r����m�z��"��z�m��,��r�@��6��@�A@�x����@�C@�Bx�J�A@�x����G�C@�Bx�T��^��Oh̀Hline.draw drawer, support routine for room draw, draws in four quadrants�r��|�� � �� ���� ��0 "B B@� 0 "B Ax�	���,@�	�� /@� ��B@�Ax��� ��B@�Ax�D@!�� �,��B@�Co!Ax���Co! ��B@�Co!Ax�D@!��Co! ����������� ���D@!���D@!�� �����Co!���Co! ���D@!��Co!�D@!��Co! ������0��0 ������̀random functions���
&����	0>0��:��D��N�� � �"��X 0 ()� 0 ()�b>0 "e  �"DmZG  "Ii�l��v����,��
���8���>0@�>0�RMEYx���0A�D��80>(A��>0>$A���8�>0>*�KP@�������V�̀OCreate monsters and move them. Type changes : invulnerable, speed, intelligence� �̀Scoring system , shooting�6�̀/Energy, dropping energy/key objects, collection�
�̀SFX� 
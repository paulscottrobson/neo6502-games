     �     �     �     �     �    INITIALISE.GAME�    DRAW.ROOM�     TMOV�     TMISSIL�     TCHEC�    MOVE.PLAYER�     TMISSILEEN�    MOVE.MISSILE�    CHECK.OPEN.CLOSE�     GAME.DAT�
     SIZ�     MAX.DEPT�     LEVE�     X.STAR�     Y.STAR�    DOORS�    DOOR.OPEN�    DOOR.TIMER�     LIVE�     SCOR�     X.ROO�     Y.ROO�     X.PLAYE�     Y.PLAYE�     XI.PLAYE�     YI.PLAYE�     X.FLI�    KEY.COUNT�     �
     FIR�    HIT.WALL�     FLOOR.CENTR�    ANIMATE.UP�    ANIMATE.DOWN�     X.MISSIL�     Y.MISSIL�     XI.MISSIL�     YI.MISSIL�     �     MOVE�    CHECK.UNLOCK�     �     �    RANDOM.SEED.ROOM�    DRAW.ROOM.OUTLINE�    READ.MAP�    MAKE.DOOR�    RANDOM.NEXT�
     SEE�    DRAW.WALL.ELEMENT�    DRAW.SCORE�    DRAW.KEYS�    DRAW.ENERGY�    DRAW.DOOR�	     IM�     OFFSE�	     RO�     �     �     �
     TYP�     C�    LINE.DRAW�     X�     Y�     C�    RANDOM.SEED�     �     ROOM.MAS�
     BIT�                                                                                                                                                                                                                                                                                           d ��n ̀*** Atic Atac ***�x ��� � %��� � ;���  K0@� V0@� d0@�� ��� �� K�Aο� p��� �� V�Bο� �,@�� ���� �� d�Yο� ���� ���� ���� ��� ̀initialise game�� ��� � %�����aticatac.gfx� �0�`@�����aticatac.dat� ��4̀-initialise level and dimensions, put at start�" �0L� �0E�, �0@� �0D� �0D�/6̀(door records, created when room entered.�#@��
C��̀Values 0-7 see map.py�7J��C��̀)true if door is open, false if shut/wall.�,T��&C��̀timer for door opening/closing�^̀initialise player�h70C�B0@�M0 ��Y0 ��re0B@�s0Ax��0@��0@��0@�|���C��̀key counts 1-3����0A�C����0@̻��������̀Move Player.������ p��������0������
���)���e0e ��%A����e��0�A!��$A��s0s ��%A��$��@��CV ���e s�$C�(A�����e�s���e!B@�+x)�s!Ax�+x�����	��/@���e!B@�-P(�s!Ax�-P�&��0�CU�0 �0 �!A������ ;��:��D �0 � A������ ;��N��X��b��l��	v��/@�	�� �-@�� �0�� BV��0e� 0s��/0�"C�?0�"C����/)?�0@��/0��C�!A�"C�?0��C�!A�"C�����������������̀Move missile����� ����A��CX�� �0 /�  0  ?�*��!B@�+z�/0!/�4�� !Ax�+z�?0!?�>���+ ���A��� �0!A�H��R��\��f̀Hit Wall�p��z������O�V�V0���e0�B@!xʠe�B@ x����s0�Ax!xʠs�Ax x������e!B@�,x(�s!Ax�-J��O0!A�e+B@�O0A���aO(C��%��O(CοM0�M O��e0D@!e�V0��������s!Ax�,x(�e!B@�-J��O0@�s+B@�O0B���aO(C��&��O(CοY0�Y O!A�s0Cp!s�V0������V�� ;������$$̀Check unlocked in direction d�.��
8�aO��B��
O�(C�/@(O�0@�L��
O�(C�+@�V�
O�(C�0�
O�(C�!A�`
O�0D�O�0��&O�0!A�j� � 0 � M Y" �  �" �" ��!t�O0@�� ! �ʂ� ! ��(�CG� �`�~�O0A�� ʂ� �(�Cx� �D���O0B�� ʂ� �(�CG� �`���O0C�� !Aʂ� !A�(�Cx� �D��������������̀	Draw room������ ;������t�{�
�����������M�Y� ��� � �0@���B������A�̳�$
��C�ƋT�� �ˀ �Mˀ,�Yˀ �t�%̀First is right, second is down� ��t� ��M�Y!A����@�t$C��(��t� ��M!A�Y����C�t��'2��t� ��M�Y����A�t����B�t$C��<�0@�̀$D4 pit, $D5 ladder�F�t(�A@�P�0�CT �B��Z� �0@��0�CT�d� �0 �!A��0�CU�n��x��0@�C����������(�C`�0@( �0@��t0`̲��(Bοt0!t������tʁCP ��(A��B�����������/@����B@!P�Ax!P��߀1 Up��A��C�DU�D���������%��	��7+@���t0A�7����CVĂt!A�"P DB�v�������@��CV�e�s�	 �0!A�"��,��6̀read map�@��J���t� �� � ��Tt0� �    " �  �" �" ���^��h��'r̀ check open/close in current room�|���� ���
����t����0@�C���&��+@(��+&����t0BV̲�οt0FP��&��0�� t����0��0@�
��7���������������@�̀9create doors in given direction using preset random seed.�����O�t��t0t(G�&
O�0t�O�0��&O�0!A�0�t0D�O�0��:�t+D�&O�0�FP� Ad�D�t+@��7O��N̀door.open(d) = true�X�O�
O��O��&O��b��l��v̀	draw door����
��7O����G�G0�CH̲ �+@�G0�C@�	��O/D���O�0��G0G �
O�(C��������O�@�G�D���������̀draw offset element�������O�P�{�\���� � �e� 0B@ P!P� 0Ax!A@��e0@��O0B�e0B� 0DP! ��O0A)O0C�* {0{ \� 0B@!A@!`�e0O$A� 0Ax P P�*�O0A� 0B@ A@�4��>� � !_����@��^�^�H�{�e� � !`�R��\��f̀draw the energy bar�p��z�%����l� � 0f�l0���D@� ��A���D@ l�  L���D@� ��G���D�  L��������̀draw the score��������#�ߔ�00000 ��B��E���F��B���DD�P��������̀draw the keys����	���	��� � � 0AP�	�D@�  F��@�D�  h�$	��0A�C��.	 0D@ ��!A�"U!E�8	��CY ���A��� � � B	ߔ�00 �������B��  K�  X�L	��V	��`	��j	̀animate up ladder�t	��~	�����	� ��	� 0!P�P��	�@��CV �� $B�(A��B@�  Ax��	��J��	���	s0Ax `�e0B@��	���	���	̀animate down pit��	���	�����	���s�l���� 
��0A�E�

�s0@�J�
l0s"J�!
���B@!l�Ax!l��G�B@ l�Ax l�(
��B�!2
���B@!l�Ax!l��@�B@ l�Ax l�<
��F
��P
��Z
��4d
̀-draw outline room type 1 (cave) type 2 (room)�n
��
x
��z��	�
�0!A��
���G�B@�BA�	�
�z0A��
��@�r���
��L�x����X�q����h�y���
��t�t����o�c����w�O���
��r�@���
���
��@�r���
��m�z���
��z�m���
��r�@���
���A@�x����@�C@�Bx��A@�x����G�C@�Bx���"��O,̀Hline.draw drawer, support routine for room draw, draws in four quadrants�6��@�� � �� J������0 "B B@��0 "B Ax�	T��,@�	^� /@� h�B@�Ax������B@�Ax�D@!����,r�B@�Co!Ax���Co!���B@�Co!Ax�D@!��Co!��|��������������D@!����D@!��������Co!����Co!����D@!��Co!��D@!��Co!�������0���0���������̀random functions����
���t��	��0t�������� � ���� 0 (�� 0 (��&�0 "e  �"DmZG  "Ii�0��:��D����
N�����X��0@��0�RMEYx�b��0A�D�l�0�(A�v�0�$A���ܿ�0�*�KP@�������V�̀OCreate monsters and move them. Type changes : invulnerable, speed, intelligence� �̀Scoring system , shooting�6�̀/Energy, dropping energy/key objects, collection�
�̀SFX� 
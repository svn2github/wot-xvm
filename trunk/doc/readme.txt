��������� ������� XVM.xvmconf:

battle
  disableMirroredVehicleIcons: true  - ��������� �������������� ������ ������ (�������
                                       ��� �������������� ������)
  showPostmortemTips:          false - ��������� ����������� ����� ������ ����� ������
  drawGrid:                    true  - �������� ����������� ����� ��������� (����� ����
                                       �������� ��� ���������)

rating
  showPlayersStatistics:       true  - �������� ����������� ����������. ����������
                                       ������������� - ��� ���� ������ ���������� �����
                                       ����� ��������.
  battleLoading
    show:                      false - ��������� ����������� ���������� � ���� �������� ���
    format:                    "text" - ������ ����������� (����������� ����������������
                                       ���������� - ��.����)
  playersPanel
    show:                      false - ��������� ����������� ���������� � ������� ����
    format:                    "text" - ������ �����������
    colorizeMiddle:            false - ��������� ��������� ����� � ����������� �� ��������
                                       � ������� ����
  statisticForm
    show:                      false - ��������� ����������� ���������� � ���� ���������� ���
                                       (�� ������� Tab)
    format:                    "text" - ������ �����������

�����������, ����������� �� ��������� (OTMData.xml):

- ���� ������� color � ������-�� ���� �����������, ��� ���������� ���� �������
  �� ��������� ��� ����� ���� ������� (� �.�. ��������� ����� ��� �������� / ��);

- ������� lcolor ���� fill ����� �������� ������� ��� ������� ��������;

- ��� battle/showPostMortemTips ��������� ��������� ������, ����������� ��� ����������� �����.
  <battle>
    <showPostmortemTips>false</showPostmortemTips>
  </battle>

- ��� rating/showPlayersStatistics ��������� �������� ����������� ���������� � infoText (��. ����).
  <rating>
    <showPlayersStatistics>true</showPlayersStatistics>
  </rating>

- ��� combatScrollText/hitKind ��������� ����������� ����������� ����������� �����������
  � ����� ������ ���������
  <combatScrollText>
    <hitKind>Relative</hitKind>

- ��� combatScrollText/font ��������� ������ ���� ����� ��� ����������� ������

- �������� healthRatio/format/@font, playerName/format/@font, vehicleName/format/@font,
  currentHealth/format/@font ��������� ������ ���� ����� ��� ��������������� �����

- ��� components/*/infoText ����� ������ ��������� ����� �� ��������� (����������
  components/*/currentHealth), ��� behavior/*/*/*/infoText ����� ��������� � ����������
  ��������� �����.
  ������������ �������:
    {{hp}}         - ������� ��������
    {{hp-ratio}}   - ������� �������� ��������
    {{hp-max}}     - ������������ ��������
    {{nick}}       - ��� ������
    {{vehicle}}    - �������� �����
  ���������� (���������� �������� rating/showPlayersStatistics):
    {{rating}}     - ������� �����
    {{eff}}        - ������������� ������
    {{kb}}         - ���������� ����-���� (���������� ���������� ���� �� 1000).
    {{battles}}    - ���������� ����
    {{wins}}       - ���������� �����

������ ���� "format": "{{kb}} {{eff}} {{rating}}"

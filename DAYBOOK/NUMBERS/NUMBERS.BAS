TYPE Datos
  DataSer AS SINGLE
  Holiday AS STRING * 50
  TypeHol AS STRING * 1
END TYPE
PRINT
PRINT "Madest Daybook Overlay Screen Bufferizator. Version 0.6"
PRINT "Copyright 2000 in Boyarka. Saving Buffer... Using 'NULL:\madscr.ovl'"; : LOCATE CSRLIN, POS(1), 1
SLEEP 5
' $INCLUDE: 'ss.bi'


DIM forms AS Datos
OPEN "c:\madest\daybook\daybook.day" FOR RANDOM AS #1 LEN = LEN(forms)

nums = LOF(1) / LEN(forms)

CLS
PRINT "�஢eઠ..."
FOR al = 1 TO 200
SOUND 500 + RND * 1000, .03
NEXT al
PRINT
PRINT "������ 䠩��       :       "; USING "#.###"; LOF(1) / 1000; : PRINT " K"
PRINT "���ᨬ���. ࠧ��� :      32.000 K"
PRINT
PRINT "������ ᮡ�⨩     :       0.050 K"
PRINT "������ ����        :       0.004 K"
PRINT "������ ⨯�        :       0.001 K"
PRINT "������ �����      :       "; USING "#.###"; LEN(forms) / 1000; : PRINT " K"
PRINT "----------------------------------"
PRINT "������⢮ ����ᥩ :"; nums
PRINT "�������� ����ᥩ   :"; 365 - nums; "  ("; STR$(FIX(100 / 366 * (366 - nums))); "% )"
PRINT "�������� ����     :"; USING "###.###"; (32 - (LOF(1) / 1000));
PRINT " K"
PRINT
CLOSE
PRINT
PRINT
SHELL "pause"
CLS
' $INCLUDE: 'si.bi'
PRINT "Unloading Overlay..."
END


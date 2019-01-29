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
PRINT "Провeрка..."
FOR al = 1 TO 200
SOUND 500 + RND * 1000, .03
NEXT al
PRINT
PRINT "Размер файла       :       "; USING "#.###"; LOF(1) / 1000; : PRINT " K"
PRINT "Максимальн. размер :      32.000 K"
PRINT
PRINT "Длинна событий     :       0.050 K"
PRINT "Длинна даты        :       0.004 K"
PRINT "Длинна типа        :       0.001 K"
PRINT "Размер записи      :       "; USING "#.###"; LEN(forms) / 1000; : PRINT " K"
PRINT "----------------------------------"
PRINT "Количество записей :"; nums
PRINT "Свободно записей   :"; 365 - nums; "  ("; STR$(FIX(100 / 366 * (366 - nums))); "% )"
PRINT "Свободно места     :"; USING "###.###"; (32 - (LOF(1) / 1000));
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


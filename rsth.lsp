

;-------------------------------------------
;20181028jianpf
;�����ı�
(defun c:st()
 
(if (not rsth) (setq rsth 60))

(setq txtpit (getpoint "\n���� �����ı�λ��:"))
  
;���
(setq thb (getstring "\n���� ��� T:")) 
;����:
(progn
(initget "0 1 2 3 4 5 6 201 304")
(setq getw (getkword "���� [���(0)/�Ȱ�(1)/201(2)/304(3)/����(4)/�����ư�(5)/��п��(6)]" ))	    
(princ getw)
(cond
((= getw "0") (setq cailiao  "���"))
((= getw "1") (setq cailiao "�Ȱ�"))
((= getw "2") (setq cailiao "201"))
((= getw "201") (setq cailiao "201"))
((= getw "3") (setq cailiao "304"))
((= getw "304") (setq cailiao "304"))
((= getw "4") (setq cailiao "����"))
((= getw "5") (setq cailiao "�����ư�"))
((= getw "6") (setq cailiao "��п��"))
((= getw nil) (setq cailiao  "���"))
);end cond
);end progn
;����
(setq pcs (getstring"\n���� ���� PCS:"))


  

(setq rstext (strcat "T" thb " " cailiao  " " pcs  "PCS"))

(princ rstext)


(command "text" txtpit  rsth 0 rstext )

;���
(setq tbh (getreal "\nʵ�ʺ�� Tbh:")) 

(princ)

)


;--------------------------------------------
;20181028jianpf
;�����ı�����
(defun c:rstts()
;���
(setq thb (getstring "\n���� ��� T:"))
;����:
(progn
(initget "0 1 2 3 4 5 6 201 304")
(setq getw (getkword "���� [���(0)/�Ȱ�(1)/201(2)/304(3)/����(4)/�����ư�(5)/��п��(6)]" ))	    
(princ getw)
(cond
((= getw "0") (setq cailiao  "���"))
((= getw "1") (setq cailiao "�Ȱ�"))
((= getw "2") (setq cailiao "201"))
((= getw "201") (setq cailiao "201"))
((= getw "3") (setq cailiao "304"))
((= getw "304") (setq cailiao "304"))
((= getw "4") (setq cailiao "����"))
((= getw "5") (setq cailiao "�����ư�"))
((= getw "6") (setq cailiao "��п��"))
((= getw nil) (setq cailiao  "���"))
);end cond
);end progn
;����
(setq pcs (getstring"\n���� ���� PCS:"))
(setq rstext (strcat "T" thb " " cailiao  " " pcs  "PCS"))

(princ rstext)

;ѡ���ı�����
(setq cent(entget (car (entsel ))))	
;((-1 . <ͼԪ��: -1f7cd8>) 
;����:
;(0 . "MTEXT") ;
;����:
;(1 . "{\\fSimSun|b0|i0|c134|p2;����}")
;�߶�:
;(40 . 20.123) 
;�޸��ı��߶�40���

;��ȡԭ���ı�ֵ
;(setq ent_oldtxt (cdr(assoc 1 cent )))
;  (princ (cdr(assoc 1 cent )))

;׼���滻 
(setq cent (subst(cons 1 rstext)(assoc 1 cent)cent))
;��ʼ�޸�
(entmod cent)
;(print ">" )(print rstext)

;���
(setq tbh (getreal "\nʵ�ʺ�� Tbh:")) 
(princ)
  
)

;;-----
;20181028jianpf
;�����ı�����
(defun c:rstt()
;���
(setq thb (getstring "\n���� ��� T:"))
;����:
(progn
(initget "0 1 2 3 4 5 6 201 304")
(setq getw (getkword "���� [���(0)/�Ȱ�(1)/201(2)/304(3)/����(4)/�����ư�(5)/��п��(6)]" ))	    
(princ getw)
(cond
((= getw "0") (setq cailiao  "���"))
((= getw "1") (setq cailiao "�Ȱ�"))
((= getw "2") (setq cailiao "201"))
((= getw "201") (setq cailiao "201"))
((= getw "3") (setq cailiao "304"))
((= getw "304") (setq cailiao "304"))
((= getw "4") (setq cailiao "����"))
((= getw "5") (setq cailiao "�����ư�"))
((= getw "6") (setq cailiao "��п��"))
((= getw nil) (setq cailiao  "���"))
);end cond
);end progn
;����
(setq pcs (getstring"\n���� ���� PCS:"))
(setq rstext (strcat "T" thb " " cailiao  " " pcs  "PCS"))

(princ rstext)


;ѡ�����Ƽ�
(setq ss (ssget))
(setq ssn (ssname ss 0))
(setq cent (entget ssn))
;ѡ���ı�����
;(setq cent(entget (car (entsel ))))	
;((-1 . <ͼԪ��: -1f7cd8>) 
;����:
;(0 . "MTEXT") ;
;����:
;(1 . "{\\fSimSun|b0|i0|c134|p2;����}")
;�߶�:
;(40 . 20.123) 
;�޸��ı��߶�40���

;��ȡԭ���ı�ֵ
;(setq ent_oldtxt (cdr(assoc 1 cent )))
;  (princ (cdr(assoc 1 cent )))

;׼���滻 
(setq cent (subst(cons 1 rstext)(assoc 1 cent)cent))
;��ʼ�޸�
(entmod cent)
;(print ">" )(print rstext)
  
;���
(setq tbh (getreal "\nʵ�ʺ�� Tbh:")) 
(princ)
)




;-----------

;20181028jianpf
;�����ı��߶�(֧��20��ѡ��)
(defun c:rsttt()
;ѡ���ı�����
;ѡ�����Ƽ�
(setq ss (ssget))
;ѡ�����Ƽ��ĸ���
;(setq ssl (sslenth ss))
(setq ssl 20)
(setq ssl0 0)
(repeat ssl
(progn
(setq ssn (ssname ss ssl0))
(setq cent (entget ssn))

(setq ssl0 (+ ssl0 1))
(progn (print ssl0) (princ "�޸������СΪ:")(princ rsth))
	
;((-1 . <ͼԪ��: -1f7cd8>) 
;����:
;(0 . "MTEXT") ;
;����:
;(1 . "{\\fSimSun|b0|i0|c134|p2;����}")
;�߶�:
;(40 . 20.123) 

;�޸��ı��߶�40���
(setq cent (subst(cons 40 rsth)(assoc 40 cent)cent))
(entmod cent)
);end progn
);end ѭ��20��

(princ)

)





;20181028jianpf
;�����ı��߶�
(defun c:rsth()
(setq rsth (getreal "�����ı��߶�:"))
  (c:rsttt)
(princ)
)

;�����ı��߶�
(defun c:rsttth()
(setq rsth (getreal "�����ı��߶�:"))
  (c:rsttt)
(princ)
)

;�����ı��߶�
(defun c:rstth()
(setq rsth (getreal "�����ı��߶�:"))
  (c:rsttt)
(princ)
)

;�����ı��߶�20
(defun c:rst1()
(setq rsth 10)
  (c:rsttt)
(princ)
)
;�����ı��߶�20
(defun c:rst2()
(setq rsth 20)
  (c:rsttt)
(princ)
)
;�����ı��߶�40
(defun c:rst3()
(setq rsth 40)
   (c:rsttt)
(princ)
)
;�����ı��߶�80
(defun c:rst4()
(setq rsth 80)
   (c:rsttt)
(princ)
)




;-------------------------------------------
;20181123jianpf
;�����ı�
(defun c:sts()
 
(if (not rsth) (setq rsth 60))

(setq txtpit (getpoint "\n���� �����ı�λ��:"))
  
 
;�����ַ���:
(progn
(initget "0 1 2 3 4 5 6 7 8 9 a s d f g b l q u y")
(setq getw (getkword "�ı� ���⴦�� [С�״��(0)/�п����ۺ�(1)/�ճ��ۺ�(2)/�д�(3)/��΢��(q)/���ϼӹ�(4)/�����Ű�(5)/�����Ű�(6)/Ҫ����(7)/�巴������(8)/�Ӳ���(9)/ÿ����(a)/������(s)/������(d)/��������(f)/��������(g)/��ʱ����(b)/��������(l)]/����Ҷ(u)/�ȴ���1��(y)" ))	    
(princ getw)
(cond
((= getw "0") (setq cailiao  "С�״��"))
((= getw "1") (setq cailiao "�п����ۺ�"))
((= getw "2") (setq cailiao "�ճ��ۺ�"))
((= getw "3") (setq cailiao "�д�"))
((= getw "4") (setq cailiao "���ϼӹ�"))
((= getw "5") (setq cailiao "�����Ű�"))
((= getw "6") (setq cailiao "�����Ű�"))
((= getw "7") (setq cailiao "Ҫ����"))
((= getw "8") (setq cailiao "�巴������"))
((= getw "9") (setq cailiao "�Ӳ���"))
((= getw "a") (setq cailiao "Ԫ/��"))
((= getw "s") (setq cailiao "������"))
((= getw "d") (setq cailiao "������"))
((= getw "f") (setq cailiao "��������"))
((= getw "g") (setq cailiao "��������"))
((= getw "b") (setq cailiao "��ʱ����"))
((= getw "l") (setq cailiao "��������"))
((= getw "q") (setq cailiao "��΢��"))
((= getw "u") (setq cailiao "����Ҷ"))
((= getw "y") (setq cailiao "�ȴ���1��"))
((= getw nil) (setq cailiao  "���⴦��"))
);end cond
);end progn
 
  

(setq rstext (strcat " "cailiao " "  ))

(princ rstext)


(command "text" txtpit  rsth 0 rstext )

 
(princ)

)





;�˳�
(defun c:ppp()
 
    (command "close" "y" "n")
(princ)
)




;��ͼ�������Զ������
(defun C:tdwgprops (/ App Doc DwgProps)
  (vl-load-com)
(setq App (vlax-Get-Acad-Object)
Doc (vla-Get-ActiveDocument App)
DwgProps (vla-Get-SummaryInfo Doc))
;(vla-AddCustomInfo DwgProps "Sample1" "No Data")
;(vla-AddCustomInfo DwgProps "Sample2" "No Data")
;(vla-SetCustomByIndex DwgProps 0 "Sample1" "Some data")
;(vla-SetCustomByKey DwgProps "Sample2" "2000")
(princ))



 (defun C:fggg()

  (VL-LOAD-COM)

  (setq AcadObject (vlax-get-acad-object))

  (setq      AcadDocument (vla-get-ActiveDocument AcadObject))

    (setq    mSpace (vla-get-ModelSpace AcadDocument))
 
;;; ����AutoCAD�еĵ�ǰ���ļ�

  (setq activeDoc (vla-get-ActiveDocument AcadObject))

(progn
  
  (princ "������ļ���: ")(princ (vla-get-path activeDoc))
(princ)
    (princ "\\") (princ (vla-get-name activeDoc)) 
 (princ)
  
)




 )





;�����ⲿcmd������ļ��ϴ������
(defun c:segg()
;�ⲿcmd�����·��\\+ �ո�
(setq sendto (strcat "C:\\Users\\Administrator\\AppData\\Roaming\\Microsoft\\Windows\\SendTo\\�����.cmd" " "))
;�����ַ���:
(progn
(initget "n s")
(setq getw (getkword "�Ƿ񱣴�->�������:[��(s)/��(n)]" ))
(cond
((= getw "s") (progn
	(command "QSAVE")
;ִ���ⲿ����
(progn
;����ActiveX
  (VL-LOAD-COM)
;����CAD����
  (setq AcadObject (vlax-get-acad-object))
;�����ĵ�����
  (setq      AcadDocument (vla-get-ActiveDocument AcadObject))
;���嵽��ǰ�������
    (setq    mSpace (vla-get-ModelSpace AcadDocument))
;���嵱ǰ�ĵ�
  (setq activeDoc (vla-get-ActiveDocument AcadObject))
;��ȡ�ļ�·�����ļ���
  (setq filepathname (strcat (vla-get-path activeDoc) "\\" (vla-get-name activeDoc)) )

  (startapp sendto filepathname )
  (princ (strcat (menucmd "M=$(edtime,0,YYYY-MO-DD-HH:MM:SS am/pm)") "  " filepathname " -> ���͵������:" ) ))
);����ִ���ⲿ����
);����ѡ��s����
((= getw "n") (princ  "ȡ��������"))
((= getw nil) (princ  "δѡ��"))
);end cond
);end progn
 
;�����ⲿCMD����+�ļ�·�����Ʋ���
;(startapp sendto filepathname )
;��ӡ��ǰʱ��
;(princ (strcat (menucmd "M=$(edtime,0,YYYY-MO-DD-HH:MM:SS am/pm)") "  " filepathname " -> ���͵������:" ) )
(princ)
 
)
;���������ⲿcmd����




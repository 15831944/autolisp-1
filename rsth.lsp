

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
(defun c:rstth2()
(setq rsth 20)
  (c:rsttt)
(princ)
)
;�����ı��߶�40
(defun c:rstth3()
(setq rsth 40)
   (c:rsttt)
(princ)
)
;�����ı��߶�80
(defun c:rstth4()
(setq rsth 80)
   (c:rsttt)
(princ)
)
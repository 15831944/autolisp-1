;jianpf 20180620
;���ð��tbh
(defun c:tbh()
(princ "���ð��:")
(setq tbh (getreal));  
(princ "���:")
(princ tbh)
(princ)
)

;ƫ�ƿ�ݼ�ft
(defun c:ft()
  (princ "ƫ�ư��:")
  (princ tbh)
  
  ;(princ "\n")
  (command  "offset" tbh )
  (princ)
)

;20180902JPF
;��ȡ��עֵ��ƫ��
(defun c:fsa()
(progn (princ "\nѡ��--��ע����:")) 
(progn
;ѡ���ע����
(setq ent_bz (entget (nth 0 (entsel)) ))
;�жϵ��1�Ƿ�" "��ֵ
(setq ent_bz1 (cdr(assoc 1 ent_bz )))
(setq ent_bz42 (cdr(assoc 42 ent_bz )))
;��ֵbzz=ʵ�ʱ�ע���42,�����bzz=�ֶ���ע1
(if (= ent_bz1 "") (setq bzz ent_bz42) (setq bzz ent_bz1))
)
;ƫ��
(command  "offset" bzz )

(princ) 

  )


;ƫ�ư���ݼ�fst
(defun c:fst()
  (princ "���:")
  (princ tbh)  
       
  (princ "\n    fstƫ��:")
  (princ tbh) 
  (command  "offset" tbh )
  (princ)
)

;ƫ�ƿ�ݼ�fs
(defun c:fs()

  (command  "offset" ) 
)

;ƫ�ƿ�ݼ�fE
(defun c:fe()

(princ "�Գ��ܳ���:")
(setq fedcc (getreal))
  (setq fedc (/ fedcc 2))
  (princ "����:")
  (princ fedc )
  (command  "offset" fedc ) 
)

;ƫ�ƿ�ݼ�t
(defun c:t()
  (princ "���:")
  (princ tbh)
  (princ "\nƫ�Ƴ���:") 
  (setq py (getreal))
  (setq py (- py tbh))

  
  (princ "\n����۳�:")
  (princ tbh )
  
  (princ "\n   tƫ��:")
  (princ py )
  
  (princ "\n")
  (command  "offset" py )
  (princ)
)

;ƫ�ƿ�ݼ�tt
(defun c:tt()
  (princ "���:")
  (princ tbh)
  (princ "\nttƫ�Ƴ���:")
  (setq pyy (getreal))
  ;����۳�2�ΰ��
  (setq pyy (- pyy tbh))
  (setq pyy (- pyy tbh))
     
  (princ "\n����۳�:")
  (princ (* tbh 2))
  
  (princ "\n    ttƫ��:")
  (princ pyy)


  (princ "\n")
  (command  "offset" pyy )
  (princ)
)

;ƫ�ƿ�ݼ�ttt
(defun c:ttt()
  (princ "���:")
  (princ tbh)
  (princ "\ntttƫ�Ƴ���:")
  (setq pyy (getreal))
  ;����۳�3�ΰ��
  (setq pyy (- pyy tbh))
  (setq pyy (- pyy tbh))
  (setq pyy (- pyy tbh))
     
  (princ "\n����۳�:")
  (princ (* tbh 2))
  
  (princ "\n    tttƫ��:")
  (princ pyy)


  (princ "\n")
  (command  "offset" pyy )
  (princ)
)



;�Զ����ݼ�
(defun c:kk()
 
  (setq hhs (getreal "
-a
ad:���Ա�ע
add:ֱ����ע

-c
cc:����
ce:Բ��
cdd:�޸�Բֱ��
cddd:�༭Բֱ��
cm:÷����(ˮƽ�׾�,ˮƽ�׾��е�ƫ�ϴ�ֱ�׾�,���п׾�ˮƽ�ʹ�ֱ�׾��2��)


-d
dft:�뾶Բ�;��μ���5��ɾ��Բ
dfx:�㷽��(�ۺ�)

-e
ee:����

-f
fa:ֱ��
fe:�ܶԳ�ƫ��
fs:ƫ��
ft:ƫ��1�����
fsa:;��ȡ��עֵ��ƫ��(��עֵ)

-t
tbh:���ð��ֵ
t:����-1*���ֵ(fat:��ȡ��עֵ��-1*���ֵƫ��)
tt:����-2���(fatt:��ȡ��עֵ��-2*���ֵƫ��)
ttt:����-3���(fattt:��ȡ��עֵ��-3*���ֵƫ��)
trt:���߿�ݼ�

-j
jjt:ģ������1�� ǰ����=���䳤��+1*���ֵ(jjat:��עֵ)
jjtt:ģ������2�� ǰ����=���䳤��+2*���ֵ(jjatt:��עֵ)
jjttt:ģ������3�� ǰ����=���䳤��+3*���ֵ(jjattt:��עֵ)



-s
s:����
sc:����
scr:���ŵ��³ߴ� 
SELECTSIMILAR:(CAD)ѡ��ͬ�����

"))

)

;������hh2018.07.26
(defun c:hh()
 
  (setq hhs (getreal "
ver:20180620-20180912�����

1-չ���ܳ���  ԭ�����     �ı�:�쳤    �ĺ�:����        
2-�׾�>=���   ������(����)
3-�ӽ�����۳�   ʵ�ʺ�� > ����  (���)
4-Ĥ����201.304.�����
5-�����ǵ�һ��ͼ  Բ�Ŀ���Բ̨����ͼ�ĳ���
6-�������� ��������     ��2��:������չ      ������С
7-�ӽ����� ��֤>�۱�>��>���ŷ�>�ۿ�,�������Ĥ��(���:10mm,16mm,22mm)+���ֵ
8-���п�������ı��뿴����ģ���߳���,(�������ģ��С20mm)
9-Բ��ԲͲ��ߴ��1�����ĳ���,�ڵľͲ�Ҫ�۰��
"))
  (princ)
)
;bh2018.10.16s
(defun c:bh()
 
  (setq bhs (getreal ".
.  �����                   ̼��                     ��п��
--------------------------------------------------------------------
 ���    ʵ�ʺ��        ���      ʵ�ʺ��            ���     ʵ�ʺ��
 0.7     0.5                 1             1                      0.2
 0.8     0.6                 1.2           1.2                    0.7
 0.9     0.7                 1.5           1.3                    0.8
 1       0.8                 2             1.8                    0.9
 1.2     1                   2.5           2.3                    1
 1.5     1.3                 3             2.8                    1.2
 2.0     1.8                 4             3.5                    1.5
 2.5     2.3                 5             4.5                    2
 3       2.8                 6             5.5                    2.5
 4       3.5                 8             7.2
 5       4.5                 10            9.5
 6       5.8                 12            11
.                              16
.                              18
.                              20
"))
  (princ)
)


;20180901-Jianpf

;����Բֱ��cdd
(defun c:cdd()
;�ж��Ƿ���Բֱ��ֵ
(if (not czj) (setq czj (getreal "\nԲֱ��:")))
;���Բֱ��ֵ
(progn (princ "Բֱ��:") (princ czj))
;ѡ�񵥸�Բ����,�޸ĵ�Ե�Բ�뾶ֵΪֱ��ֵ��һ��
(progn
(setq cent(entget (car (entsel ))))
(progn (princ "\nԲֱ��:") (princ (* 2(cdr (assoc 40 cent)))) (princ " -> ")(princ czj))
(setq cent (subst(cons 40 (/ czj 2))(assoc 40 cent)cent))
(entmod cent)

(princ)
)
)

;��������Բֱ��cddd
(defun c:cddd()
(progn
;��������Բֱ��
(setq i (getreal "\n��������Բֱ��:"))
(if (not i) (setq i  czj))
(setq czj i)
;��ȡ����
(setq cent(entget (car (entsel))))
;���Բֱ��ֵ
(progn (princ "\n��Բֱ��:") (princ czj))
(progn (princ "\nԲֱ��:") (princ (* 2(cdr (assoc 40 cent)))) (princ " -> ")(princ czj))

;�޸�Բֱ����С
(setq cent (subst(cons 40 (/ czj 2))(assoc 40 cent)cent))
(entmod cent)


(princ)
)
)

;20180701JPF
;���ƿ�ݼ�cc
(defun c:cc(/ ent)
  (setq ent (ssget))
  (command "copy" ent "" "m")
  (princ)
)

;ֱ�߿�ݼ�fa
(defun c:fa()
(command  "_line" ) 
)
;�����ݼ�ee
(defun c:ee()
(command  "_mirror"  )
)

;Բ��(����)ƫ�ƿ�ݼ�ce
(defun c:ce()
  (progn
   ;����Բ��λ��
   (setq pit (getpoint (list 0 0 0) "Բ��:"))
   ;����Բ�뾶ʵ��
   (princ "Բֱ��:")
   (setq r (getreal))
   ;�ж��Ƿ�����,û�о�Ĭ�����ó�5
   (if (not r) (setq r 5))
   ;Բ����,λ��,�뾶
   (command "circle" pit "d" r)
   ;�������ִ�в����Ķ�������(Բ�������Ҫɾ��)
   (setq cname (entlast))

   ;����Բ�ۿ׵���ʵ������
   (setq rk (getreal))
   (setq rkx  (list (+ (car pit) rk) (+ (cadr pit) 0) 0)  )
   (setq rky (list (car pit) (- (cadr pit) rk ) 0))
   ;Բ����,λ��,�뾶
   (command "circle" rkx "d" r)
   
;-x

   (setq r2 (/ r 2))
   (setq x0 (car pit))
   (setq y0 (cadr pit))
  
   (setq x1  x0)
   (setq y1 (+ y0 r2))
   (setq x2 (+ x0 rk))
   (setq y2 y1)

   ;(x0,y0+r2)
   (setq line01 (list x1 y1 0) )
   ;(x0+rk,y1)
   (setq line02 (list x2 y2 0 ) )
   (command  "line"  line01  line02  "")

   (setq x1  x0)
   (setq y1 (- y0 r2))
   (setq x2 (+ x0 rk))
   (setq y2 y1)
   
   ;(x0,y0-r2)
   (setq line01 (list x1 y1 0) )
   ;(x0+rk,y1)
   (setq line02 (list x2 y2 0 ) )
   (command  "line"  line01  line02  "")


;-y
   (setq rky (list (car pit) (- (cadr pit) rk ) 0))
   (command "circle" rky "d" r)
   (setq x1  (- x0 r2 ))
   (setq y1 y0)
   (setq x2 x1)
   (setq y2 (- y1 rk))

   ;(x0,y0+r2)
   (setq line01 (list x1 y1 0) )
   ;(x0+rk,y1)
   (setq line02 (list x2 y2 0 ) )
   (command  "line"  line01  line02  "")

   (setq x1  (+ x0 r2 ))
   (setq y1 y0)
   (setq x2 x1)
   (setq y2 (- y1 rk))

   ;(x0,y0+r2)
   (setq line01 (list x1 y1 0) )
   ;(x0+rk,y1)
   (setq line02 (list x2 y2 0 ) )
   (command  "line"  line01  line02  "")
   
  )
  (princ)
)

;���Կ�ݼ�ad
(defun c:ad()
(command  "_dimlinear" )
  
)
;ֱ����ݼ�add
(defun c:add()
 
(command  "_dimdiameter" ) 
)
 



;20180902JPF
;��ȡ��עֵ��ƫ��fsa
(defun c:fsa()
(progn (princ "\nѡ��--��ע����:")) 
(progn
;ѡ���ע����
(setq ent_bz (entget (nth 0 (entsel)) ))
;�жϵ��1�Ƿ�" "��ֵ
(setq ent_bz1 (cdr(assoc 1 ent_bz )))
(setq ent_bz42 (cdr(assoc 42 ent_bz )))
;��ֵbzz=ʵ�ʱ�ע���42,�����bzz=�ֶ���ע1
(if (= ent_bz1 "") (setq bzz ent_bz42) (setq bzz ent_bz1))
)
(command  "offset" bzz )

(princ) 

  )

;20180902JPF
;��ȡ��עֵ��ƫ��fat
(defun c:fat()
(progn (princ "\nѡ��--��ע����:")) 
(progn
;ѡ���ע����
(setq ent_bz (entget (nth 0 (entsel)) ))
;�жϵ��1�Ƿ�" "��ֵ
(setq ent_bz1 (cdr(assoc 1 ent_bz )))
(setq ent_bz42 (cdr(assoc 42 ent_bz )))
;��ֵbzz=ʵ�ʱ�ע���42,�����bzz=�ֶ���ע1
(if (= ent_bz1 "") (setq bzz ent_bz42) (setq bzz ent_bz1))
)
;C:t()����-------
  (princ "���:")
  (princ tbh)
  (princ "\nƫ�Ƴ���:") 
  (setq py bzz)
  (setq py (- py tbh))

  
  (princ "\n����۳�:")
  (princ tbh )
  
  (princ "\n   tƫ��:")
  (princ py )
  
  (princ "\n")
  (command  "offset" py )
 

(princ) 

  )
;20180902JPF
;��ȡ��עֵ��ƫ��fatt
(defun c:fatt()
(progn (princ "\nѡ��--��ע����:")) 
(progn
;ѡ���ע����
(setq ent_bz (entget (nth 0 (entsel)) ))
;�жϵ��1�Ƿ�" "��ֵ
(setq ent_bz1 (cdr(assoc 1 ent_bz )))
(setq ent_bz42 (cdr(assoc 42 ent_bz )))
;��ֵbzz=ʵ�ʱ�ע���42,�����bzz=�ֶ���ע1
(if (= ent_bz1 "") (setq bzz ent_bz42) (setq bzz ent_bz1))
)
;C:tt()����-------
  (princ "���:")
  (princ tbh)
  (princ "\nttƫ�Ƴ���:")
  (setq pyy bzz)
  ;����۳�2�ΰ��
  (setq pyy (- pyy tbh))
  (setq pyy (- pyy tbh))
     
  (princ "\n����۳�:")
  (princ (* tbh 2))
  
  (princ "\n    ttƫ��:")
  (princ pyy)


  (princ "\n")
  (command  "offset" pyy )
  (princ) 

(princ) 

  )
;20180902JPF
;��ȡ��עֵ��ƫ��fattt
(defun c:fattt()
(progn (princ "\nѡ��--��ע����:")) 
(progn
;ѡ���ע����
(setq ent_bz (entget (nth 0 (entsel)) ))
;�жϵ��1�Ƿ�" "��ֵ
(setq ent_bz1 (cdr(assoc 1 ent_bz )))
(setq ent_bz42 (cdr(assoc 42 ent_bz )))
;��ֵbzz=ʵ�ʱ�ע���42,�����bzz=�ֶ���ע1
(if (= ent_bz1 "") (setq bzz ent_bz42) (setq bzz ent_bz1))
)
;C:ttt()����-------
  (princ "���:")
  (princ tbh)
  (princ "\ntttƫ�Ƴ���:")
  (setq pyy bzz)
  ;����۳�3�ΰ��
  (setq pyy (- pyy tbh))
  (setq pyy (- pyy tbh))
  (setq pyy (- pyy tbh))
     
  (princ "\n����۳�:")
  (princ (* tbh 2))
  
  (princ "\n    tttƫ��:")
  (princ pyy)


  (princ "\n")
  (command  "offset" pyy )
  (princ)

  )

;jjat--------
;20180902JPF
;��ʾ��עֵ+1�����
(defun c:jat()
(progn (princ "\nѡ��--��ע����:")) 
(progn
;ѡ���ע����
(setq ent_bz (entget (nth 0 (entsel)) ))
;�жϵ��1�Ƿ�" "��ֵ
(setq ent_bz1 (cdr(assoc 1 ent_bz )))
(setq ent_bz42 (cdr(assoc 42 ent_bz )))
;��ֵbzz=ʵ�ʱ�ע���42,�����bzz=�ֶ���ע1
(if (= ent_bz1 "") (setq bzz ent_bz42) (setq bzz ent_bz1))
)
;C:jjt()����-------
  (princ "���:")
  (princ tbh)
  (princ "\njjtƫ�ƺ󳤶�:")
  (setq pyy bzz)
  ;����۳�2�ΰ��
  (setq pyy (+ pyy tbh)) 
     
  (princ "\n����۳�:")
  (princ (* tbh 2))
  
  (princ "\n    jjat��+1�����:")
  (princ pyy)
  (setq pyy (getreal))
  (princ)
(princ) 

  )

;jjatt--------
;20180902JPF
;��ʾ��עֵ+2�����
(defun c:jjatt()
(progn (princ "\nѡ��--��ע����:")) 
(progn
;ѡ���ע����
(setq ent_bz (entget (nth 0 (entsel)) ))
;�жϵ��1�Ƿ�" "��ֵ
(setq ent_bz1 (cdr(assoc 1 ent_bz )))
(setq ent_bz42 (cdr(assoc 42 ent_bz )))
;��ֵbzz=ʵ�ʱ�ע���42,�����bzz=�ֶ���ע1
(if (= ent_bz1 "") (setq bzz ent_bz42) (setq bzz ent_bz1))
)
;C:jjtt()����-------
  (princ "���:")
  (princ tbh)
  (princ "\njjttƫ�ƺ󳤶�:")
  (setq pyy bzz)
  ;����۳�2�ΰ��
  (setq pyy (+ pyy tbh)) 
  (setq pyy (+ pyy tbh)) 
     
  (princ "\n����۳�:")
  (princ (* tbh 2))
  
  (princ "\n    jjatt��+2�����:")
  (princ pyy)
  (setq pyy (getreal))
  (princ)
(princ) 

  )


;jjattt--------
;20180902JPF
;��ʾ��עֵ+2�����
(defun c:jjattt()
(progn (princ "\nѡ��--��ע����:")) 
(progn
;ѡ���ע����
(setq ent_bz (entget (nth 0 (entsel)) ))
;�жϵ��1�Ƿ�" "��ֵ
(setq ent_bz1 (cdr(assoc 1 ent_bz )))
(setq ent_bz42 (cdr(assoc 42 ent_bz )))
;��ֵbzz=ʵ�ʱ�ע���42,�����bzz=�ֶ���ע1
(if (= ent_bz1 "") (setq bzz ent_bz42) (setq bzz ent_bz1))
)
;C:jjtt()����-------
  (princ "���:")
  (princ tbh)
  (princ "\njjttƫ�ƺ󳤶�:")
  (setq pyy bzz)
  ;����۳�2�ΰ��
  (setq pyy (+ pyy tbh)) 
  (setq pyy (+ pyy tbh)) 
  (setq pyy (+ pyy tbh)) 
     
  (princ "\n����۳�:")
  (princ (* tbh 2))
  
  (princ "\n    jjatt��+3�����:")
  (princ pyy)
  (setq pyy (getreal))
  (princ)
(princ) 

  )

;���κ����
(defun c:dft()
  ;����Բ��λ��
 (setq pit (getpoint (list 0 0 0) "�������:"))
  ;����Բ�뾶ʵ��
  (setq r (getreal "�߳�:"))
  ;�ж��Ƿ�����,û�о�Ĭ�����ó�5
  (if (not r) (setq r 30))
  ;Բ����,λ��,�뾶
  (command "_rectang" pit "d" r r pause)
  (command "circle" pit 5 )
  ;�������ִ�в����Ķ�������(Բ�������Ҫɾ��)
  (setq cname (entlast))
  ;����Բ,ִ�м�������
  (command "trim" "" pause pause pause  pause pause pause)
  ;ɾ����һ�λ��Ķ�������(Բ)
  (entdel cname)
  ;�س�����
  (command "\\" )
  ;Ĭ�����Ϊ��
  (princ)
)

;���߿�ݼ�trt
(defun c:trt()
(command  "_trim" "" )
)






;JPF20180914-------- 
;�㷽��
(defun c:dfx()


;����cond�ؼ���
;(initget "E D S F")
  
  ;����Բ��λ��
 (setq pit (getpoint (list 0 0 0) "\nԲ��:"))
 (setq x (car pit))
 (setq y (cadr pit))
 (setq r 5)
 (setq d 20)
 (setq d (+ r d))

 (setq ep1 (list x (+ y r) ))
 (setq ep2 (list x (+ y d) ))

 (setq dp1 (list x (- y r) ))
 (setq dp2 (list x (- y d) ))

 (setq sp1 (list (- x r) y ))
 (setq sp2 (list (- x d) y ))
  
 (setq fp1 (list (+ x r) y ))
 (setq fp2 (list (+ x d) y ))

;ѭ������
(repeat 2

  
  ;���÷���
 (setq dfxx (getstring   "����E,D,S,F:") )


;�жϷ���
(cond
((= dfxx "e") (progn  (command  "line"  ep1  ep2  "") (princ "\n  ^E:�� \n")))
((= dfxx "d") (progn  (command  "line"  dp1  dp2  "") (princ "\n  vD:�� \n")))
((= dfxx "s") (progn  (command  "line"  sp1  sp2  "") (princ "\n  <S:�� \n")))
((= dfxx "f") (progn  (command  "line"  fp1  fp2  "") (princ "\n  >F:�� \n")))
)
);end-repeat 4
  

   
  
  ;Ĭ�����Ϊ��
  (princ)
)


;���Ϸ���
(defun c:dfe() 
;����Բ��λ��
 (setq pit (getpoint (list 0 0 0) "\nԲ��:"))
 (setq x (car pit))
 (setq y (cadr pit))
 (setq r 5)
 (setq d 20)
 (setq d (+ r d))

 (setq ep1 (list x (+ y r) ))
 (setq ep2 (list x (+ y d) ))

 (setq dp1 (list x (- y r) ))
 (setq dp2 (list x (- y d) ))

 (setq sp1 (list (- x r) y ))
 (setq sp2 (list (- x d) y ))
  
 (setq fp1 (list (+ x r) y ))
 (setq fp2 (list (+ x d) y ))

 (progn  (command  "line"  ep1  ep2  "") (princ "\n  ^E:�� \n")) 
 ;(progn  (command  "line"  dp1  dp2  "") (princ "\n  vD:�� \n")) 
 ;(progn  (command  "line"  sp1  sp2  "") (princ "\n  <S:�� \n")) 
 ;(progn  (command  "line"  fp1  fp2  "") (princ "\n  >F:�� \n")) 
 
  ;Ĭ�����Ϊ��
  (princ)
)

;���·���
(defun c:dfd() 
;����Բ��λ��
 (setq pit (getpoint (list 0 0 0) "\nԲ��:"))
 (setq x (car pit))
 (setq y (cadr pit))
 (setq r 5)
 (setq d 20)
 (setq d (+ r d))

 (setq ep1 (list x (+ y r) ))
 (setq ep2 (list x (+ y d) ))

 (setq dp1 (list x (- y r) ))
 (setq dp2 (list x (- y d) ))

 (setq sp1 (list (- x r) y ))
 (setq sp2 (list (- x d) y ))
  
 (setq fp1 (list (+ x r) y ))
 (setq fp2 (list (+ x d) y ))

 ;(progn  (command  "line"  ep1  ep2  "") (princ "\n  ^E:�� \n")) 
 (progn  (command  "line"  dp1  dp2  "") (princ "\n  vD:�� \n")) 
 ;(progn  (command  "line"  sp1  sp2  "") (princ "\n  <S:�� \n")) 
 ;(progn  (command  "line"  fp1  fp2  "") (princ "\n  >F:�� \n")) 
 
  ;Ĭ�����Ϊ��
  (princ)
)

;������
(defun c:dfs() 
;����Բ��λ��
 (setq pit (getpoint (list 0 0 0) "\nԲ��:"))
 (setq x (car pit))
 (setq y (cadr pit))
 (setq r 5)
 (setq d 20)
 (setq d (+ r d))

 (setq ep1 (list x (+ y r) ))
 (setq ep2 (list x (+ y d) ))

 (setq dp1 (list x (- y r) ))
 (setq dp2 (list x (- y d) ))

 (setq sp1 (list (- x r) y ))
 (setq sp2 (list (- x d) y ))
  
 (setq fp1 (list (+ x r) y ))
 (setq fp2 (list (+ x d) y ))

 ;(progn  (command  "line"  ep1  ep2  "") (princ "\n  ^E:�� \n")) 
 ;(progn  (command  "line"  dp1  dp2  "") (princ "\n  vD:�� \n")) 
 (progn  (command  "line"  sp1  sp2  "") (princ "\n  <S:�� \n")) 
 ;(progn  (command  "line"  fp1  fp2  "") (princ "\n  >F:�� \n")) 
 
  ;Ĭ�����Ϊ��
  (princ)
)

;���ҷ���
(defun c:dff() 
;����Բ��λ��
 (setq pit (getpoint (list 0 0 0) "\nԲ��:"))
 (setq x (car pit))
 (setq y (cadr pit))
 (setq r 5)
 (setq d 20)
 (setq d (+ r d))

 (setq ep1 (list x (+ y r) ))
 (setq ep2 (list x (+ y d) ))

 (setq dp1 (list x (- y r) ))
 (setq dp2 (list x (- y d) ))

 (setq sp1 (list (- x r) y ))
 (setq sp2 (list (- x d) y ))
  
 (setq fp1 (list (+ x r) y ))
 (setq fp2 (list (+ x d) y ))

 ;(progn  (command  "line"  ep1  ep2  "") (princ "\n  ^E:�� \n")) 
 ;(progn  (command  "line"  dp1  dp2  "") (princ "\n  vD:�� \n")) 
 ;(progn  (command  "line"  sp1  sp2  "") (princ "\n  <S:�� \n")) 
 (progn  (command  "line"  fp1  fp2  "") (princ "\n  >F:�� \n")) 
 
  ;Ĭ�����Ϊ��
  (princ)
)

;JPF20180914--------
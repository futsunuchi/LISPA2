; STUDENT				ID	
; Juan Sebastian Hoyos			40087920
; Noah Freger				40097005
; Abdalla Osman				40007620
; Kevin Rao 				40095427

;Assignment 2:
;Exercise #1
;Part A
	;a) (A (B C))
	;b) (D (E F))
	;c) ( (B C) )
	;d) (E F)
	;e) (P O L)
	;f) ((CAR A) (CONS A B))

;Part B
	;a) (cadddr '(A B C D))
	;b) (car (cdadar '((A (B C)) E)) ) I'm not sure if we are aloud to use different format than what he gave
	;c) (caaar '(((D) E) U))
	;d)	(cadar '(((D) E) U))
	
;Exercise #2
(defun elementIsNumber(L)
	(if (numberp (cadr L))
		(print 'T)
		(print Nil)))
;Test Cases
(elementIsNumber ‘(1 2 3 4))
(elementIsNumber ‘(1 a b 4))
;Exercise #3
(defun elementIsList(L)
	(if (consp (cadr L))
		(print t)
		(print nil)))
;Test Cases
(elementIsList '((1 2) 3 4))
(elementIsList '(1 a b 4))
(elementIsList '( (1 (2)) 3 4) )
(elementIsList '(1 (a) b 4))
(elementIsList '( (1 (2)) (3 4)) )
(elementIsList '( (1 (2)) ((3) 4)) )
(elementIsList '( (1 (2)) ((3) (4)) ) )

;Exercise #4
(defun base8(N)
	(if (< N 0)
         (list -1)
         (if (and (>= N 0) (< N 8))
            (list N)
            (append (base8 (floor N 8)) (list (mod N 8)) ))))
;Test Cases
(loop for x in '(-1 0 7 8 15 20 204)
      do (print (base8 x))) 

;Exercise #5
(defun myMember(x lst)
	(if (null lst)
		nil
		(if (eq x (car lst))
			t
			(myMember x (rest lst)))))
;Test Cases
(print (myMember 'a '( ) ))
(print (myMember 'b '(a b)))
(print (myMember 'a '(a b c d)))
(print (myMember 1 '(1 2 3 4)))

;Exercise #6
(defun nbDigits(N)
	(if (< N 10)
		1
		(+ 1 (nbDigits (floor N 10)))))
;Test Cases
(print(nbDigits -12))
(print(nbDigits 0))
(print(nbDigits 6))
(print(nbDigits 9))
(print(nbDigits 10))
(print(nbDigits 1256))

;Exercise #7
(defun binary_length_(N)
	(cond ((zerop N) 1)
		  ((= N 1) 1)
		  (t (+ 1 (binary_length_ (floor (/ N 2)))))))
;Test Cases
(print(binary_length_ 0))
(print(binary_length_ 1))
(print(binary_length_ 4))
(print(binary_length_ 9))
(print(binary_length_ 10))

;Exercise #8
(defun binary_List(N)
	(if (<= N 0)
         (list nil)
         (if (and (> 0) (< N 2))
            (list N)
            (append (binary_List (floor N 2)) (list (mod N 2)) ))))
;Test Case
(loop for x in '(0 -1  1 4 5 10 15 1023 1024)
      do (print (binary_List x))) 
	  
;Exercise #9
(defun nth2 (n lst)
  (if(or(zerop n)(null lst))
     nil
   (if (= n 1)
    (car lst)
    (nth2 (- n 1) (cdr lst)))))

;Test Cases
(print(nth2 1 '()))
(print(nth2 0 '(12 4 65 3)))
(print(nth2 1 '(12 4 65 3)))
(print(nth2 2 '(12 4 65 3)))
(print(nth2 3 '(12 4 65 3)))
(print(nth2 4 '(12 4 65 3)))

;Exercise #10
(defun nthcdr2 (n lst)
 (if(null lst)
     nil
  (if (= n 0)
    lst
    (nthcdr2 (- n 1) (cdr lst)))))

;Test Cases
(print(nthcdr2 0 '()))
(print(nthcdr2 0 '(12 4 65 3)))
(print(nthcdr2 1 '(12 4 65 3)))
(print(nthcdr2 2 '(12 4 65 3)))
(print(nthcdr2 3 '(12 4 65 3)))
(print(nthcdr2 4 '(12 4 65 3)))

;Exercise #11

(defun nthcar2 (n lst)
 (setq head (list(car lst)))
 (if(or(zerop n)(null lst))
     nil
  (if (= n 1)
     head
    (append head (nthcar2 (- n 1) (cdr lst))))))

;Test Cases
(print(nthcar2 0 '()))
(print(nthcar2 0 '(12 4 65 3)))
(print(nthcar2 1 '(12 4 65 3)))
(print(nthcar2 2 '(12 4 65 3)))
(print(nthcar2 3 '(12 4 65 3)))
(print(nthcar2 4 '(12 4 65 3)))

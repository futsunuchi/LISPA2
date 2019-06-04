; STUDENT							ID	
; Juan Sebastian Hoyos			40087920
; Noah Freger
; Abdalla Osman
; Kevin Rao 

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
         (if (and (>= 0) (< N 8))
            (list N)
            (append (base8 (floor N 8)) (list (mod N 8)) ))))
(loop for x in '(-1 0 7 8 15 20 204)
      do (print (base8 x))) ;Test Cases

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
		  
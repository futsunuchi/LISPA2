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
		
;Exercise #3
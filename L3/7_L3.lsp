;7. Write a function that substitutes an element E with all elements of a list L1 at all levels of a given list L.
;
;substitute(l1..ln,e,r1..rm):- l number and l=e, m
;			-l number, l
;			- otherwise, i=1,nUsubsitute(l1..ln,e,r1..rm)
            
(defun my_substitute (l e r) ; e = element and r=the list to replace e
    (cond
        ((and (numberp l)(= l e)) r)
        ((numberp l) l)
        ((listp l) (mapcar #'(lambda (a) (my_substitute a e r)) l))
    )
)

;(my_substitute '(1 2 (1 2 (3 1) 2)) 1 '(1 2 3))
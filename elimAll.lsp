(defun elimAll ( l e)
(cond
((null l) nil)
((listp (car l)) (cons (elimAll (car l) e) (elimAll(cdr l) e)) )
((equal (car l) e) (elimAll(cdr l) e))
(t (cons (car l) (elimAll (cdr l) e)))
)
)
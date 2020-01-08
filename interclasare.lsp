(defun interclasare (l1 l2)
(cond
((null l2) l1)
((null l1) l2)
((< (car l1)(car l2)) (cons (car l1)(interclasare (cdr l1) l2)))
((> (car l1) (car l2)) (cons (car l2)(interclasare l1 (cdr l2))))
(t (cons (car l1) (interclasare (cdr l1) (cdr l2))))
)
)
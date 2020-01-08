(defun addN(l e pc n)
(cond
((null l) nil)
((equal 0 (mod pc n))(cons e (addN l e (+ 1 pc)n)))
(t (cons (car l)(addN (cdr l) e (+ 1 pc)n)))
)
)

(defun addMain( l e n)
(addN l e 1 n)
)
;a) Write a function to return the difference of two sets
(defun my_member (l e)
(cond
    ((null l) nil)
    ((= (car l) e) t)
    (t (my_member (cdr l) e))
))


(defun differenceSet (l s)
(cond
    ((null l) nil)
    ((not (my_member s (car l))) (cons (car l) (differenceSet (cdr l) s)))
    (t (differenceSet (cdr l) s))
))

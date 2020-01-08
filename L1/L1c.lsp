;c) Write a function to return the list of the first elements of all list elements of a given list with an odd
;number of elements at superficial level. Example:
; (1 2 (3 (4 5) (6 7)) 8 (9 10 11)) => (1 3 9).

(defun my_length (l)
(cond
    ((null l) 0)
    (t (+ 1 (my_length (cdr l))))
))

(defun odd_list_length (l)
    (= (mod (my_length l) 2) 1)
)

(defun firstEls (l)
(cond
    ((null l) nil)
    ((AND (listp (car l)) (odd_list_length (car l))) (append (firstEls (car l)) (firstEls (cdr l))))
    (t (firstEls (cdr l)))
))

(defun wrapper (l)
(cond
    ((null l) nil)
    ((odd_list_length l) (append (list (car l)) (wrapper (cdr l))))
    (t (firstEls l))
))

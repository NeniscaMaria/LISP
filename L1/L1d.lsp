;d) Write a function to return the sum of all numerical atoms in a list at superficial level.

(defun sumAtoms (l)
    (cond
        ((null l) 0)
        ((numberp (car l)) (+ (car l) (sumAtoms (cdr l))))
        ((atom (car l)) (sumAtoms (cdr l)))
        ((listp (car l)) (sumAtoms (cdr l)))
    )
)
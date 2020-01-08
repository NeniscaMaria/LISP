;b) Write a function to reverse a list with its all sublists, on all levels.
(defun my_reverse (lst)
(cond 
((null lst) nil)
((listp (car lst)) (append (my_reverse (cdr lst)) (list (my_reverse (car lst)))))
(t (append (my_reverse (cdr lst)) (list (car lst))))
)
)
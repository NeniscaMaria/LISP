;7. Return the level of a node X in a tree of type (1). The level of the root element is 0.


;getLevel(l1..ln,level,element):- l=0, 0//the element does not exist in this tree
;		-atom(l1) and l1=element ,level 
;		-otherwise, getLevel(left(l1..ln),level+1,element) + getLevel(right(l1..ln,level+1,element)
;
;		-atom(l1) and l2!=0, getLevel(findSubtrees(l2..ln,l2),level+1,element)
;		-atom(l1) and l2=0, getLevel(l3..ln,level,element)
;
;getLeftSubtree(l1..ln,nodes,edges):-l=0, []
;				-nodes=edges + l2 , l1 U l2
;				-otherwise, l1 U l2 U getLeftSubtree(l3..ln, nodes +1, edges+l2)
;left(l1..ln):- getLeftSubtree(l3..ln, 0, 0)
;
;getRightSubtree(l1..ln, nodes, edges):-l=0, []
;				-nodes=edges+l2, l3..ln
;				-otherwise, getRightSubtree(l3..ln, nodes+1, edges+l2)
;right(l1..ln) :- getRightSubtree (l3..ln,0,0)

;(getLevel '(A 2 B 0 C 2 D 0 E 0) 0 'C)

(defun getLeftSubtree (tree nodes edges)
    (cond
        ((null tree) nil)
        ((= nodes (+ edges (cadr tree))) (list (car tree) (cadr tree)))
        (t (append (list (car tree) (cadr tree)) (getLeftSubtree (cddr tree) (+ 1 nodes) (+ (cadr tree) edges))))
    )
)

(defun left (tree)
    (getLeftSubtree (cddr tree) 0 0)
)

(defun getRightSubtree (tree nodes edges)
    (cond
        ((null tree) nil)
        ((= nodes (+ edges (cadr tree))) (cddr tree))
    )
)

(defun right (tree)
    (getRightSubtree (cddr tree) 0 0)
)

(defun getLevel (tree level element)
(cond
((null tree) -1)
( (and (atom (car tree)) (equal element (car tree))) level )
(t (+ 1 (getLevel (left tree) (+ level 1) element) (getLevel (right tree) (+ level 1) element)))
)
)


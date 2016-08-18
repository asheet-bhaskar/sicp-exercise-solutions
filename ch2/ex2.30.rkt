#lang scheme

(define (square-tree tree)
  (cond
    ((null? tree) null)
    ((not (pair? tree)) (* tree tree))
    (else
       (cons (square-tree (car tree)) (square-tree (cdr tree)))
     )
    ))

(define (square-tree1 tree)
  (map (lambda (subtree)
    (if(pair? subtree)
       (square-tree1 subtree)
       (* subtree subtree))
    ) tree))

(square-tree1
(list 1
(list 2 (list 3 4) 5)
(list 6 7)))
;(1 (4 (9 16) 25) (36 49))
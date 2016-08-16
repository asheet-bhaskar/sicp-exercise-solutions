#lang scheme

(define x (list 1 2 3))
(define y (list 4 5 6))

(append x y)   ; appends list y into list x
(cons x y)     ; creates pair of lists x and y
(list x y)     ; creates a list of two items, these items are lists themselves.

#|
 (1 2 3 4 5 6)
((1 2 3) 4 5 6)
((1 2 3) (4 5 6))
 
|#
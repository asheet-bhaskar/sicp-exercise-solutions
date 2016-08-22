#lang scheme
(require racket/trace)


(define (subsets s)

(if (null? s)
(list null)
(let ((rest (subsets (cdr s))))
(append rest (map (lambda(set)(cons (car s) set )) rest))
  
  )
)
  ) 

#|
(define (map proc items)
(if (null? items)
nil
(cons (proc (car items))
(map proc (cdr items)))))
|#


(define set (list 1 2 3))
;(trace subsets)
(subsets set)


#| description

s = (1,2,3)
s = (2,3)
s = (3)
s =()
rest = (); s = (3)
rest = ((), 3); s = (2,3)
   ((), 3, (2),(2,3))
rest = ((), 3, (2),(2,3));  s = (1 2 3)
   ((), 3, (2),(2,3),(1), (1,3) (1,2) (1,2,3))




|#
#lang scheme

(define (square a)(* a a))

(define (square-list items)
  
(define (iter things answer)
  ;(display answer)
(if (null? things)
answer
(iter (cdr things) (cons  (square (car things)) answer) )))
  
(iter items null))

;; corrected (recursive)

(define (square-list1 items)
  (if(null? items)
     null
     (cons (* (car items) (car items)) (square-list1 (cdr items)) ))
  )

;; corrected (iterative)
(define (square-list2 items)
  
(define (iter things answer)
  ;(display answer)
(if (null? things)
answer
(iter (cdr things) (append answer (list (square (car things))) ) )))
  
(iter items (list )))

(square-list (list 1 2 3 4 5))
(square-list1 (list 1 2 3 4 5))
(square-list2 (list 1 2 3 4 5))


#|
  I have written corrected versions (iterative and recursive) of the code in problem. when we use iterative we should append the result of computation list and answer. whereas on using
  cons method we are creating nested pairs
  when we use recursive we can use cons but the order of actual arguments matters, if we change the order we will  get nested pairs
|#


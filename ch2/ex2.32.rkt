#lang scheme
(require racket/trace)


(define (subsets s)
 (display "S:  ")(display s)(newline)
(if (null? s)
(list null)
(let ((rest (subsets (cdr s))))
(display "rest:  ")(display rest)(newline)(display "s:  ")(display s)(newline)(display "result:  ")(display (append rest (map (lambda(set)(cons (car s) set )) rest)))(newline)
(append rest (map (lambda(set)(cons (car s) set )) rest))
  
  )
)
  ) 

(define set (list 1 2 3))
;(trace subsets)
(subsets set)

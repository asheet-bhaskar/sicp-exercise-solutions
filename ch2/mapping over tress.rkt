#lang scheme
(require racket/trace)

(define (scale-tree tree factor)
(map (lambda (sub-tree)
 (display sub-tree)(newline)
(if (pair? sub-tree)
(scale-tree sub-tree factor)
(* sub-tree factor)))
     
tree
)
  )

(define e (list 1 2 (list 30 40) 5))

(trace scale-tree)
(scale-tree e 10)


;(10 (20 (30 40) 50) (60 70))
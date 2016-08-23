  #lang scheme

(define (fold-right op initial seq)
  (if(null? seq)
     initial
     (op (car seq) (fold-right op initial (cdr seq))))
  )

(define (fold-left op initial sequence)
  (define (iter result rest)
    (if (null? rest)
        result
        (iter (op result (car rest))
              (cdr rest))))
(iter initial sequence))





(fold-right / 1 (list 1 2 3))
(fold-left / 1 (list 1 2 3))
(fold-right list null (list 1 2 3))
(fold-left list null (list 1 2 3))

#|

suppose sequence is (1 2 3)
fold-right
(1 op (2 op 3))         -----(1)
(fold-left
((1 op 2) op 3)         ------(2)

only case when (1) and (2) will be same, when 'op ' is associative as well as commutative


|#
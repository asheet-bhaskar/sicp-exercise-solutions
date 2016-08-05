#lang scheme


; linear recursive process
(define (fact1 n)
        (if (= n 1)
             1
             (* n (fact1 (- n 1)))
            )
  )


(fact1 10)

; linear iterative process

(define (fact2 p c n)
        (if (> c n)
              p
              (fact2 (* p c) (+ c 1) n)
            )
  )


(fact2 1 1  4)
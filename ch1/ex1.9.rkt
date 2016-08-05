#lang scheme

(define (inc x)(+ x 1))

(define (dec x)(- x 1))

(define (add a b)
        (if(= a 0)
           b
          (inc (add (dec a) b))
        )
  )

(add 4 5)

; substitution model
; (add 4 5)
; (if (= 4 0) 5 (inc (add (dec 4) 5)))
; (if (= 4 0) 5 (inc (add (- 4 1) 5)))
; (if (= 4 0) 5 (inc ( (if (= 3 0)  (inc (add (- 3 1) 5))) )))
; (if (= 4 0) 5 (inc ( (if (= 3 0) 5 (inc ( (if (= 2 0)  (inc (add (- 2 1) 5))) ))) )))
; (if (= 4 0) 5 (inc ( (if (= 3 0) 5 (inc ( (if (= 2 0) 5 (inc ( (if (= 1 0)  (inc (add (- 1 1) 5))) ))) ))) )))
; (if (= 4 0) 5 (inc ( (if (= 3 0) 5 (inc ( (if (= 2 0) 5 (inc ( (if (= 1 0) 5 (inc ( (if (= 0 0) 5 )) ))) ))) ))) )))
;(if (= 4 0) 5 (inc ( (if (= 3 0) 5 (inc ( (if (= 2 0) 5 (inc ( (if (= 1 0) 5 (inc ( 5) ))) ))) ))) )))
;(if (= 4 0) 5 (inc ( (if (= 3 0) 5 (inc ( (if (= 2 0) 5 (inc ( (if (= 1 0) 5 6)) ))) ))) )))
;(if (= 4 0) 5 (inc ( (if (= 3 0) 5 (inc ( (if (= 2 0) 5 (inc ( 6) ))) ))) )))
;(if (= 4 0) 5 (inc ( (if (= 3 0) 5 (inc ( (if (= 2 0) 5 7)) ))) )))
;(if (= 4 0) 5 (inc ( (if (= 3 0) 5 (inc ( 7) ))) )))
;(if (= 4 0) 5 (inc ( (if (= 3 0) 5 8)) )))
;(if (= 4 0) 5 (inc ( 8) )))
;(if (= 4 0) 5 9)
; 9

; This procedure is following recursive pattern (first expansion of data to be tracked then contraction on reaching end condition)


(define (add1 a b)
        (if(= a 0)
           b
          (add1 (dec a) (inc b))
        )
  )


; using substitution model
; (add1 4 5)
; ((add1 3 6))
; (((add1 2 7)))
; ((((add1 1 8))))
; (((((add1 0 9)))))
; 9

; this procedure is iterative
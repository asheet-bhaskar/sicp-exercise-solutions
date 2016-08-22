#lang scheme


(define (accumulate op initial seq)
  (if(null? seq)
     initial
     (op (car seq) (accumulate op initial (cdr seq)))))

(define (accumulate-n op init li)
  (if (null? (car li))
      null
      (cons (accumulate op init (map car li))
            (accumulate-n op init (map  cdr li))
            )
      )
  )


(define li (list (list 1 2 3) (list 4 5 6) (list 7 8 9) (list 10 11 12)))

(accumulate-n + 0 li)
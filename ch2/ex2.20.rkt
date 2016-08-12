#lang scheme


(define (even? n)(= (remainder n 2) 0 ))


(define (same-parity a . z)
  
  (define (iter items answer)
    (if(null? items)
       answer
       (iter (cdr items) (if(= (remainder (car items) 2) (remainder a 2))
                             (append answer (list (car items)) )
                             answer
                            ) )
    ))
  (iter z (list a))
  )
  
     
 

(same-parity 2 3 4 5 6 7 8 9)

(define ev (= (remainder 10 2) 0))
#lang scheme

(define (scale-list items factor)
  (if(null? items)
     null
     (cons (* factor (car items)) (scale-list (cdr items) factor))))


(define (scale-list-iter items factor)
    (define (iter items  answer)
      (if(null? items)
         answer
         (iter (cdr items) (append answer (list (* factor (car items)))) )))
    (iter items (list ))
  )



(scale-list (list 1 2 3 4 5 6 7 8 9 10) 2) 
(scale-list-iter (list 1 2 3 4 5 6 7 8 9 10) 3) 


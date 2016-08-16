#lang scheme

#|
(for-each (lambda (x) (newline) (display x))
(list 57 321 88))
57
321
88
|#
(define (for-each  items)
  (if(null? items)
     true
     (begin
        (begin
           (display (car items))
           (newline)
          )
        (for-each (cdr items))
       )
      ) 
  )


(for-each  (list 1 2 3 4 5 5 ))


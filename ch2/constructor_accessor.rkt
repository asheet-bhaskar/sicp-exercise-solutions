#lang scheme
(define li (list 1 (list 2 3 ) ))

(define cli (cons 1 (cons 2 3)))


(car li)
(cdr li)
(car (cdr li))
(car (car (cdr li)))
(cdr (car (cdr li)))
(car (cdr (car (cdr li))))

(display "---------------------------------")(newline)

(car cli)
(cdr cli)
(car (cdr cli))
(cdr (cdr cli))

#|
 On changing constructor of sequence change in accessors is also required.
|#
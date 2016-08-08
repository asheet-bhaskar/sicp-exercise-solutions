#lang scheme

(define (square x) (* x x))

(define (divides? n k) (if(= (remainder n k) 0) true false))

(define (smallest-divisor n test)
     (cond
         ((> (square test) n) n)
         ((divides? n test) test)
         (else (smallest-divisor n (next test)))
       )
  )

(define (next n)
  (if(= n 2) 3 (+ n 2))
  )

;;


(define (expmod base exp m)
(cond ((= exp 0) 1)
((even? exp)
(remainder (square (expmod base (/ exp 2) m))
m))
(else
(remainder (* base (expmod base (- exp 1) m))
m))))


(define (fermat-test n)
  
(define (try-it a)
(= (expmod a n n) a))
  
(try-it (+ 1 (random (- n 1)))))

(define (fast-prime? n times)
(cond ((= times 0) true)
((fermat-test n) (fast-prime? n (- times 1)))
(else false)))




;;

(define (timed-prime-test n)
(newline)
(display n)
(start-prime-test n (current-inexact-milliseconds)))

(define (start-prime-test n start-time)
(if (fast-prime? n 50)
(report-prime (- (current-inexact-milliseconds) start-time))
 false
)) 

(define (report-prime elapsed-time)
(display " *** ")
(display elapsed-time))


;(if(timed-prime-test 4) true false)


(define (odd? n)(if(= (remainder n 2) 0)
                   false
                   true
                   ))

;(define nums (list 1009 1013 1019 10007 10009 10039 100003 100019 100043 1000003 1000033 1000037 ) )

(timed-prime-test 1009)
(timed-prime-test 1013)
(timed-prime-test 1019)
(timed-prime-test 10007)
(timed-prime-test 10009)
(timed-prime-test 10039)
(timed-prime-test 100003)
(timed-prime-test 100019)
(timed-prime-test 100043)
(timed-prime-test 1000003)
(timed-prime-test 1000033)
(timed-prime-test 1000037)
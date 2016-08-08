#lang scheme

;  Transformation T
;  a = a+b
;  b = a
;  Transformation Tpq
;  a = bq + aq + ap
;  b = bp + aq            ----------(1)
;  for p = 0 and q =1
;  a =  b + a
;  b = a
;  Tpq is Special case of transformation T
;
;  Now applying this transformation twice we get,
;  a1 = bq + aq + ap
;  b1 = bp + aq
;
;  a2 = b1q + a1q + a1p
;  b2 = b1p + a1q
;  solving these
;  b2 = (bp + aq)p + (bq + aq + ap)q
;  b2   = bp^2 + aqp + bq^2 + aq^2 + aqp
;  b2   = b(p^2 + q^2) + a(2qp+q^2)  ---------- (2)
;
;  comparing equation (2) with equation (1)
;  lets write (1)  as b = bp1 + aq1
;  so,
;  p1 = (p^2 + q^2)         -----------(3)
;  q1 = (2pq + q^2)         -----------(4)
;  equations (3) and (4) are calculated in terms of p and q
;  substitute these in code







(define (fib n)
    (fib-iter 1 0 0 1 n)
  )

(define (even? num)
      (if (= (remainder num 2) 0)
          true
          false
          )
  )

(define (fib-iter a b p q count)
      (cond ((= count 0) b)
            ((even? count) (fib-iter a  b (+ (* p p) (* q q)) (+ (* 2 p q) (* q q)) (/ count 2)))
            (else (fib-iter (+ (* b q) (* a q) (* a p)) (+ (* b p) (* a q)) p q (- count 1)))
      )

  )

(fib 0)
(fib 1)
(fib 2)
(fib 3)
(fib 4)
(fib 5)
(fib 6)
(fib 7)
(fib 8)
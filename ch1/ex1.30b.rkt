#lang scheme

(define (product-rec a b)
   (if(> a b)
       1
       (* a (product-rec (+ a 1) b))
      )
  )

(define (iter a b res)
     (if(> a b)
        res
        (iter (+ a 1) b (* res a)))
  )
(define (product-iter a b)
   (iter a b 1)
  )

(product-rec 1 6)
(product-iter 1 6)
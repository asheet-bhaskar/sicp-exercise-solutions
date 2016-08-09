#lang scheme

(define (average a b)(/ (+ a b) 2))

(define tolerance 0.01)
(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (display next)
      (newline)
      (if (close-enough? guess next)
          next
          (try next))))
 
(try first-guess))


(fixed-point (lambda (x) (/ (log 1000) (log x))) 2.0)
;; without average damping
; 9.965784284662087
; 3.004472209841214
; 6.279195757507157
; 3.759850702401539
; 5.215843784925895
; 4.182207192401397
; 4.8277650983445906
; 4.387593384662677
; 4.671250085763899
; 4.481403616895052
; 4.6053657460929
; 4.5230849678718865
; 4.577114682047341
; 4.541382480151454
; 4.564903245230833
; 4.549372679303342
; 4.559606491913287
; 4.552853875788271
; 4.552853875788271
;
; number of steps = 19



;(fixed-point (lambda (x) (average x (/ (log 1000) (log x)))) 2.0)

;; with average damping
; 5.9828921423310435
; 4.922168721308343
; 4.628224318195455
; 4.568346513136242
; 4.5577305909237005
; 4.555909809045131
; 4.555909809045131
;
;  number of steps = 7

;; on using average damping number of steps reduced by 12
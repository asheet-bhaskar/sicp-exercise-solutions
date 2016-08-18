#lang scheme

(define (make-bm left right)(list left right))   ; to make binary mobile

(define (make-branch length structure)(list length structure)) ; to make branch of binary mobile with input args as length and structure

(define (left-branch bm)(car bm))  ; return left-branch of binary mobile

(define (right-branch bm)(car (cdr bm))) ; return right-branch of binary mobile



(define (branch-structure branch)(car (cdr branch)))  ; return branch structure of branch

(define (total-weight bm)(+ (weight (left-branch bm)) (weight (right-branch bm))))  ; return total weight of binary mobile

(define (weight branch)                           ; return weight of a branch
   (if(not (pair? (branch-structure branch)))
      (branch-structure branch)
      (total-weight (branch-structure branch))
      )
  )

(define (total-length bm)(+ (length (left-branch bm)) (length (right-branch bm)) ))  ; return total length of binary mobile

(define (length branch)                             ; return length of binary mobile
  (if(not (pair? (branch-structure branch)))
     (car branch)
     (+ (car branch) (total-length (branch-structure branch)))
     ))

(define (torque? branch)(* (length branch) (weight branch)))   ; return torque (length * weight) of branch

(define (balanced-branch? branch)
  (if(not(pair? (branch-structure branch)))
     true
     (balanced? (branch-structure branch))
   ))

(define (balanced? bm)                                         ; predicate to check whether torques of left and right branch is same
  (if(and (= (torque? (left-branch bm)) (torque? (right-branch bm)) ) (balanced-branch? (left-branch bm)) (balanced-branch? (right-branch bm)))
     true
     false
     )
  )



;; test
(define left (make-branch 10 (make-bm (make-branch 20 400) (make-branch 20 400))))
(define right (make-branch 10 (make-bm (make-branch 20 400) (make-branch 20 400))))
;(define right (make-branch 2 200))
(define bm (make-bm left right))

(define lb (left-branch bm))
(define rb (right-branch bm))






(length rb)
(length lb)
(newline)

(weight rb)
(weight lb)
(newline)

(torque? lb)
(torque? rb)
(newline)

(balanced? bm)


(newline)(newline)(newline)(newline)
lb
rb



(branch-structure rb)
(branch-structure lb)

(total-weight bm)





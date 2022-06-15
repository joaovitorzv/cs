#lang simply-scheme

(define (area shape r) (* shape r r))

(define (sumsquare a b)
  (if (> a b)
    0
    (+ (* a a) (sumsquare (+ a 1) b)) ))

(define (sumcube a b)
  (if (> a b)
    0
    (+ (* a a a) (sumsquare (+ a 1) b)) ))

    
(define square 1)
(define circle 3.1415)

;(area square 2)
;(area circle 3)

;(sumsquare 3 5)
;(sumcube 3 5)

(define (sumsquared a)
  (* a a))

(define (sum fn a b)
  (if (> a b)
    0
    (+ (fn a) (sum fn (+ a 1) b)) ))

;(sum sumsquared 3 5)

;(member? 'e 'get)
;((lambda (x) x * x) 6)


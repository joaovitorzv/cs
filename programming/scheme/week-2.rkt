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


(define (sum term a next b)
  (if (> a b)
    0
    (+ (term a) (sum term (next a) next b)) ))

(define (square-term a)
  (* a a))

(define (indentity x) x)

(define (inc n) (+ n 1))

(define (sum-squared a b)
  (sum indentity a inc b))

;(sum-squared 1 5)
;(sum sumsquared 3 5)

;(member? 'e 'get)
;((lambda (x) x * x) 6)

(define (pi-sum a b)
  (define (pi-term x)
    (/ 1.0 (* x (+ x 2))))
  (define (pi-next x)
    (+ x 4))
  (sum pi-term a pi-next b))

; (* 8 (pi-sum 1 1000))

(define (evens nums)
  (cond ((empty? nums) '())
    ((= (remainder (first nums) 2) 0)
    (se (first nums) (evens (bf nums))) )
  (else (evens (bf nums))) ))

 ; (evens 12345812)

(define (roots a b c)
  (let ((d (sqrt (- (* b b) (* 4 a c))))
       (-b (- b))
       (2a (* a 2)))
    (se (/ (+ -b d) 2a)
        (/ (- -b d) 2a) )))

  (roots 1 -3 1)

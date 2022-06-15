#lang simply-scheme

(define (make-adder num)
  (lambda (x) (+ x num)))

(define plus3 (make-adder 3))
(define plus5 (make-adder 5))
;(plus3 5)
;(plus5 7)
;(plus5 (plus3 2))

(define (argue s)
  (if (empty? s)
      '()
      (se (opposite (first s))
          (argue (bf s)))))

(define (opposite w)
  (cond ((equal? w 'like) 'hate)
        ((equal? w 'hate) 'like)
        ((equal? w 'wonderful) 'terrible)
        ((equal? w 'terrible) 'wonderful)
        ((equal? w 'great) 'awful)
        ((equal? w 'awful) 'great)
        ((equal? w 'terrific) 'yucky)
        ((equal? w 'yucky) 'terrific)
        (else w) ))

(define (cube x pow) (* x x x))
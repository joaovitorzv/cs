#lang simply-scheme

;;; (define (plural wd)
;;;   (if (equal? (last wd) 'y))
;;;     (word (bl wd) 'ies)
;;;     (word wd 's)))

(define (plural wd)
  (if (equal? (last wd) "y")
    (word (bl wd) "ies")
    (word wd "s")))

;(display (plural "body"))
;(display "\n")

;;; Pig latin
;(display (pl-done? "scheme"))


;;; Homework
; 1 - exercise 1.6 page 25
;; ---

; 2. Write a procedure squares that takes a sentence of numbers as its argument and
; returns a sentence of the squares of the numbers.
; solution:
(define (square x) (* x x))

(define (squares numbers)
  (if (empty? numbers)
      '()
      (se (square (first numbers)) (squares (bf numbers)))))
;(squares '(2 3 4 5))

; 3. Write a procedure switch that takes a sentence as its argument and returns a sentence
; in which every instance of the words I or me is replaced by you, while every instance of
; you is replaced by me except at the beginning of the sentence, where it’s replaced by I.
; solution:
(define (first-switch wd)
  (cond 
    [(equal? wd "You") 'I]
    [(equal? wd "I") 'you]
    [(equal? wd "Me") 'you]
    (else wd) ))

(define (one-wd wd)
  (cond 
    [(equal? wd "you") 'me]
    [(equal? wd "I") 'you]
    [(equal? wd "me") 'you]
    (else wd) ))

(define (rest-switch wd)
  (if (empty? wd)
    '()
     (se (one-wd (first wd)) (rest-switch (bf wd)))))

(define (switch sen)
  (se (first-switch (first sen)) (rest-switch (bf sen))))

;(switch '(You told me that I should wake you up))

; 4. Write a predicate ordered? that takes a sentence of numbers as its argument and
; returns a true value if the numbers are in ascending order, or a false value otherwise.
; solution:
(define (ordered? list)
  (cond 
    [(empty? (bf list)) #t]
    [(> (first list) (first (bf list))) #f]
    (else (ordered? (bf list))) ))

; (ordered? '(4 1))

; 5. Write a procedure ends-e that takes a sentence as its argument and returns a sentence
; containing only those words of the argument whose last letter is E:
; solution:
(define (has-e wd)
  (if (equal? (last wd) 'e)
    wd
    '() ))

(define (ends-e sen)
  (if (empty? sen)
    '()
    (se (has-e (first sen)) (ends-e (bf sen))) ))

;(ends-e '(please put the salami above the blue elephant))

; 6. Most versions of Lisp provide and and or procedures like the ones on page 19. In
; principle there is no reason why these can’t be ordinary procedures, but some versions of
; Lisp make them special forms. Suppose, for example, we evaluate
; (or (= x 0) (= y 0) (= z 0))
;
; If or is an ordinary procedure, all three argument expressions will be evaluated before or
; is invoked. But if the variable x has the value 0, we know that the entire expression has
; to be true regardless of the values of y and z. A Lisp interpreter in which or is a special
; form can evaluate the arguments one by one until either a true one is found or it runs out
; of arguments.
;
; Your mission is to devise a test that will tell you whether Scheme’s and and or are special
; forms or ordinary functions. This is a somewhat tricky problem, but it’ll get you thinking
; about the evaluation process more deeply than you otherwise might.
;
; Why might it be advantageous for an interpreter to treat or as a special form and evaluate
; its arguments one at a time? Can you think of reasons why it might be advantageous to
; treat or as an ordinary function?
; resolution:
(or ((lambda () ( (write 'eval 1') (= 1 1)) )) (= 1 2) (= 4 5))
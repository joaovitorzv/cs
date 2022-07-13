#lang simply-scheme

;;; (define (plural wd)
;;;   (if (equal? (last wd) 'y))
;;;     (word (bl wd) 'ies)
;;;     (word wd 's)))

(define (plural wd)
  (if (equal? (last wd) "y")
    (word (bl wd) "ies")
    (word wd "s")))

(display (plural "body"))
(display "\n")

;;; Pig latin
;(display (pl-done? "scheme"))

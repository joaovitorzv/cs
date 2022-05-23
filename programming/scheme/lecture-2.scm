;;; (define (plural wd)
;;;   (if (equal? (last wd) 'y))
;;;     (word (bl wd) 'ies)
;;;     (word wd 's)))

(define (plural wd)
  (if (equal? (last (string->list wd)) "y")
    (string-append (butlast (string->list wd)) "ies")
    (string-append wd "s")))

(display (plural "book"))
(display "\n")
(display (equal? (last (string->list "spy")) #(y)))
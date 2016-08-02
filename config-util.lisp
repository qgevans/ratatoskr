(in-package :ratatoskr)

(defmacro default-targmaxes (pairs)
  `(define-constant +default-targmaxes+
     '(,@(mapcar (lambda (pair)
		 (cons (find-class (car pair)) (cdr pair)))
		 pairs))
     :test #'equalp))
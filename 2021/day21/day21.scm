(import (chicken io)
	(chicken format)
	srfi-1
	srfi-42
	srfi-69
	srfi-152)

(define (read-input #!optional (port (current-input-port)))
  (apply values (map (lambda (s) (string->number (string-drop s 28))) (read-lines port))))

(define (part1 start1 start2)
  (let lp ((k 0)
	   (pos1 (- start1 1))
	   (pos2 (- start2 1))
	   (score1 0)
	   (score2 0))
    (cond
     ((>= score1 1000) (* score2 k 3))
     ((>= score2 1000) (* score1 k 3))
     ((even? k) (let* ((dice (+ (* 9 k) 6))
		       (new-pos1 (remainder (+ pos1 dice) 10)))
		  (lp (+ k 1) new-pos1 pos2 (+ score1 new-pos1 1) score2)))
     ((odd? k) (let* ((dice (+ (* 9 k) 6))
		      (new-pos2 (remainder (+ pos2 dice) 10)))
		 (lp (+ k 1) pos1 new-pos2 score1 (+ score2 new-pos2 1)))))))

(define (part2 start1 start2)
  (define cache (make-hash-table))
  (define (play pos1 pos2 score1 score2)
    (if (>= score2 21)
	(list 0 1)
	(fold-ec (list 0 0)
		 (: d1 '(1 2 3)) (: d2 '(1 2 3)) (: d3 '(1 2 3))
		 (:let new-pos1 (remainder (+ pos1 d1 d2 d3) 10))
		 (:let key (list pos2 new-pos1 score2 (+ score1 new-pos1 1)))
		 (reverse (if (hash-table-exists? cache key)
			      (hash-table-ref cache key)
			      (let ((val (apply play key)))
				(hash-table-set! cache key val)
				val)))
		 (lambda (x acc) (list (+ (car x) (car acc)) (+ (cadr x) (cadr acc)))))))
  (apply max (play (- start1 1) (- start2 1) 0 0)))

(let-values (((start1 start2) (read-input)))
  (print (part1 start1 start2))
  (print (part2 start1 start2)))

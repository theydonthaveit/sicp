EXERCISE 1.1
10
(+ 5 3 4)
(- 9 1)
(/ 6 2)
(+ (* 2 4) (- 4 6))
(define a 3)
(define b (+ a 1))
(+ a b (* a b))
(= a b)
(if (and (> b a) (< b (* a b)))
    b
    a)

(cond ((= a 4) 6)
    ((= b 4) (+ 6 7 a))
    (else 25))

(+ 2 (if (> b a) b a))

(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
    (+ a 1))

EXERCISE 1.2
(define (fraction numerator denominator) (/ numerator denominator))
(fraction 
    (+ (+ 5 4)
    (- 2
    (- 3
    (+ 6 (/ 4.00 5.00)))))
    (* 3 (* (- 6 2) (- 2 7))))

EXERCISE 1.3
(define (sqaure x) (* x x))

(define (is-larger x y) (if (> x y) (+ x) y))

(define (sum-largest-squares x y z) (+ (square (is-larger x y)) (square (is-larger z y))))
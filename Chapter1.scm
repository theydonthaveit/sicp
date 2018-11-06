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
(define 
    (sqaure x) 
        (* x x))

(define 
    (is-larger x y) 
        (if (> x y) x y))

(define 
    (sum-largest-squares x y z) 
        (+ (square (is-larger x y)) 
            (square (is-larger z y))))

EXERCISE 1.4
(define (a-plus-abs-b a b)
    ((if (> b 0) + -) a b))

EXERCISE 1.5
(define (p) (p))
(define (test x y)
    (if (= x 0) 0 y))
; applicative - infinite looping as P never evaluates
; normal - returns 0 as the if statement eveluates to #t

EXERCISE 1.1.7
(define (sqrt-iter guess x)
    (if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x) x)))

(define (improve guess x)
    (average guess (/ x guess)))

(define (average x y)
    (/ (+ x y) 2))

(define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
    (sqrt-iter 1.0 x))

EXERCISE 1.6
(define (new-if predicate then-clause else-clause)
    (cond (predicate then-clause)
        (else else-clause)))


(define (sqrt-iter guess x)
    (new-if (good-enough? guess x)
            guess
            (sqrt-iter (improve guess x) x)))

(define (improve guess x)
    (average guess (/ x guess)))

(define (average x y)
    (/ (+ x y) 2))

(define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
    (sqrt-iter 1.0 x))
; infinite loop, max recursion depth exceeded
; cond will constantly call sqrt-iter
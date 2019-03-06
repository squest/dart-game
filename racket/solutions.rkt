#lang racket

(define (sol1 lim)
  (foldl + 0
         (remove-duplicates
           (append (range 3 lim 3)
                   (range 5 lim 5)))))

(define (sol2 lim)
  (define (sum-fibo a b res)
    (if (> a lim)
        res
        (if (even? a)
            (sum-fibo b (+ a b) (+ res a))
            (sum-fibo b (+ a b) res))))
  (sum-fibo 1 1 0))

(define (sol3 starting)
  (define (prime? p)
    (define (prime-rec i)
      (if (> (* i i) p)
          #t
          (if (zero? (remainder p i))
              #f
              (prime-rec (+ i 2)))))
    (prime-rec 3))
  (define (next-prime p)
    (if (prime? (+ p 2))
        (+ p 2)
        (next-prime (+ p 2))))
  (define (sol-rec res p q)
    (if (> p res)
        q
        (if (zero? (remainder res p))
            (sol-rec (quotient res p) p p)
            (sol-rec res (next-prime p) p))))
  (sol-rec starting 3 2))
            


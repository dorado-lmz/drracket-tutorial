#lang racket
;变量绑定
(define x 1)
;racket中，变量的值不可变，只能绑定和重新绑定
;(define x (+ x 1))
;define每次只能绑定一个变量,let可以绑定多个
(let ([a 3]
      [b (list-ref '(1 2 3 4) 3)])
  (sqr (+ a b)))
;let 和 define 最大的不同是 let 是局部绑定,绑定的范围仅仅在其作用域之内,上面的例子中,a 和 b 出了 let 的作用域便不复存在了。
;(+ a b)  ;这里会抛出undefined异常

;let-values
(let-values ([(x y) (values 1 10)]
             [(a b) (values 11 21)])
  (list x y a b))
; '(1 10 11 21)

;let*-values
(let*-values ([(pi r rr) (values 3.14159 10 (lambda (x) (* x x)))]
              [(perimeter area) (values (* 2 pi r) (* pi (rr r)))])
  (list area perimeter))
; '(314.159 62.8318)


;#lang racket
;(if test-expr true-expr flase-expr) -> value
;  test-expr : (判断条件)
;  true-expr : (当条件为真时执行的表达式)
;  false-expr : (当条件为假时执行的表达式)

(if (positive? -5) (printf "this is true-expr~n")
    (printf "this is false-expr~n"))
;this is false-expr

;(cond cond-clause ...)
;cond-clause    =	 [test-expr then-body ...+]
; 	 	|	 [else then-body ...+]
; 	 	|	 [test-expr => proc-expr]
; 	 	|	 [test-expr]
(define score 80)
(cond [(> score 90) "A"]
      [(> score 80) "B"]
      [(> score 70) "C"]
      [else "Not Pass"])
;if cond 可以使用and or 来替换

(or (and (> score 90) "A")
    (and (> score 70) "B")
    (and (> score 60) "Pass")
    "Not Pass")

;循环和递归
;函数式编程语言没有循环,只有递归,无论是什么形式的循环,其实都可以通过递归来完成
;循环
(for ([i '(1 2 3)])
  (display i))

;换行
(printf "\n")

;递归
(define (recursive list fun)
  (if (> (length list) 0)
      (let ([h (car list)]
            [t (cdr list)])
        (fun h)
        (recursive t fun))
      (void)))
(recursive '(1 2 3) display)

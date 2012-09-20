(defun element-at (lst n)
  (labels ((nxt (ele lst n)
                (if (= n 0)
                  ele
                  (if (null lst)
                    nil
                    (nxt (car lst) (cdr lst) (- n 1))))))
    (nxt nil lst n)))

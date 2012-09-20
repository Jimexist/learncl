(defun my-length (lst)
  (labels ((nxt (lst acc)
                (if (null lst)
                  acc
                  (nxt (cdr lst) (+ acc 1)))))
    (nxt lst 0)))

(defun my-reverse (lst)
  (labels ((nxt (lst rst)
                (if (null lst)
                  rst
                  (nxt (cdr lst) (cons (car lst) rst)))))
    (nxt lst nil)))

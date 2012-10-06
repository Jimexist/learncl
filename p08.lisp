(defun my-compress (lst)
  (labels ((nxt (lst rst)
                (if (null rst)
                  lst
                  (if (eq (car lst) (car rst))
                    (nxt lst (cdr rst))
                    (nxt (cons (car rst) lst) (cdr rst))))))
    (reverse (nxt nil lst))))

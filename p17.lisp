(defun my-split (lst cnt)
  (labels ((nxt (lst rst cnt)
                (if (null rst)
                  lst
                  (if (eq 0 cnt)
                    (list (reverse lst) rst)
                    (nxt (cons (car rst) lst) (cdr rst) (- cnt 1))))))
    (nxt nil lst cnt)))

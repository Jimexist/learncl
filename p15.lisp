(defun my-repli-ele (ele cnt)
  (if (eq cnt 0)
    nil
    (cons ele (my-repli-ele ele (- cnt 1)))))

(defun my-repli (lst cnt)
  (labels ((nxt (lst rst)
                (if (null rst)
                  lst
                  (nxt (append (my-repli-ele (car rst) cnt) lst) (cdr rst)))))
    (reverse (nxt nil lst))))

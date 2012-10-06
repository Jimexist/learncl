(defun my-dupli (lst)
  (labels ((nxt (lst rst)
                (if (null rst)
                  lst
                  (nxt (cons (car rst) (cons (car rst) lst)) (cdr rst)))))
    (reverse (nxt nil lst))))

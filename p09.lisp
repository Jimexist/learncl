(defun my-pack (lst)
  (labels ((nxt (lst rst)
                (if (null rst)
                  lst
                  (if (eq (car (car lst)) (car rst))
                    (nxt (cons (cons (car rst) (car lst)) (cdr lst)) (cdr rst))
                    (nxt (cons (list (car rst)) lst) (cdr rst))))))
    (reverse (nxt () lst))))

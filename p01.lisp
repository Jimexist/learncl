(defun my-last (lst)
  (labels ((nxt (ele lst)
               (if (null lst)
                 (list ele)
                 (nxt (car lst) (cdr lst)))))
    (nxt nil lst)))

(eq (car (my-last '(1 2 3 4)))
    (car (last '(1 2 3 4))))

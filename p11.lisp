(load "p09.lisp")

(defun my-encode-modified (lst)
  (mapcar #'(lambda (x)
              (if (eq (length x) 1)
                (car x)
                (list (length x) (car x))))
          (my-pack lst)))


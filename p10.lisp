(load "p09.lisp")

(defun my-encode (lst)
  (mapcar #'(lambda (x) (list (length x) (car x))) (my-pack lst)))

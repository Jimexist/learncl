(defun my-flatten (lst)
  (if (null lst)
    lst
    (append nil (my-flatten 
                  (car (append nil lst))))))

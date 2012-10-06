(defun my-drop (lst cnt)
  (labels ((nxt (lst rst idx)
                (if (null rst)
                  lst
                  (if (eq 0 (mod idx cnt))
                    (nxt lst (cdr rst) (+ idx 1))
                    (nxt (cons (car rst) lst) (cdr rst) (+ idx 1))))))
    (reverse (nxt nil lst 1))))

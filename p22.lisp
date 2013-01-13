(defun my-range (start end)
  (if (> start end)
    ()
    (cons start (my-range (+ start 1) end))))

;; C Mode

(add-hook 'c-mode-hook '(lambda() (setq indent-tabs-mode nil)))
(add-hook 'c-mode-hook (lambda () (add-to-list 'write-file-functions 'delete-trailing-whitespace)))

(provide 'mark-c)

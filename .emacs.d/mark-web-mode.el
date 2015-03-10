
(package-require 'web-mode)
(package-require 'autopair)

;;(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.js\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.json\\'" . web-mode))

(defun my-web-mode-hook ()
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
;;  (setq web-mode-enable-auto-pairing t)
;;  (setq web-mode-extra-auto-pairs
;;      '(("js"  . (("{" "}")))
;;        ("php"  . (("open" "close")
;;                   ("open" "close")))
;;        ))
)
(add-hook 'web-mode-hook  'my-web-mode-hook)

;; Enable tern-mode for js2-mode
(add-to-list 'load-path "~/system/tern/emacs/")
(autoload 'tern-mode "tern" nil t)
(add-hook 'web-mode-hook (lambda () (tern-mode t)))
(add-hook 'web-mode-hook (lambda () (autopair-mode t)))
(add-hook 'web-mode-hook '(lambda() (setq indent-tabs-mode nil)))
(add-hook 'web-mode-hook (lambda () (add-to-list 'write-file-functions 'delete-trailing-whitespace)))

(provide 'mark-web-mode)

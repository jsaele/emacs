
(package-require 'web-mode)

;;(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.js\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))

(defun my-web-mode-hook ()
  (setq web-mode-markup-indent-offset 4)
  (setq web-mode-css-indent-offset 4)
  (setq web-mode-code-indent-offset 4)
)
(add-hook 'web-mode-hook  'my-web-mode-hook)

(setq web-mode-extra-auto-pairs
      '(("js"  . (("{" "}")))
        ("php"  . (("open" "close")
                   ("open" "close")))
       ))

(setq web-mode-enable-auto-pairing t)

;; Enable tern-mode for js2-mode
(add-to-list 'load-path "~/system/tern/emacs/")
(autoload 'tern-mode "tern" nil t)
(add-hook 'web-mode-hook (lambda () (tern-mode t)))
(add-hook 'web-mode-hook '(lambda() (setq indent-tabs-mode nil)))
(add-hook 'web-mode-hook (lambda () (add-to-list 'write-file-functions 'delete-trailing-whitespace)))

(provide 'mark-web-mode)

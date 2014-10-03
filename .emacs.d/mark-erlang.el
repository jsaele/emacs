;; Erlang
(setq load-path (cons  "/Users/marknijhof/erlang_17_0/lib/tools-2.6.14/emacs/"
                       load-path))
(setq erlang-root-dir "/Users/marknijhof/erlang_17_0")
(setq exec-path (cons "/Users/marknijhof/erlang_17_0/bin" exec-path))

(setq auto-mode-alist (append auto-mode-alist
                              '(("\\.rel$" . erlang-mode)
                                ("\\.app$" . erlang-mode)
                                ("\\.appSrc$" . erlang-mode)
                                ("\\.app.src$" . erlang-mode)
                                ("\\.hrl$" . erlang-mode)
                                ("\\.erl$" . erlang-mode)
                                ("\\.yrl$" . erlang-mode))))


(package-require 'erlang)
(add-hook 'erlang-mode-hook
          (lambda ()
            (define-key erlang-mode-map (kbd "C-\\")
              'erlang-complete-tag)))

(add-hook 'erlang-shell-mode-hook
          (lambda ()
            (define-key erlang-shell-mode-map (kbd "C-\\")
              'erlang-complete-tag)))

(add-hook 'erlang-mode-hook '(lambda() (setq indent-tabs-mode nil)))
(add-hook 'erlang-mode-hook (lambda () (add-to-list 'write-file-functions 'delete-trailing-whitespace)))

(provide 'mark-erlang)

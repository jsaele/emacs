
(dolist (mode '(menu-bar-mode tool-bar-mode scroll-bar-mode))
  (when (fboundp mode) (funcall mode -1)))

(tool-bar-mode -1)

(show-paren-mode 1)

(setq confirm-nonexistent-file-or-buffer 1)
;;(setq ns-right-option-modifier 'super)

;; Always ask for y/n keypress instead of typing out 'yes' or 'no'
(defalias 'yes-or-no-p 'y-or-n-p)

;; Always ALWAYS use UTF-8
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(setq coding-system-for-read 'utf-8)
(setq coding-system-for-write 'utf-8)
(prefer-coding-system 'utf-8)
(load-library "iso-transl")

;; Add .emacs.d to load-path
(setq dotfiles-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))
(add-to-list 'load-path dotfiles-dir)

;; Write backup files to own directory
(setq backup-directory-alist
      `(("." . ,(expand-file-name (concat dotfiles-dir "bak")))))

;(add-to-list 'load-path "~/dev/emacs")
;(add-to-list 'load-path "~/dev/emacs/color-theme")
;(add-to-list 'load-path "~/dev/emacs/expand-region.el")


;(require 'multi-term)
;(require 'ace-jump-mode)
;(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)

;(require 'expand-region)
;(global-set-key (kbd "C-=") 'er/expand-region)


(defadvice zap-to-char (after my-zap-to-char-advice (arg char) activate)
  "Kill up to the ARG'th occurence of CHAR, and leave CHAR.
  The CHAR is replaced and the point is put before CHAR."
  (insert char)
  (forward-char -1))

;; Add .emacs.d to load-path
(setq dotfiles-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))
(add-to-list 'load-path dotfiles-dir)

;; Define subpackages by platform
(setq mark-pkg-full
      '(
        mark-package
        mark-dired
        mark-project
        mark-ido
        mark-theme-1
        mark-c
        mark-js
        mark-textmate
        mark-whitespace
        ))

;; Now load other things
(dolist (file mark-pkg-full)
  (require file))

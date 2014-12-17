
(dolist (mode '(menu-bar-mode tool-bar-mode scroll-bar-mode))
  (when (fboundp mode) (funcall mode -1)))

(tool-bar-mode -1)

(show-paren-mode 1)

(setq confirm-nonexistent-file-or-buffer 1)
;;(setq ns-right-option-modifier 'super)


;;
;; Osx Settings
;;
(setq mac-option-modifier nil
      mac-command-modifier 'meta
      x-select-enable-clipboard t)


;;
;; Open emacs in windowed mode
;;
;;(setq ns-pop-up-frames nil)


;; Always ask for y/n keypress instead of typing out 'yes' or 'no'
(defalias 'yes-or-no-p 'y-or-n-p)

;; Always ALWAYS use UTF-8
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(setq coding-system-for-read 'utf-8)
(setq coding-system-for-write 'utf-8)
(prefer-coding-system 'utf-8)
(load-library "iso-transl")
;; UTF-8 end

;; Add .emacs.d to load-path
(setq dotfiles-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))
(add-to-list 'load-path dotfiles-dir)

;; Write backup files to own directory
(setq backup-directory-alist
      `(("." . ,(expand-file-name (concat dotfiles-dir "bak")))))

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
        mark-ido
        mark-whitespace
        mark-theme-1
        mark-web-mode
        ))

;; Now load other things
(dolist (file mark-pkg-full)
  (require file))

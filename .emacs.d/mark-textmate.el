;;; mark-textmate
(defvar *textmate-gf-exclude*
  "(/|^)(\\.+[^/]+|vendor|fixtures|tmp|log|classes|build)($|/)|(\\.xcodeproj|\\.nib|\\.framework|\\.pbproj|\\.pbxproj|\\.xcode|\\.xcodeproj|\\.bundle|\\.pyc|\\.beam|\\.d)(/|$)"
  "Regexp of files to exclude from `textmate-goto-file'.")

(add-to-list 'load-path "~/system/.emacs.d/textmate")
  (require 'textmate)

(textmate-mode)

(provide 'mark-textmate)

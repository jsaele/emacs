;;;----------------------------------------
;;;;;Highlight trailing whitespace;;;;;;;;;
;;;----------------------------------------
(setq-default show-trailing-whitespace t)
(setq-default indicate-empty-lines t)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(custom-set-faces
 '(trailing-whitespace
   ((((class color)
      (background light))
     (:background "grey90")))))

; Draw tabs with the same color as trailing whitespace
(add-hook 'font-lock-mode-hook
  '(lambda ()
     (font-lock-add-keywords
       nil
        '(("\t" 0 'trailing-whitespace prepend))
     )
   )
)

(provide 'mark-whitespace)

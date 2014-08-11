;; fix indent issue with anonymous classes
(c-set-offset 'inexpr-class 0)

;; "shallow" indent instead of "deep" indent
(defun my-indent-setup ()
  (c-set-offset 'arglist-intro '+))
(add-hook 'java-mode-hook 'my-indent-setup)

;; treat annotations like comments to prevent method indentation
(add-hook 'java-mode-hook
	  '(lambda ()
         "Treat Java 1.5 @-style annotations as comments."
         (setq c-comment-start-regexp
	       "\\(@\\|/\\(/\\|[*][*]?\\)\\)")
         (modify-syntax-entry ?@ "< b"
			      java-mode-syntax-table)))

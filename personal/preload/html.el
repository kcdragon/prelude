;; Default indentation is usually 2 spaces, changing to 4.
(add-hook 'html-mode-hook
	  (lambda ()
	    (set (make-local-variable 'sgml-basic-offset) 4)))

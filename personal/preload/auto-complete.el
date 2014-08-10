;; auto-complete
(add-to-list 'load-path "~/.emacs.d/plugins/auto-complete")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/plugins/auto-complete/ac-dict")
(ac-config-default)

;; yasnippets
;; need to install with ELPA
(add-to-list 'load-path "~/.emacs.d/elpa/yasnippet-20140729.1240")
(require 'yasnippet)
(setq yas-snippet-dirs '("~/.emacs.d/elpa/yasnippet-20140729.1240/snippets"))
(yas-global-mode 1)

;; auto-java-complete
(add-to-list 'load-path "~/.emacs.d/plugins/auto-java-complete")
(require 'ajc-java-complete-config)
(add-hook 'java-mode-hook 'ajc-java-complete-mode)
(add-hook 'find-file-hook 'ajc-4-jsp-find-file-hook)

(use-package company
  ;; Navigate in completion minibuffer with `C-n` and `C-p`.
  :bind (:map company-active-map
         ("C-n" . company-select-next)
         ("C-p" . company-select-previous))
  :config
   (setq company-idle-delay 0
	    company-show-numbers t
	    company-tooltip-idle-delay 0
	    company-minimum-prefix-length 2
	    company-dabbrev-ignore-case nil
	    company-dabbrev-downcase nil
	    company-ispell-dictionary (file-truename "~/.emacs.d/dict/english-words.txt")
	    ispell-alternate-dictionary (file-truename "~/.emacs.d/dict/english-words.txt")
	    company-transformers '(company-sort-by-backend-importance)
	    company-dabbrev-code-other-buffers 'code
	    company-dabbrev-ignore-case nil
	    company-dabbrev-downcase nil
	    company-dabbrev-code-time-limit 5
	    company-dabbrev-code-modes '(python-mode inferior-python-mode)
	    company-backends '(company-capf
			       company-dabbrev-code
			       company-keywords
			       company-files
			       company-ispell
			       company-yasnippet
			       company-abbrev
			       company-dabbrev))
  ;; Provide instant autocompletion.
   ;; Use company mode everywhere.
   :init
   (progn
     (add-hook 'after-init-hook 'global-company-mode)))

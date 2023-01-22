(setq org-todo-keywords '((sequence "TODO(t)" "STARTED(s)" "WAITING(w)" "|" "DONE(d)" "CANCELLED(c)")
			  (sequence "BUG(b)" "DEBUG(d)" "|" "FIXED(f)")
			  (sequence "QUESTION(q)" "|" "ANSWER(a)" "REQUIREMENT(r)")))
(setf org-todo-keyword-faces '(("TODO" . (:foreground "#d33682"  :bold t :weight bold))
			       ("BUG" . (:foreground "#ff0000"  :bold t :weight bold))
			       ("QUESTION" . (:foreground "#ff0000"  :bold t :weight bold))
			       ("REQUIREMENT" . (:foreground "#d33682"  :bold t :weight bold))
			       ("STARTED" . (:foreground "#b58900"  :bold t :weight bold))
			       ("WAITING" . (:foreground "#cb4b16"  :bold t :weight bold))
			       ("ANSWER" . (:foreground "#859900"  :bold t :weight bold))
			       ("DONE" . (:foreground "#859900"))))
(setq org-directory "~/Nextcloud/orgmode/")
(setq org-agenda-files '("~/Nextcloud/orgmode/inbox.org"
			 "~/Nextcloud/orgmode/gtd.org"
			 "~/Nextcloud/orgmode/contacts.org"
			 "~/Nextcloud/orgmode/mle.org"
					;                         "~/Nextcloud/orgmode/mle_gcal.org"
			 "~/Nextcloud/orgmode/ocst.org"))
(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/Nextcloud/orgmode/inbox.org" "Tasks")
	 "* TODO %?\n  %i\n  %a")
	("m" "Mail" entry (file "~/Nextcloud/orgmode/inbox.org")
	 "* TODO [#A] MAIL from %:fromname on %:subject\nSCHEDULED:%t\nDEADLINE: %(org-insert-time-stamp (org-read-date nil t \"+2d\"))\n:PROPERTIES:\n:CREATED: %U\n:END:\n %a" :immediate-finish t :prepend t)
	("j" "Journal" entry (file+datetree "~/Nextcloud/orgmode/journal.org")
	 "* %?\nEntered on %U\n  %i\n  %a")))
(setq org-columns-default-format "%45ITEM %TODO %PRIORITY %SCHEDULED %ALLTAGS %OWNER")
(setq org-use-tag-inheritance t)
(global-set-key (kbd "<f1>") (lambda() (interactive)(find-file "~/Nextcloud/orgmode/inbox.org")))
(global-set-key (kbd "<f2>") (lambda() (interactive)(find-file "~/Nextcloud/orgmode/gtd.org")))
(global-set-key (kbd "<f3>") (lambda() (interactive)(find-file "~/Nextcloud/orgmode/mle.org")))
(global-set-key (kbd "<f4>") (lambda() (interactive)(find-file "~/Nextcloud/orgmode/ocst.org")))

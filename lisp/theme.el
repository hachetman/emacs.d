(use-package solarized-theme)
(load-theme 'solarized-dark t)

(use-package all-the-icons)
(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1))

(use-package  dashboard
  :config
  (dashboard-setup-startup-hook)
  (setq dashboard-banner-logo-title "Welcome to Emacs Dashboard")
  (setq dashboard-center-content t)
  (setq dashboard-week-agenda t)
  (setq dashboard-items '((recents  . 5)
                        (bookmarks . 5)
                          (agenda . 10)))
  (setq dashboard-set-heading-icons t)
  (setq dashboard-set-file-icons t)
)
(if (eq system-type 'darwin)
    (set-frame-font "Source Code Pro 16" nil t))
(when (string= (system-name) "regis")
  (setq doom-font (font-spec :family "Source Code Pro" :size 16)))
(when (string= (system-name) "tuc")
  (setq doom-font (font-spec :family "Source Code Pro" :size 16)))
(when (string= (system-name) "torch")
  (setq doom-font (font-spec :family "Source Code Pro" :size 16)))

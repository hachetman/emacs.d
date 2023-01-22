(add-hook 'prog-common-hook
   (lambda ()
   (font-lock-add-keywords nil
   '(("\\<\\(FIX\\|FIXME\\|TODO\\|BUG\\|HACK\\):"
          1 font-lock-warning-face t)))))

    (use-package whitespace
      :config
      (setq
       whitespace-style '(face tabs tab-mark spaces space-mark trailing lines-tail newline newline-mark))
      (setq whitespace-display-mappings '((space-mark 32 [46])
                                     (newline-mark 10 [36 10])
                                     (tab-mark 9 [187 9] [92 9]))))

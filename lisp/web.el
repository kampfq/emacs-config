(use-package web-mode
  :ensure t)

(use-package php-mode
  :ensure t
  :mode ("\\.php\\'" "\\.inc\\'" "\\.module\\'"))

(use-package yaml-mode
  :ensure t
  :mode ("\\.ya?ml\\'" . yaml-mode))


(use-package json-mode
  :ensure t
  :mode (("\\.json\\'" . json-mode)
         ("\\.tmpl\\'" . json-mode)
         ("\\.eslintrc\\'" . json-mode))
  :config (setq-default js-indent-level 2))

(use-package json-reformat
  :ensure t
  :after json-mode
  :bind (("C-c r" . json-reformat-region)))

(use-package sass-mode
  :ensure t
  :mode "\\.sass\\'")

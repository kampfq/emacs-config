;; Projectile
;; emacs project management
(use-package projectile
  :ensure t
  :init
  (setq projectile-require-project-root nil)
  :config
  (projectile-mode 1)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
  )

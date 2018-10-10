(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook))
;; show dashboard in emacsclient
(setq initial-buffer-choice (lambda () (get-buffer "*dashboard*")))
;; show emacs icon
(setq dashboard-startup-banner 'logo)
;;show agenda week
(setq show-week-agenda-p t)
;; show dashboard items
(setq dashboard-items '((recents  . 5)
                        (projects . 5)
                        (agenda . 5)))


;; Package configs
(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives '(("melpa stable" . "https://stable.melpa.org/packages/")
			 ("marmalade" . "http://marmalade-repo.org/packages/")
			 ("gnu" . "https://elpa.gnu.org/packages/")
			 ("org" . "https://orgmode.org/elpa/")
			 ("melpa" . "https://melpa.org/packages/")))

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;;(package-initialize)
;; this is done to avoid reinitializing
(unless package--initialized (package-initialize))
;; Bootstrap `use-package`
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("cadbb10749a747faf09fdcfcecd5fd6c830ddc127e46570817904749bc841cd1" default)))
 '(package-selected-packages
   (quote
    (imenu-list projectile neotree ess latex-preview-pane visual-regexp undo-tree dashboard org-bullets golden-ratio git-gutter auctex company atom-one-dark magit all-the-icons which-key counsel atom-one-dark-theme ivy)))
 '(pdf-latex-command "xelatex"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; load all lisp files in the lisp directory, they contain custom stuff
(mapc 'load (file-expand-wildcards "~/.emacs.d/lisp/*.el"))

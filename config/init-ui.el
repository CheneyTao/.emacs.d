;;
;; init-ui.el
;;
(setq-default cursor-type 'box)

(setq blink-curser-mode nil)
(setq ring-bell-function nil)
(setq inhibit-startup-message t)

(global-hl-line-mode t)
(global-linum-mode t)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(set-cursor-color "green")
(tool-bar-mode -1)

;;
;; font
;;
(set-face-attribute 'default nil :font "Mononoki"
		    :slant 'italic
		    :height 3)

;;
;; color-theme
;;
(use-package base16-theme
  :ensure t)
(use-package color-theme-sanityinc-tomorrow
  :ensure t)
(load-theme 'sanityinc-tomorrow-day t)

;;
;; neotree
;;
(use-package neotree
  :ensure t
  :bind
  ("<f2>" . neotree-toggle))

;;
;; relative number
;;
(use-package linum-relative
  :ensure t
  :config
  (linum-relative-mode))

;;
;; posframe
;;
(use-package posframe
  :ensure t)

;;
;; dired-posframe
;;
(use-package dired-posframe
  :ensure t
  :hook (after-init . dired-posframe-mode)
  :bind
  ("C-*" . dired-posframe-show))

(provide 'init-ui)


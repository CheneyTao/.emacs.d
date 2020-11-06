;; Defer garbage collection further back in the startup process
(setq gc-cons-threshold most-positive-fixnum)
;;
;; Load configuration path
;;
(add-to-list 'load-path "~/.emacs.d/config")
;; (add-to-list 'load-path (expand-file-name (concat user-emacs-directory "~/.emacs.d/conifg/")))

;;
;; Set emacs automatic generation code path
;;
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

(fset 'yes-or-no-p 'y-or-n-p)

;;
;; Custom config
;;
(require 'init-elpa)
(require 'init-ui)
(require 'init-edit)
(require 'init-evil)
(require 'init-git)
(require 'init-ivy)
(require 'init-company)
(require 'init-tag)

;;
;; Load emacs automatic generation code
;; 
(when (file-exists-p custom-file)
  (load-file custom-file))


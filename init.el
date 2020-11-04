;;
;; Load configuration path
;;
(add-to-list 'load-path "~/.emacs.d/config")
;; (add-to-list 'load-path (expand-file-name (concat user-emacs-directory "~/.emacs.d/conifg/")))

;;
;; Set emacs automatic generation code path
;;
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

(require 'init-elpa)
(require 'init-ui)
(require 'init-edit)

;;
;; Load emacs automatic generation code
;; 
(when (file-exists-p custom-file)
  (load-file custom-file))


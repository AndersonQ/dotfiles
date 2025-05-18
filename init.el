
;; if not nox:
;; (scroll-bar-mode -1)            ;; Hide the scroll bar
;; (set-finge-mode 10)
;; (setq visible-bell t)

;; hide/remove menu bar
(menu-bar-mode 0)

;; fix colours for nox running on my terminal
(set-face-foreground 'link "cyan")
(set-face-foreground 'minibuffer-prompt "lightgreen")
(set-face-foreground 'font-lock-function-name-face "color-201")
(set-face-foreground 'completions-common-part "pink")

(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

;;; ----- Package Management -----

(require 'package)

(setq package-archeives '(("melpa". "https://melpa.org/packages/")
			  ("org". "https://otgmode./elpa/")
			  ("elpa". "https://elpa.gnu.org/packages/")))
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))
(require 'use-package)
(use-package ivy :diminish :config (ivy-mode 1))
(use-package counsel)
(use-package magit :ensure t)
;;(defvar using-packages '(
;;			   ivy
;;			   counsel))
;;(loop for pkg in using-packages
 ;;     unless (package-installed-p pkg) do (package-install pkg))
;; TODO - list packages to install IF NEEDED:
;; ivy



;; Automatically install packages (when not on Guix) but don't load
;; them until requested
(setq use-package-always-ensure t)
(setq use-package-always-defer t)


;; TODO: find how to configure them manually
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ispell-dictionary nil)
 '(package-selected-packages
   '(zuul magit modus-themes counsel ivy gnu-elpa-keyring-update ## use-package cmake-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(dired-directory ((t (:foreground "brightblue")))))

;;(load-theme 'modus-vivendi)             ; Dark theme

(provide 'init)

;; .emacs

;;;;;;;;;;;;;;;;;
;;;; USER DETAILS
;;;;;;;;;;;;;;;;;

(setq user-full-name "Ron Yang")
(setq user-mail-address "yang.runnan@gmail.com")

;;; uncomment this line to disable loading of "default.el" at startup
(setq inhibit-default-init t)

;; mouse control
(when (eq window-system nil)
  (xterm-mouse-mode t))

;; enable visual feedback on selections
(setq transient-mark-mode t)

;; default to better frame titles
(setq frame-title-format
      (concat  "%b - emacs@" (system-name)))

;; default to unified diffs
(setq diff-switches "-u")

;; line numbers
(global-linum-mode t)

;; turn off menu bar
(menu-bar-mode -1)

;; Change yes or no
(fset 'yes-or-no-p 'y-or-n-p)

;; tabs
(setq tab-width 4) ; 4 spaces per tab
(defvaralias 'c-basic-offset 'tab-width)

;;; Load the auto-save.el package, which lets you put all of your autosave
;;; files in one place, instead of scattering them around the file system.
;;;
(setq auto-save-directory (expand-file-name "~/.autosave/")
      auto-save-directory-fallback auto-save-directory
      auto-save-hash-p nil
      efs-auto-save t
      efs-auto-save-remotely nil
      ;; now that we have auto-save-timeout, let's crank this up
      ;; for better interactive response.
      auto-save-interval 2000
            )

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Backups in /var/tmp
;;(setq
;; backup-by-copying t
;; backup-directory-alist
;; '((".*" . temporary-file-directory))
;; delete-old-version t
;; kept-new-versions 6
;; kept-old-versions 2
;; version-control t)

;; ESS

(load "/usr/local/share/emacs/site-lisp/ess/ess-site.el")
(setq inferior-julia-program-name "/usr/local/bin/julia")
(add-to-list 'load-path "/usr/local/share/emacs/site-lisp/ess/")

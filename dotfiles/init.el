;; Emacs config 
;; Owain Lewis <owain@owainlewis.com>

;; Packages 
;; *******************************************

(require 'package)

(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar packages '(
  scala-mode2
  auto-complete
  paredit
  yaml-mode
  js2-mode
))

(defun safe-package-install (package)
  (unless (package-installed-p package)
    (package-install package)))
  
(mapcar #'safe-package-install packages)  

;; Backup files
;; ********************************************************

(setq make-backup-files nil)
(setq auto-save-default nil)

;; UI
;; ********************************************************

(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

(setq inhibit-startup-message t)
(setq inhibit-startup-echo-area-message t)
(setq initial-scratch-message
  (concat "\nHello Owain. Today is: "
    (format-time-string "%A %d %B %Y at %T\n")))

(setq ring-bell-function 'ignore)
(display-time-mode)
(global-linum-mode)
(setq linum-format "%4d ")
(setq show-trailing-whitespace t)

;; Theme
;; ********************************************************

(load-theme 'tango-dark)

;; ***************************************************************

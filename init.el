(require 'package)

(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))

(defvar my-packages
  '(
      better-defaults
      paredit
      idle-highlight-mode
      ido-ubiquitous
      find-file-in-project
      magit
      smex
      scpaste
   ))
 (package-initialize)
 (dolist (p my-packages)
   (when (not (package-installed-p p))
     (package-install p)))

; (setq ido-everywhere t)
; (global-set-key (kbd "M-x") 'smex)
; (global-set-key (kbd "M-X") 'smex-major-mode-commands)

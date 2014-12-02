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
   )
)

 (package-initialize)
 (dolist (p my-packages)
   (when (not (package-installed-p p))
     (package-install p)))

(load (expand-file-name "~/quicklisp/slime-helper.el"))
(setq inferior-lisp-program "clisp")

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(global-set-key (kbd "C-?") 'help-command)
(global-set-key (kbd "M-?") 'mark-paragraph)
(global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key (kbd "M-h") 'backward-kill-word)

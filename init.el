
(defun backward-kill-line (arg)
    "Kill ARG lines backward."
      (interactive "p")
        (kill-line (- 1 arg)))

(require 'package)

(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))

(defvar my-packages
  '(
      better-defaults
      paredit
      coffee-mode
      idle-highlight-mode
      ido-ubiquitous
      find-file-in-project
      magit
      smex
      evil
      scpaste
   )
)

 (package-initialize)
 (dolist (p my-packages)
   (when (not (package-installed-p p))
     (package-install p)))

(load (expand-file-name "~/quicklisp/slime-helper.el"))
(setq inferior-lisp-program "clisp")
(custom-set-variables '(coffee-tab-width 2))
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(global-set-key (kbd "C-?") 'help-command)
(global-set-key (kbd "M-?") 'mark-paragraph)
(global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key (kbd "M-h") 'backward-kill-word)
(define-key global-map (kbd "RET") 'newline-and-indent)
(setq make-backup-files nil)
(global-set-key "\C-u" 'backward-kill-line)

(evil-mode 1)
(define-key evil-normal-state-map (kbd ",f") 'projectile-find-file)
(define-key evil-normal-state-map (kbd ",,") 'evil-buffer)
(define-key evil-normal-state-map (kbd "q") nil)
(define-key evil-normal-state-map (kbd "c") nil)

(define-key evil-insert-state-map (kbd "C-e") nil)
(define-key evil-insert-state-map (kbd "C-d") nil)
(define-key evil-insert-state-map (kbd "C-k") nil)
(define-key evil-insert-state-map (kbd "C-c") 'evil-normal-state)
(define-key evil-insert-state-map (kbd "C-g") 'evil-normal-state)
(define-key evil-visual-state-map (kbd "C-c") 'evil-normal-state)

(define-key evil-motion-state-map (kbd "C-e") nil)
(define-key evil-visual-state-map (kbd "C-c") 'evil-exit-visual-state)

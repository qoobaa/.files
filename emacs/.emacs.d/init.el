(fset 'yes-or-no-p 'y-or-n-p)

(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(backup-by-copying t)
 '(backup-directory-alist (quote ((".*" . "~/.emacs.backups"))))
 '(browse-url-browser-function (quote browse-url-chromium))
 '(browse-url-generic-program nil)
 '(coffee-tab-width 2)
 '(create-lockfiles nil)
 '(custom-safe-themes
   (quote
    ("4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" default)))
 '(editorconfig-mode t)
 '(erc-nick "qoobaa")
 '(erc-prompt-for-password t)
 '(global-linum-mode t)
 '(ido-enable-flex-matching t)
 '(ido-max-directory-size 100000)
 '(ido-mode (quote both) nil (ido))
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(initial-scratch-message "")
 '(js2-enter-indents-newline t)
 '(js2-indent-switch-body t)
 '(js2-mode-escape-quotes nil)
 '(menu-bar-mode nil)
 '(package-archives
   (quote
    (("melpa" . "http://melpa.milkbox.net/packages/")
     ("gnu" . "http://elpa.gnu.org/packages/"))))
 '(projectile-global-mode t)
 '(require-final-newline t)
 '(scroll-bar-mode nil)
 '(scss-compile-at-save nil)
 '(show-trailing-whitespace t)
 '(tool-bar-mode nil)
 '(user-mail-address "kuba@jah.pl"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#fdf6e3" :foreground "#657b83" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 140 :width normal :foundry "unknown" :family "Inconsolata")))))

(load-theme 'solarized t)

(add-hook 'ruby-mode-hook 'flymake-ruby-load)
(add-hook 'ruby-mode-hook 'ruby-end-mode)
(add-hook 'ruby-mode-hook 'ruby-tools-mode)
(add-hook 'js2-mode-hook 'qoobaa/js2-mode-setup)

(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.hbs$" . web-mode))

(setenv "PATH" (concat (getenv "HOME") "/.rbenv/shims:" (getenv "HOME") "/.rbenv/bin:" (getenv "PATH")))
(setq exec-path (cons (concat (getenv "HOME") "/.rbenv/shims") (cons (concat (getenv "HOME") "/.rbenv/bin") exec-path)))

(defun qoobaa/js2-mode-setup ()
  (let ((local-eslint (expand-file-name "node_modules/.bin/eslint" (projectile-project-root))))
    (setq flycheck-javascript-eslint-executable
          (and (file-exists-p local-eslint) local-eslint)))
  (flycheck-mode t)
  (flycheck-select-checker 'javascript-eslint))

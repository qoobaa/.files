(fset 'yes-or-no-p 'y-or-n-p)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(backup-by-copying t)
 '(backup-directory-alist '((".*" . "~/.emacs.backups")))
 '(browse-url-browser-function 'browse-url-chromium)
 '(browse-url-generic-program nil)
 '(coffee-tab-width 2)
 '(company-tooltip-align-annotations t)
 '(create-lockfiles nil)
 '(custom-safe-themes
   '("4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" default))
 '(editorconfig-mode t)
 '(erc-nick "qoobaa")
 '(erc-prompt-for-password t)
 '(global-linum-mode t)
 '(ido-enable-flex-matching t)
 '(ido-max-directory-size 100000)
 '(ido-mode 'both nil (ido))
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(initial-scratch-message "")
 '(js-indent-level 2)
 '(js2-enter-indents-newline t)
 '(js2-indent-switch-body t)
 '(js2-mode-escape-quotes nil)
 '(menu-bar-mode nil)
 '(package-selected-packages
   '(dockerfile-mode company tide default-font-presets typescript-mode yaml-mode scad-mode scad-preview js2-mode web-mode ruby-end ruby-tools solarized-theme))
 '(projectile-global-mode t)
 '(require-final-newline t)
 '(scroll-bar-mode nil)
 '(scss-compile-at-save nil)
 '(show-trailing-whitespace t)
 '(tool-bar-mode nil)
 '(typescript-indent-level 2)
 '(user-mail-address "kuba@kubakuzma.com")
 '(web-mode-code-indent-offset 2)
 '(web-mode-css-indent-offset 2)
 '(web-mode-markup-indent-offset 2))

(load-theme 'solarized-light t)

(add-hook 'ruby-mode-hook 'ruby-end-mode)
(add-hook 'ruby-mode-hook 'ruby-tools-mode)
(add-hook 'js2-mode-hook 'qoobaa/js2-mode-setup)
(add-hook 'typescript-mode-hook 'qoobaa/tide-mode-setup)

(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.hbs$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html\\.erb$" . web-mode))

(setenv "PATH" (concat (getenv "HOME") "/.rbenv/shims:" (getenv "HOME") "/.rbenv/bin:" (getenv "PATH")))
(setq exec-path (cons (concat (getenv "HOME") "/.rbenv/shims") (cons (concat (getenv "HOME") "/.rbenv/bin") exec-path)))

(defun qoobaa/tide-mode-setup ()
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode +1)
  (company-mode +1))

(defun qoobaa/js2-mode-setup ()
  (let ((local-eslint (expand-file-name "node_modules/.bin/eslint" (projectile-project-root))))
    (when (file-exists-p local-eslint)
      (setq flycheck-javascript-eslint-executable local-eslint)
      (js2-mode-hide-warnings-and-errors)
      (flycheck-mode t)
      (flycheck-select-checker 'javascript-eslint))))

(set-frame-font "Source Code Pro 14" nil t)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((((class color) (min-colors 89)) (:foreground "#657b83" :background "#fdf6e3")))))

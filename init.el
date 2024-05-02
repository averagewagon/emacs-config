(require 'package)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(setq package-selected-packages
      '( which-key
	 corfu
	 vertico
	 marginalia
	 orderless
	 magit
	 treemacs))

(setq package-native-compile t)

;; Portability - if my packages aren't all installed, go install them
(unless (seq-every-p #'package-installed-p package-selected-packages)
  (package-refresh-contents)
  (package-install-selected-packages t))

;; Custom dark theme
(load-theme 'modus-vivendi t)

;; Enable CUA mode
(cua-mode t)

;; Discovery helpers
(which-key-mode)
(vertico-mode)
(marginalia-mode)

(require 'corfu)
(setq corfu-auto t
      completion-styles '(orderless)
      completion-category-defaults nil)
(global-corfu-mode)

;; Smooth-scrolling
(pixel-scroll-precision-mode 1)
(setq pixel-scroll-precision-large-scroll-height 10.0)

(require 'project)

;; Project folder viewer
(require 'treemacs)
(global-set-key (kbd "C-x t t") #'treemacs)  ; Keybinding to toggle Treemacs

;; TODO: Investigation additional packages
;; dired-sidebar
;; centaur-tabs
;; gcmh
;; rainbow-delimiters
;; jinx
;; vundo
;; envrc
;; editorconfig
;; cape
;; kind-icon
;; consult
;; yasnippet
;; rg
;; inheritenv
;; adaptive-wrap
;; devdocs
;; eglot markdown-mode clang-format cmake-mode cargo
;; toml-mode git-modes pdf-tools

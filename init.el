(require 'package)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(setq package-selected-packages
      '( which-key
	 corfu
	 vertico
	 marginalia
	 orderless))

(setq package-native-compile t)

(unless (seq-every-p #'package-installed-p package-selected-packages)
  (package-refresh-contents)
  (package-install-selected-packages t))

(load-theme 'modus-vivendi t)

;; TODO: Configure these
(which-key-mode)
(vertico-mode)
(marginalia-mode)

(require 'corfu)
(setq corfu-auto t
      completion-styles '(orderless)
      completion-category-defaults nil)
(global-corfu-mode)

;; TODO: Investigation additional packages
;; magit
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

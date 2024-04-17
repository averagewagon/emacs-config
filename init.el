(require 'package)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(setq package-selected-packages
      '( which-key
	 corfu
	 vertico
	 marginalia))

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
(setq corfu-auto t)
(global-corfu-mode)

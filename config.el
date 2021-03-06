;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("org-cn". "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))


;;Key Configuration for Doom as Vanilla Emacs
(setq evil-default-state 'emacs)


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "idlesong"
      user-mail-address "idlesong@gmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

(setq kill-whole-line t)

(cua-mode t)

(setq confirm-kill-emacs nil)

(setq ispell-program-name "aspell")



;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
(map! "M-p" #'backward-paragraph
      "M-n" #'forward-paragraph
      "C-M-p" #'cua-scroll-down
      "C-M-n" #'cua-scroll-up
      "C-c o y" #'youdao-dictionary-search-from-input
      "M-g c" #'avy-goto-char
      "M-g s" #'avy-goto-char-2
      "M-g f" #'avy-goto-char-in-line
      "M-g g" #'avy-goto-line
      "M-g w" #'avy-goto-word-1
      "M-g e" #'avy-goto-word-0
      )

(map! :map markdown-mode-map
        "M-n" #'markdown-forward-paragraph
        "M-p" #'markdown-backward-paragraph
        "C-M-p" #'cua-scroll-down
        "C-M-n" #'cua-scroll-up)

;;(setq url-proxy-services
;;          '(("http"  . "127.0.0.1:51772")
;;    	("https" . "127.0.0.1:51772")))

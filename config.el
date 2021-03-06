;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-
(setq rg-exec-path                "/opt/homebrew/bin/rg"                                   ;; rg            exec path
      fd-exec-path                "/opt/homebrew/bin/fd"                                   ;; fd            exec path
      dot-exec-path               "/opt/homebrew/bin/dot"                                  ;; dot           exec path
      pdflatex-exec-path          "/Library/TeX/texbin/pdflatex"                           ;; pdflatex      exec path
      lsp-maven-path              "~/.m2/settings.xml"                                     ;; maven setting path
      org-directory               "~/org/"                                                 ;; org           root path
      org-roam-directory          "~/org/org-roam"                                         ;; org roam      root path
      lsp-java-java-path          (concat (getenv "JAVA_HOME") "/bin/java")                ;; java11        exec path
      node-bin-dir                "~/soft/node-v16.14.0/bin"                               ;; node home
      user-private-dir            "~/org/org-roam/command/doom/config/"                    ;; user private dir
      ;;doom-font                   (font-spec :family "等距更纱黑体 Slab SC" :size 16)      ;; font setting
      display-line-numbers-type   'relative                                                      ;; show line number 'relative
      rime-user-data-dir          "~/Library/Rime/"                                        ;; rime config input method setting
      rime-librime-root           "~/.doom.d/neoemacs/rime-macos/dist"                     ;; emacs-rime/blob/master/INSTALLATION.org
      emacs-module-root           "/opt/homebrew/opt/emacs-plus@28/include"                ;; emcas exec path
      lsp-java-jdt-download-url   "http://1.117.167.195/download/jdt-language-server-1.6.0-202111261512.tar.gz" ;; jdt-server URL,with tencent cloud speed up
)
;; default core setting
(add-to-list  'load-path "~/.doom.d"  )
(load-theme   'doom-sourcerer t       ) ;; set theme
(use-package! neoemacs                ) ;; neo-emacs main config
(use-package! dap-java-config         )
(use-package! db-work                 )


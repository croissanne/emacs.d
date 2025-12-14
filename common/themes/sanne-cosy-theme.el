(deftheme sanne-cosy
  "croissant-cosy")

(custom-theme-set-faces
 'sanne-cosy
 '(font-lock-function-name-face ((t (:inherit nil :foreground "gold"))))
 '(region ((t (:extend t :background "gainsboro" :distant-foreground "#314733"))))
 '(mode-line ((t (:box (:line-width -1 :style released-button) :foreground "gainsboro" :background "cadet blue"))))
 '(mode-line-inactive ((t (:inherit mode-line :background "dark slate gray" :foreground "gainsboro" :box (:line-width -1 :color "grey75") :weight light))))
 '(fringe ((t (:background "#314733"))))
 '(default ((t (:inherit nil :extend t :stipple nil :background "#314733" :foreground "gainsboro" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 140 :width normal :family "Iosevka"))))
 '(font-lock-keyword-face ((t (:foreground "light coral")))))

(provide-theme 'sanne-cosy)

(deftheme sanne
  "croissant")

(custom-theme-set-faces
 'sanne
 '(font-lock-function-name-face ((t (:inherit nil :foreground "#3c6943"))))
 '(region ((t (:extend t :background "#f5b458" :distant-foreground "gainsboro"))))
 '(mode-line ((t (:box (:line-width -1 :style released-button) :foreground "black" :background "powder blue"))))
 '(mode-line-inactive ((t (:weight light :box (:line-width -1 :color "grey75") :foreground "grey20" :background "dark gray" :inherit mode-line))))
 '(fringe ((t (:background "#F0FAF0"))))
 '(default ((t (:inherit nil :extend t :stipple nil :background "#F0FAF0" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 140 :width normal :family "Iosevka")))))

(provide-theme 'sanne)

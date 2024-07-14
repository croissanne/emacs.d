(deftheme sanne "croissant")

(custom-theme-set-variables
 'sanne
 '(ansi-color-faces-vector [default bold shadow italic underline bold bold-italic bold])
 '(frame-background-mode 'light))

(custom-theme-set-faces
 'sanne
 '(font-lock-function-name-face ((t (:inherit nil :foreground "#3c6943"))))
 '(region ((t (:extend t :background "#f5b458" :distant-foreground "gainsboro"))))
 '(mode-line ((t (:box (:line-width -1 :style released-button) :foreground "black" :background "powder blue"))))
 '(mode-line-inactive ((t (:weight light :box (:line-width -1 :color "grey75") :foreground "grey20" :background "dark gray" :inherit mode-line)))))

(provide-theme 'sanne)

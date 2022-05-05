(let ((deps '(("[[https://cons.dev/econf-theme.html#ID-ee3f7df2-c7bc-4d98-8720-448833e4012e][doom-themes]]" "Adds nice themes to Emacs."))))
(ec-load-deps deps)
)

;; Compiler pacifier
(defvar modeline-bg)

;; These are the font sizes used for titles and other things
(defvar ec-font-scale-level-1 1.5)
(defvar ec-font-scale-level-2 1.3)
(defvar ec-font-scale-level-3 1.2
  "The smallest level of text.")

(defvar ec-font-scale-title   1.8
  "Titles in my files are this size")


(defvar ec-heading-font "Jura"
  "The font for titles.")

(defvar ec-title-font "Jura Bold Italic"
  "The font for titles.")

(defvar ec-standard-font "Iosevka Term SS04")

(defface ec-title
  nil
  "Basic face for titles."
  :group 'ec-faces)

(defface ec-headline
  nil
  "Basic face for headlines."
  :group 'ec-faces)

(defgroup econf-theme nil
  "Options for the `doom-econf' theme."
  :group 'doom-themes)

(def-doom-theme econf
  "A modern, consistent, light theme for my emacs config."
  ;; name        default   256       16
  (

(bg         '("#fff" "#282a36" nil)) ;; this is the background for the hl-line, modeline, and minibuffer
(bg-alt     '("#f5f5f5" "#f5f5f5" nil)) ;; this is the background for the line you arent currently on
(base0      '("#fff" "#fff" "black"))
(base1      '("#f5f5f5" "#f5f5f5" "brightwhite"))
(base2      '("#eee" "#eee" "brightwhite"))
(base3      '("#bbb" "#bbb" "white"))
(base4      '("#a4a4a4" "#a4a4a4" "white"))
(base5      '("#a4a4a4" "#a4a4a4" "brightblack"))
(base6      '("#494949" "#494949" "brightblack"))
(base7      '("#212121" "#212121" "black"))
(base8      '("#ff5c57" "#ff5c57" "black"))
(fg         '("#000" "#000" "black"))
(fg-alt     '("#d1d1d1" "#d1d1d1" "brightblack"))

(ui0 '("#848688" "#848688" "grey"))
(ui1 '("#606580" "#606580" "grey"))
(ui2 '("#3a3d4d" "#3a3d4d" "grey"))
(ui3 '("#1c1e27" "#1c1e27" "black"))

(grey       ui0)
(red        '("#E53935" "#E53935" "red"          ))
(dark-red   '("#ab000d" "#ab000d" "darkred"      ))
(green      '("#388e3c" "#388e3c" "brightred"    ))
(yellow     '("#f57f17" "#f57f17" "green"        ))
(blue       '("#1976D2" "#1976D2" "brightgreen"  ))
(dark-blue  '("#004a9f" "#004a9f" "yellow"       ))
(magenta    '("#7c1fa3" "#7c1fa3" "brightblue"   ))
(cyan       '("#0097A7" "#0097A7" "blue"         ))
(violet     '("#512DA8" "#512DA8" "magenta"      ))
(orange     '("#E64A19" "#E64A19" "brightmagenta"))
(teal       '("#00796B" "#00796B" "brightcyan"   ))
(dark-cyan  '("#006876" "#006876" "cyan"         ))

(default fg-alt)
;; face categories -- required for all themes
(highlight      red) ;; when searching with (/) ?
(vertical-bar   (doom-darken base1 0.1)) ; the bar that separates modeline and minibuffer?
(selection      red) ; for like company autocomplete and stuff
(builtin        red)    ; saw this in company autocomplete if i moved my mouse
;; over it
(comments       base4) ;; comments
(doc-comments   base5) ;; easy to test with elisp
;; documentation or git commit
;; first line thing

(functions      fg)
(methods        fg) ;; wtf is the difference between this and function?
(operators      fg)

;; make constants and keywords look better
(constants      fg)
(keywords       red)
(type           red)

(strings        base6)
(variables      fg)
(numbers        red)
(region         red)
(error          red)
(warning        orange)
(success        green)
(vc-modified    orange)
(vc-added       green)
(cursor         fg)
(vc-deleted     red)

)(

(default :font ec-standard-font
  :slant 'normal
  :weight 'normal
  :height 120
  :width 'normal)
(fixed-pitch :font ec-standard-font
             :slant 'normal
             :weight 'normal
             :height 120
             :width 'normal)
(variable-pitch :font "Iosevka Aile"
                :slant 'normal
                :weight 'normal
                :height 120
                :width 'normal)

;; Code style improvements.
(font-lock-keyword-face :foreground red :slant 'italic)
(font-lock-function-name-face :weight 'bold :slant 'italic )

(font-lock-constant-face :foreground red)
(font-lock-builtin-face :foreground red)
(font-lock-variable-name-face :slant 'italic)

;; italic comments
(font-lock-comment-face :slant 'italic :foreground comments)

;; make block highlighting more bearable
(show-paren-match-expression :weight 'bold)

   ;;;; Highlighted line
(hl-line :foreground bg :background red :extend t)

 ;;;; Line Numbers
(line-number :foreground comments)
(line-number-current-line :foreground bg :background comments)

   ;;;; Ivy
(ivy-prompt-match :foreground bg :background red :extend t)
(ivy-current-match :foreground bg :background red :extend t)

   ;;;; rainbow delimiters
(rainbow-delimiters-depth-1-face :foreground base6)
(rainbow-delimiters-depth-2-face :foreground base3)


   ;;;; Modeline
(mode-line :background base2)
(mode-line-inactive :background bg-alt :foreground comments)
(tooltip :background bg-alt :foreground fg)

;; Regions of highlighted text.
(region :foreground bg :background red)


   ;;;; Woman / Man
(woman-italic :foreground fg :background bg :slant 'italic)
(Man-underline :foreground fg :background bg :slant 'italic)

   ;;;; isearch
(lazy-highlight :foreground bg :background dark-red)
(isearch :foreground bg :background red :weight 'bold)
(pdf-isearch-lazy :foreground bg :background dark-red)
(pdf-isearch-match :foreground bg :background red :weight 'bold)

   ;;;; dired
((diredfl-dir-name &override) :foreground red)
((diredfl-dir-heading &override) :foreground red :weight 'bold)
((diredfl-date-time &override) :foreground fg)
((diredfl-number &override) :foreground fg)


   ;;;; vterm
(vterm-color-black :foreground fg :background bg)


   ;;;; doom-modeline

(doom-modeline-bar :background highlight)

   ;;;; ivy posframe
(ivy-posframe :background bg-alt)
(ivy-posframe-border :background base2 :foreground base2)

;;;; Hydra posframe
(hydra-posframe-face :background bg-alt)
(hydra-posframe-border-face :background base2 :foreground base2)

   ;;;; Avy faces
(avy-lead-face   :background bg :foreground red)
(avy-lead-face-0 :background bg :foreground red)
(avy-lead-face-2 :background bg :foreground red)


   ;;;; Ace Window
(aw-leading-char-face
 :foreground red
 :weight 'bold
 :undelrine t
 :font ec-title-font
 :height 300)
(aw-minibuffer-leading-char-face
 :foreground red
 :weight 'bold
 :undelrine t
 :font ec-title-font)

   ;;;; custom button
(custom-button :foreground red)


   ;;;; Solaire
(solaire-default-face :foreground fg :background bg)
(solaire-mode-line-face :foreground fg :background base2)
(solaire-mode-line-inactive-face :foreground comments :background fg-alt )
(solaire-hl-line-face :foreground bg :background red :extend t)


   ;;; window divider
(vertical-border :foreground base2
                 :background base2)


   ;;;; Links
(link-visited :foreground dark-red)

    ;;;; Helpful
(helpful-heading :foreground red
                 :font ec-heading-font
                 :weight 'bold
                 :height ec-font-scale-level-1)


   ;;;; Info Mode
   (info-title-1 :background red
                 :foreground bg
                 :slant 'italic
                 :weight 'bold
                 :extend t
                 :font ec-title-font
                 :height ec-font-scale-title)
   (info-title-2 :foreground red
                 :font ec-heading-font
                 :weight 'bold
                 :height ec-font-scale-level-1)
   (info-title-3 :foreground red
                 :font ec-heading-font
                 :weight 'bold
                 :height ec-font-scale-level-2)
   (info-title-4 :foreground red
                 :font ec-heading-font
                 :weight 'bold
                 :height ec-font-scale-level-3)
   (info-quoted :background bg-alt)

;;;; Outlines
(outline-1 :foreground red
           :font ec-heading-font
           :weight 'bold)
(outline-2 :foreground red
           :font ec-heading-font
           :weight 'bold)
(outline-3 :foreground red
           :font ec-heading-font
           :weight 'bold)
(outline-3 :foreground red
           :font ec-heading-font
           :weight 'bold)
(outline-4 :foreground red
           :font ec-heading-font
           :weight 'bold)
(outline-5 :foreground red
           :font ec-heading-font
           :weight 'bold)
(outline-6 :foreground red
           :font ec-heading-font
           :weight 'bold)
(outline-7 :foreground red
           :font ec-heading-font
           :weight 'bold)
(outline-8 :foreground red
           :font ec-heading-font
           :weight 'bold)

(markdown-header-face-1 :background red
                        :foreground bg
                        :slant 'italic
                        :weight 'bold
                        :extend t
                        :font ec-title-font
                        :height ec-font-scale-title)
(markdown-header-face-2 :foreground red
                        :font ec-heading-font
                        :weight 'bold
                        :height ec-font-scale-level-1)
(markdown-header-face-3 :foreground red
                        :font ec-heading-font
                        :weight 'bold
                        :height ec-font-scale-level-2)
(markdown-header-face-4 :foreground red
                        :font ec-heading-font
                        :weight 'bold
                        :height ec-font-scale-level-3)
(markdown-header-face-5 :foreground red
                        :font ec-heading-font
                        :weight 'bold
                        :height 1)
(markdown-code-face :background bg-alt :foreground fg :extend t)
(markdown-inline-code-face :background bg-alt :foreground fg)
(markdown-link-face :inherit 'link)

;;;; Org Transclusion
(org-transclusion-fringe :foreground red)

(org-transclusion-source-fringe :foreground green)
;;;; Org Noter
(org-noter-notes-exist-face :foreground green)
(org-noter-no-notes-exist-face :foreground dark-red)
;;;; org <built-in>
;; org code blocks
(org-block-begin-line :inherit 'fixed-pitch
                      :background bg-alt
                      :foreground comments
                      :extend t)

(org-block-end-line :inherit 'fixed-pitch
                    :background bg-alt
                    :foreground comments
                    :extend t)

(org-block :inherit 'fixed-pitch
           :background bg-alt
           :extend t)

(org-table :inherit 'fixed-pitch
           :background bg-alt
           :foreground fg)

(org-code :inherit 'fixed-pitch
          :background bg-alt
          :foreground fg)

;; org titles
(org-document-title :background red
                    :foreground bg
                    :slant 'italic
                    :weight 'bold
                    :extend t
                    :font ec-title-font
                    :height ec-font-scale-title)
(org-document-info :foreground red
                   :font ec-heading-font
                   :weight 'bold)

;; org headings
(org-level-1 :foreground red
             :font ec-heading-font
             :weight 'bold
             :height ec-font-scale-level-1)
(org-level-2 :foreground red
             :font ec-heading-font
             :weight 'bold
             :height ec-font-scale-level-2)
(org-level-3 :foreground red
             :font ec-heading-font
             :weight 'bold
             :height ec-font-scale-level-3)
(org-level-4 :foreground red
             :font ec-heading-font
             :weight 'bold)
(org-level-5 :foreground red
             :font ec-heading-font
             :weight 'bold)
(org-level-6 :foreground red
             :font ec-heading-font
             :weight 'bold)
(org-level-7 :foreground red
             :font ec-heading-font
             :weight 'bold)
(org-level-8 :foreground red
             :font ec-heading-font
             :weight 'bold)
;; footnotes
(org-footnote :foreground comments :slant 'italic)

;; org comment-like stuff
(org-document-info-keyword :foreground comments
                           :inherit 'fixed-pitch)
(org-meta-line :foreground comments
               :inherit 'fixed-pitch)

;; tags and keywords
(org-special-keyword :foreground comments
                     :inherit 'fixed-pitch)
(org-tag :foreground comments
         :inherit 'fixed-pitch)

;; Quotes and Examples
(org-quote :background bg-alt
           :slant 'italic
           :extend t)

;; Clock stuff
(org-mode-clock-overrun :foreground bg
                        :background red)

;; Drawers
(org-drawer :foreground comments :inherit 'fixed-pitch)
(org-property-value :foreground comments :inherit 'fixed-pitch)

))

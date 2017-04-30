% Prints a \pp followed by "leggiermente". Offset slightly to the left
% due to the fact \pp is normally center-offset.
ppLeggiermente =
  \tweak DynamicText.self-alignment-X #LEFT
  \tweak DynamicText.X-extent #'(0 . 0)
  \tweak DynamicText.X-offset #-1
  #(make-dynamic-script
     (markup #:dynamic "pp"
             #:normal-text (#:italic "leggiermente")))

% Prints "sempre" followed by a \pp.
semprePp =
  \tweak DynamicText.self-alignment-X #LEFT
  \tweak DynamicText.X-extent #'(0 . 0)
  \tweak DynamicText.X-offset #0
  #(make-dynamic-script
     (markup #:normal-text (#:italic "sempre")
             #:dynamic "pp"))

% Prints "sempre legato".
sempreLegato =
  \tweak DynamicText.self-alignment-X #LEFT
  \tweak DynamicText.X-extent #'(0 . 0)
  \tweak DynamicText.X-offset #0
  #(make-dynamic-script
     (markup #:normal-text (#:italic "sempre legato")))

% Prints "mano sinistra" (use left hand).
manoSinistra =
  \tweak DynamicText.self-alignment-X #LEFT
  \tweak DynamicText.X-extent #'(0 . 0)
  \tweak DynamicText.X-offset #0
  #(make-dynamic-script
     (markup #:normal-text (#:italic "mano sinistra")))

% Prints "ritardando" with a dynamic text spanner.
ritardando =
  #(make-music 'CrescendoEvent
               'span-direction START
               'span-type 'text
               'span-text "ritardando")

% Creates a crescendo with custom text.
textCresc =
#(define-music-function (parser location mymarkup) (markup?)
   (make-music 'CrescendoEvent
               'span-direction START
               'span-type 'text
               'span-text mymarkup))

% Creates another crescendo with custom text, but without dashed line.
textCrescEnd =
#(define-music-function (parser location mymarkup) (markup?)
   (make-music 'CrescendoEvent
               'span-direction START
               'span-type 'text
               'tweaks '((dash-period . -1))
               'span-text mymarkup))

% As above, with a decrescendo.
textDecresc =
#(define-music-function (parser location mymarkup) (markup?)
   (make-music 'DecrescendoEvent
               'span-direction START
               'span-type 'text
               'span-text mymarkup))
textDecrescEnd =
#(define-music-function (parser location mymarkup) (markup?)
   (make-music 'DecrescendoEvent
               'span-direction START
               'span-type 'text
               'tweaks '((dash-period . -1))
               'span-text mymarkup))

% Prints "semplice" whited out.
sempliceWhiteout =
  \tweak DynamicText.self-alignment-X #LEFT
  \tweak DynamicText.X-extent #'(0 . 0)
  \tweak DynamicText.X-offset #0
  #(make-dynamic-script
    (markup
     #:whiteout (
      #:pad-to-box '(0 . 0) '(0 . 1.34)
      (#:line
       (#:left-column
        (#:line (#:normal-text (#:italic "semplice"))))))))

% Prints a left-aligned column with two lines of text,
% one describing "mezzo piano", the other "poco ritenente".
mezzoP-pocoRitenente =
  \tweak DynamicText.self-alignment-X #LEFT
  \tweak DynamicText.X-extent #'(0 . 0)
  \tweak DynamicText.X-offset #0
  #(make-dynamic-script
    (markup
     #:whiteout (
      #:pad-to-box '(0 . 0) '(0 . 1.34)
      (#:line
       (#:left-column
        (#:line (#:normal-text (#:italic "mezzo") #:dynamic "p")
         #:normal-text (#:italic "poco ritenente")))))))

% Prints "non ligato".
nonLigato = \markup {
  \italic "non-ligato"
}

% Prints a left-aligned column with two lines of text,
% one describing "poco ritenente", the other "espressivo".
pocoRitenente-espressivo = \markup {
  \left-column {
    \line {
      \italic "poco ritenente"
    }
    \line {
      \italic "espressivo"
    }
  }
}

% Parenthesizes a dynamic mark.
paren =
#(define-event-function (parser location dyn) (ly:event?)
   (make-dynamic-script
    #{ \markup \concat {
         \normal-text \italic \fontsize #2 (
	 \pad-x #0.2 #(ly:music-property dyn 'text)
	 \normal-text \italic \fontsize #2 )
       }
    #}))

% Special form of \paren, with better padding for \sf.
parenSf =
#(define-event-function (parser location dyn) (ly:event?)
   (make-dynamic-script
    #{ \markup \concat {
         \hspace #-0.3 \normal-text \italic \fontsize #2 (
	 \hspace #-0.5 \pad-x #0.2 #(ly:music-property dyn 'text)
	 \normal-text \italic \fontsize #2 )
       }
    #}))

% Special form of \paren, set a bit higher so that it works for two text spanners.
parenHigh =
#(define-event-function (parser location dyn) (ly:event?)
   (make-dynamic-script
    #{ \markup \concat {
         \hspace #-0.5 \normal-text \italic \fontsize #2 (
	 \pad-x #0.2 #(ly:music-property dyn 'text)
	 \normal-text \italic \fontsize #2 )
       }
    #}))

% Special form of \paren for \p
parenP =
#(define-event-function (parser location dyn) (ly:event?)
   (make-dynamic-script
    #{ \markup \concat {
         \pad-x #0.2 \hspace #-1.0 \normal-text \italic \fontsize #2 (
           #(ly:music-property dyn 'text)
           \normal-text \italic \fontsize #2 )
       }
    #}))

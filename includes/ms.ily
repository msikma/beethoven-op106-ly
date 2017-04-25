% /includes/ms.ily - Standard header file for MS projects
%
% Contains standardized copyright notices among various other things.
% This file expects that at least the AUTHORS variable has been set
% in the file that includes this.
%
% After including this file, you can use the following variables:
%
%    * ms-copyright-(LICENSE)-(LANGUAGE) where LICENSE is
%      one of "cc-by-sa-four", "pd"
%    * ms-tagline-(LANGUAGE)
%
% LANGUAGE is an ISO 639-1 code, e.g. "en" or "jp".
%
% (C) 2016-2017, Michiel Sikma <michiel@sikma.org>
% This source code file is in the public domain.

% Force "mid" file extension for compatibility.
#(ly:set-option 'midi-extension "mid")

% Set after grace notes a bit closer to the next notes.
#(define afterGraceFraction (cons 8 9))

% \paragraphBreak
%
% Used to add a space after a paragraph text.
paragraphBreak = \markup \vspace #0.5

% \implicitTuplets
%
% Shorthand for turning off tuplet numbers. This turns off
% the numbers for all subsequent tuplets, until \explicitTuplets.
implicitTuplets = \override TupletNumber.stencil = ##f

% \explicitTuplets
%
% Turns tuplet numbers back on.
explicitTuplets = \revert TupletNumber.stencil

% \trillSpanDown
%
% Ensures trill spanners appear at the bottom of the staff.
trillSpanDown = \override TrillSpanner.direction = #-1

% \trillSpanUp
%
% Ensures trill spanners appear at the top of the staff.
trillSpanUp = \override TrillSpanner.direction = #1

% \sharpTrill
%
% Override trill spanners to have a sharp sign. Undo with \regularTrill.
% Using \once does not work for trill spanners that cross over to
% the next line, hence the need to use a separate \regularTrill command.
sharpTrill = \override TrillSpanner.bound-details.left.text = \markup { 
  \halign #4.75 \raise #0.97 \teeny \sharp \musicglyph #"scripts.trill"
}

% \flatTrill
%
% Override trill spanners to have a flat sign. Undo with \regularTrill.
% Using \once does not work for trill spanners that cross over to
% the next line, hence the need to use a separate \regularTrill command.
flatTrill = \override TrillSpanner.bound-details.left.text = \markup { 
  \halign #5.30 \raise #0.65 \teeny \flat \musicglyph #"scripts.trill"
}

% \regularTrill
%
% Revert the trill spanners back to having a standard trill symbol.
regularTrill = \override TrillSpanner.bound-details.left.text = \markup { 
  \musicglyph #"scripts.trill"
}

% \ppLeggiermente
%
% Prints a \pp followed by "leggiermente". Offset slightly to the left
% due to the fact \pp is normally center-offset.
ppLeggiermente = 
  \tweak DynamicText.self-alignment-X #LEFT
  \tweak DynamicText.X-extent #'(0 . 0)
  \tweak DynamicText.X-offset #-1
  #(make-dynamic-script
     (markup #:dynamic "pp"
             #:normal-text (#:italic "leggiermente")))

% \semprePp
%
% Prints "sempre" followed by a \pp.
semprePp = 
  \tweak DynamicText.self-alignment-X #LEFT
  \tweak DynamicText.X-extent #'(0 . 0)
  \tweak DynamicText.X-offset #0
  #(make-dynamic-script
     (markup #:normal-text (#:italic "sempre")
             #:dynamic "pp"))

% \sempreLegato
%
% Prints "sempre legato".
sempreLegato = 
  \tweak DynamicText.self-alignment-X #LEFT
  \tweak DynamicText.X-extent #'(0 . 0)
  \tweak DynamicText.X-offset #0
  #(make-dynamic-script
     (markup #:normal-text (#:italic "sempre legato")))

% \manoSinistra
%
% Prints "mano sinistra" (use left hand).
manoSinistra = 
  \tweak DynamicText.self-alignment-X #LEFT
  \tweak DynamicText.X-extent #'(0 . 0)
  \tweak DynamicText.X-offset #0
  #(make-dynamic-script
     (markup #:normal-text (#:italic "mano sinistra")))

% \ritardando
%
% Prints "ritardando" with a dynamic text spanner.
ritardando =
  #(make-music 'CrescendoEvent
               'span-direction START
               'span-type 'text
               'span-text "ritardando")

% \textCresc <string>
%
% Creates a crescendo with custom text.
textCresc =
#(define-music-function (parser location mymarkup) (markup?)
   (make-music 'CrescendoEvent
               'span-direction START
               'span-type 'text
               'span-text mymarkup))

% \textCrescEnd <string>
%
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

% \sempliceWhiteout
%
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

% \mezzoP-pocoRitenente
%
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

% \stdDynSize
%
% Sets dynamic text spanners to the standard font size.
stdDynSize = { \override DynamicTextSpanner.font-size = #0 }

% \nonLigato
%
% Prints "non ligato".
nonLigato = \markup {
  \italic "non-ligato"
}

% \pocoRitenente-espressivo
%
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

% \markup \tied-finger-up #"1" #"2"
%
% Used to tie together two fingering suggestions at the top,
% rather than at the bottom. Alternative to \markup \tied-lyric #"1~2".
% By tisimst. <https://lists.gnu.org/archive/html/bug-lilypond/2015-04/msg00078.html>
#(define-markup-command (tied-finger-up layout props f1 f2)
   (string? string?)
   (interpret-markup layout props
     #{
       \markup {
       \override #'(baseline-skip . 1.2)
       \center-column {
         \scale #'(1 . -1) \translate #'(0 . 2) \musicglyph #"ties.lyric.default"
         \concat { #f1 \hspace #0.52 #f2 }
       }
       }
     #}
   ))

% \setStaffDistance <int>
%
% Sets the distance between two staff lines.
setStaffDistance = 
#(define-music-function
  (parser location dist)
  (number?)
  #{\overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
      #'((alignment-distances . (dist)))
  #})

% \shortestNoteDuration <int>
%
% Sets the shortest note duration in a bar. The larger the number,
% the more spaced out the notes will be. Thanks to anabain from IRC.
shortestNoteDuration =
#(define-music-function
     (parser location space)
     (number?)
   #{\newSpacingSection
     \override Score.SpacingSpanner
     #'common-shortest-duration = #(ly:make-moment 1 space)    
   #})

% \resetNoteDuration
%
% Sets the shortest note duration back to the staff default.
resetNoteDuration =
#(define-music-function
     (parser location)
     ()
   #{\newSpacingSection
     \revert Score.SpacingSpanner #'common-shortest-duration  
   #})

% \paren
%
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

% Language-independent variables.
CURRENT-YEAR = #(strftime "%Y" (localtime (current-time)))
COPYRIGHT-YEAR = #(format "~A-~A" COPYRIGHT-START-YEAR CURRENT-YEAR)
CURRENT-DATE = #(strftime "%Y-%m-%d" (localtime (current-time)))

% Copyright strings, separated by language.
% English
ms-copyright-cc-by-sa-four-en = "Licensed under CC BY-SA 4.0."
ms-copyright-pd-en = "Public domain."
ms-copyright-template-en = "© ~A. Typeset by ~A."
ms-copyright-template-en-license = "© ~A. Typeset by ~A. ~A"

% Japanese (Todo)
ms-copyright-cc-by-sa-four-jp = "Licensed under CC BY-SA 4.0."
ms-copyright-pd-jp = "Public domain."
ms-copyright-template-jp = "© ~A. Typeset by ~A."
ms-copyright-template-jp-license = "© ~A. Typeset by ~A. ~A"

% Standardized tagline.
ms-tagline-en = \markup {
  \fontsize #-3 #(format ms-copyright-template-en COPYRIGHT-YEAR AUTHORS)
}
ms-tagline-en-cc-by-sa-four = \markup {
  \fontsize #-3 #(format ms-copyright-template-en-license COPYRIGHT-YEAR AUTHORS ms-copyright-cc-by-sa-four-en)
}
ms-tagline-en-pd = \markup {
  \fontsize #-3 #(format ms-copyright-template-en-license COPYRIGHT-YEAR AUTHORS ms-copyright-pd-en)
}
ms-tagline-jp = \markup {
  \fontsize #-3 #(format ms-copyright-template-jp COPYRIGHT-YEAR AUTHORS)
}
ms-tagline-jp-cc-by-sa-four = \markup {
  \fontsize #-3 #(format ms-copyright-template-jp-license COPYRIGHT-YEAR AUTHORS ms-copyright-cc-by-sa-four-jp)
}
ms-tagline-jp-pd = \markup {
  \fontsize #-3 #(format ms-copyright-template-jp-license COPYRIGHT-YEAR AUTHORS ms-copyright-pd-jp)
}

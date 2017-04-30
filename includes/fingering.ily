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

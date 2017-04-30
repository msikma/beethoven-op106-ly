% Styling commands and defines.
%
% (C) 2016-2017, Michiel Sikma <michiel@sikma.org>
% Licensed under CC BY-SA 4.0.

% Set after grace notes a bit closer to the next notes.
#(define afterGraceFraction (cons 8 9))

% Standard padding. Use in \bookpart \paper markup-system-spacing.
% For the first page only.
std-padding-page-one = #'((padding . 4))

% For all subsequent pages.
std-padding-page-n = #'((padding . 1.5))

% Standard staff spacing. Use in \new PianoStaff \with.
std-staff-spacing = \override StaffGrouper.staff-staff-spacing =
  #'((basic-distance . 11.5)
     (minimum-distance . 9)
     (padding . 1.0)
     (stretchability . 5))

% Standard scaling for a staff.
std-magnification = \magnifyStaff #89/100

% Used to add a space after a paragraph text.
paragraphBreak = \markup \vspace #0.5

% Sets dynamic text spanners to the standard font size.
stdDynSize = { \override DynamicTextSpanner.font-size = #0 }

% Standard title markup. Use in \bookpart \paper bookTitleMarkup.
% Assumes that the COMPOSED variable is set in the source file.
% This is for the first page. Use std-title-markup-page-n for subsequent pages.
std-title-markup-page-one = \markup {
  \column {
    \override #'(baseline-skip . 5.0)
    \fill-line {
      \fontsize #7.2
      \pad-to-box #'(0 . 0) #'(0 . 6.6)
      \fromproperty #'header:title
    }
    \fill-line {
      \fontsize #3.0
      \pad-markup #3
      \fromproperty #'header:subtitle
    }
    \fill-line {
      \smaller \bold
      \fromproperty #'header:subsubtitle
    }
    \fill-line {
      \fromproperty #'header:dedication
    }
    \fill-line {
      \COMPOSED
    }
    \fill-line {
      \fromproperty #'header:poet
      { \large \bold \fromproperty #'header:instrument }
      \fromproperty #'header:composer
    }
    \fill-line {
      \fromproperty #'header:meter
      \fromproperty #'header:arranger
    }
  }
}

% As above; for subsequent pages after the first.
std-title-markup-page-n = \markup {
  \left-align {
    \override #'(baseline-skip . 2.0)
    \line {
      \pad-x #11.5 \concat {
        \fontsize #4 \fromproperty #'header:subtitle
        \hspace #1.4
        \fontsize #1.8 \fromproperty #'header:subsubtitle
      }
    }
    \fill-line {
      \fromproperty #'header:poet
      { \large \bold \fromproperty #'header:instrument }
      \fromproperty #'header:composer
    }
    \fill-line {
      \fromproperty #'header:meter
      \fromproperty #'header:arranger
    }
  }
}

% As above, but without subtitles.
std-title-markup-page-n-no-titles = \markup {
  \left-align {
    \override #'(baseline-skip . 2.0)
    \fill-line {
      \fromproperty #'header:poet
      { \large \bold \fromproperty #'header:instrument }
      \fromproperty #'header:composer
    }
    \fill-line {
      \fromproperty #'header:meter
      \fromproperty #'header:arranger
    }
  }
}

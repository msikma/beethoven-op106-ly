%===========================================================================
%    Piano Sonata Op.106 (L.Beethoven) - I
%===========================================================================
%
%    (C) 2016-2017, Michiel Sikma <michiel@sikma.org>
%    Licensed under CC BY-SA 4.0.
%
%---------------------------------------------------------------------------

\include "sonata-op106-headers.ily"

%---------------------------------------------------------------------------
%    I. Allegro
%---------------------------------------------------------------------------

one-section-one = {
  \key bes \major
  \time 4/4
  \partial 8
  \tempo "Allegro" 2 = 138
}

\bookpart {
  \paper {
    markup-system-spacing = \std-padding-page-one
    bookTitleMarkup = \std-title-markup-page-one
  }
  \include "includes/header.ily"
  \score {
    \new PianoStaff \with {
      \std-staff-spacing
    } <<
      \set PianoStaff.connectArpeggios = ##t
      %---------------------------------------------------------------------
      %    Right hand
      %---------------------------------------------------------------------
      \new Staff = "right" \with {
        \std-magnification
        \stdDynSize
        midiInstrument = "acoustic grand"
      } {
        \clef treble \relative c'' {
          \one-section-one
          r8\ff |
          r4 r8 <d f bes d>8-. 4-. <d f bes es>8-. <d f bes d>-. |
          4-. <bes d f bes>-. r2 |
          r4 r8 <f' bes d f>8-. 4-. <f bes d g>8-. <f bes d f>-. |
          4-. <d f bes d>4-. r4\fermata
          <<
            \relative c'' {
              bes8\p-3 c
            }
            \\
            \relative c'' {
              s4
            }
          >>
        }
      }
      %---------------------------------------------------------------------
      %    Left hand
      %---------------------------------------------------------------------
      \new Staff = "left" \with {
        \std-magnification
        \stdDynSize
        midiInstrument = "acoustic grand"
      } {
        \clef bass \relative c, {
          \one-section-one
          bes8 |
          <f'' bes d>4. 8-. 4-. 8-. 8-. |
          4-. <bes, f' bes>4-. r4 r8 bes,8 |
          <f'' bes d f>4. 8-. 4-. 8-. 8-. |
          4-. <f bes d>4-. r4\fermata r4 |
        }
      }
    >>
    \layout {
      \context {
        \Score
        % Set the score to a default note value of one crotchet.
        \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/8)
        \consists #Span_stem_engraver
      }
    }
    \midi {
      \tempo 4 = 60
    }
  }
}


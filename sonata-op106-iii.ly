%===========================================================================
%    Piano Sonata Op.106 (L.Beethoven) - III
%===========================================================================
%
%    (C) 2016-2017, Michiel Sikma <michiel@sikma.org>
%    Licensed under CC BY-SA 4.0.
%
%---------------------------------------------------------------------------

\include "sonata-op106-headers.ily"

%---------------------------------------------------------------------------
%    III. Adagio sostenuto
%---------------------------------------------------------------------------

three-section-one = {
  \key fis \minor
  \time 6/8
  \tempo "Adagio sostenuto" 8 = 92
}

\bookpart {
  \paper {
    markup-system-spacing = \std-padding-page-n
    bookTitleMarkup = \std-title-markup-page-n-no-titles
  }
  \header {
    copyright = ##f
    tagline = \ms-tagline-en-cc-by-sa-four
  }
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
          \three-section-one
          a,4._(^\markup { \italic "Appassionato e con molto sentimento" }_\markup { \italic "un corda, mezza voce" }
          cis4.) |
          <<
            \relative c'' {
              <a cis>4^( a8 s4. |
              <a, cis fis a>4.)
            }
            \\
            \relative c' {
              <cis fis>4. \stemUp
              <cis a'>8 <cis fis>8 <b cis eis gis>8
            }
          >>
          <b fis' b>4_( <d fis d'>8 |
          4 <cis fis cis'>8) 8^( <eis b' cis eis> <fis a cis eis> |
          <gis cis gis'>4.) <gis b d>4. |
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
          \three-section-one
          <a a'>4._( <cis cis'>4.) |
          <fis cis' fis>4.^( \stemDown <fis cis' fis>8 <a cis a'>8 <gis cis gis'>8 |
          \stemUp <fis cis' fis>4.)
          \stemNeutral
          <d d'>4_( <b b'>8 | 4 <a a'>8) 8_( <gis gis'> <fis fis'> |
          <eis eis'>4.) <eis''! gis b d>4. |
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

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
        \relative c'' {
          <<
            {
              <gis d' b>4.^( <cis, a' cis>4 <b d eis b'>8 |
              4.)
            }
            \\
            \relative c' {
              a4\rest d8 
            }
          >>
          <b d eis b'>8 <a cis fis a>8^( <gis d' fis gis>8 |
          <gis d' fis gis>4) 8 8^( <a d fis a>8 <fis a d fis>8 |
          <<
            \relative c' {
              dis8 bis cis
            }
            \\
            \relative c {
              <fis a fis'>4.
            }
          >>
          <eis gis cis eis>8)^( gis' b! |
          <<
            \relative c' {
              <d b'>4
            }
            \\
            \relative c' {
              eis8-[ gis]
            }
          >>
          <cis, fis a>8)
          <<
            \relative c' {
              <cis fis a>8 <b d eis gis> <dis fis> |
              <a bis dis fis>4 <gis cis eis>8
              eis'8-[^( gis b!16 d!] |
              <b d>4 cis8) <a cis>8 <d, eis gis b>8 <bis dis fis a>8 |
              <fis' a>4 <eis gis>8 <cis eis gis>4^( <cis e g>8) |
              \acciaccatura { g'8 } b'4^( a8 g4 fis8 |
              e4 fis8 \stemDown <g, g'>4) \stemUp fis8^( |
              fis8-[ <fis a> <fis a cis!>] <eis gis cis>4 8)
            }
            \\
            \relative c' {
              s8 s8 a16-[ bis] |
              s4 s8 s4 <eis_~ gis_~>8 |
              <eis! gis>8 <eis gis> <fis a>
              b,16\rest fis'16 s4 |
              b,8\rest <bis dis>8-[ cis] s4. |
              g'8\rest b8 a g4. |
              g4. s4 s8 |
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
          \three-section-one
          <a a'>4._( <cis cis'>4.) |
          <fis cis' fis>4.^( \stemDown <fis cis' fis>8 <a cis a'>8 <gis cis gis'>8 |
          \stemUp <fis cis' fis>4.)
          \stemNeutral
          <d d'>4_( <b b'>8 | 4 <a a'>8) 8_( <gis gis'> <fis fis'> |
          <eis eis'>4.) <eis''! gis b d>4. |
          s2. |
          s2. |
          s2. |
          s2. |
          s2. |
          s2. |
          s2. |
          s2. |
          s2. |
          s2. |
          s2. |
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

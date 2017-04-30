%===========================================================================
%    Piano Sonata Op.106 (L.Beethoven) - III
%===========================================================================
%
%    (C) 2016-2017, Michiel Sikma <michiel@sikma.org>
%    Licensed under CC BY-SA 4.0.
%
%---------------------------------------------------------------------------

\version "2.19.42"
\include "sonata-op106-includes.ily"

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
          a,4.^\markup { \italic "Appassionato e con molto sentimento" }_\markup { \whiteout { \italic "una corda, mezza voce" } }
          cis4. |
          <<
            \relative c'' {
              <a cis>4 a8 s4.
            }
            \\
            \relative c' {
              <cis fis>4. \stemUp
              <cis a'>8 <cis fis>8 <b cis eis gis>8
            }
          >> |
          <a cis fis a>4._( <b fis' b>4 <d fis d'>8) |
          4 <cis fis cis'>8 8_( <eis b' cis eis> <fis a cis eis>) |
          <gis cis gis'>4.
        }
        \relative c'' {
          <<
            {
              \stemDown <gis b d>4.\> \stemUp <gis d' b>4.\!^( <cis, a' cis>4 <b d eis b'>8) |
              4.
            }
            \\
            \relative c' {
              s4. | a8\rest a8\rest d8
            }
          >>
          <b d eis b'>8 <a cis fis a>8 <gis d' fis gis>8 |
          <gis dis' fis gis>4 8 8 <a dis fis a>8 <fis a dis fis>8 |
          <<
            \relative c' {
              % TODO shift these notes to the right
              dis8 bis cis
            }
            \\
            \relative c {
              <fis a fis'>4.
            }
          >>
          <eis gis cis eis>8^( gis' b!) |
          <<
            \relative c' {
              <d! b'>4 <cis a'>8
            }
            \\
            \relative c' {
              eis8-[ gis fis]
            }
          >>
          <<
            \relative c' {
              <cis fis a>8 <b d eis gis> <dis fis> |
              <a bis dis fis>4 <gis cis eis>8
              eis'8-[ gis b!16 d!] |
              <b d>4 cis8 <a cis>8^( <gis b>8 <fis a>8) |
              <fis a>4^( <eis gis>8) <cis eis gis>4^( <cis e g>8) |
              % TODO remove slur from acciaccatura
              \acciaccatura { g'8 } b'4^( a8 g4 fis8 |
              e4 fis8 g4) fis8 |
              fis8-[ <fis a> <fis a cis!>] <eis gis cis>4 8
            }
            \\
            \relative c' {
              s8 s8 a16-[ bis] |
              s4 s8 s4 <eis_~ gis_~>8 |
              <eis! gis>8 <eis gis> <fis a>
              b,16\rest fis'16 <d eis>8 <bis dis>8 |
              b8\rest <bis dis>8-[ cis] s4. |
              g'8\rest b8 a g4. |
              g4. g4 s8 |
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
          <a a'>4. <cis cis'>4. |
          <fis cis' fis>4. \stemDown <fis cis' fis>8 <a cis a'>8 <gis cis gis'>8 |
          \stemUp <fis cis' fis>4.
          \stemNeutral
          <d d'>4 <b b'>8 | 4 <a a'>8 8_( <gis gis'> <fis fis'>) |
          <eis eis'>4. <eis''! gis b d>4. |
          <eis,, eis'>4. <fis fis'>4 <gis gis'>8 |
          <gis gis'>4. <gis gis'>8 <a a'>8 <b b'>8 |
          <bis bis'>4 8 8 8 8 |
          <cis cis'>4. <cis cis'>8 <cis' eis gis>8 <cis gis' b!>8 |
          <cis b'>4 <cis a'>8 8 <cis gis'> <cis fis> |
          4 <cis eis>8
          <<
            \relative c {
              eis8 gis b16 c16 |
              <b d>4 <a cis>8 8 <gis b>8 <fis a>8 |
              4 <eis gis>8 4 <e g bes>8
            }
            \\
            \relative c {
              cis4 <cis gis'>8\< |
              cis4\> 8\! 8 8 8 |
              4 8 4 8
            }
          >> |
          <d g b>4.
          <<
            \relative c' {
              <b d>4 d8
            }
            \\
            \relative c' {
              g4\< s8 |
              <c e>4.\> <b d>4\! d8
            }
          >> |
          d'8-[ cis!8] <cis, fis a cis>8 <cis eis gis! cis>4 8 |
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

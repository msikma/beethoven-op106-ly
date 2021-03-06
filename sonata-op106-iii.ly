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
              \slashedGrace g'8
              \once \override Slur.positions = #'(4.8 . 3.7)
              \once \override Slur.eccentricity = #0.75
              \once \override Slur.height-limit = #4.5
              b'4^( a8 g4 fis8 |
              e4 fis8 g4) fis,8 |
              fis8-[ <fis a> <fis a cis!>] <eis gis cis>4 8 |
              <<
                \relative c' {
                  <eis gis cis>4 <fis a>8 8-[ <cis fis>8 <eis gis>16 <fis a>16] |
                  <gis b>4 <fis a>8 a8-[ gis <dis fis>] |
                  <a fis'>8-[ <fisis disis'>8 <gis eis'>8] eis'8.-[ gis16^( b d]) |
                  <eis, gis b d>4 cis'8 <eis, gis cis>8 b' <fis a>8 |
                  <fis b>4 <eis gis>8 8 g4 |
                  \stemNeutral
                  \slashedGrace g8 b'4^( a8)
                  \once \override Slur.positions = #'(5.2 . 3.5)
                  \once \override Slur.height-limit = #4.5
                  \once \override Slur.eccentricity = #-1.05
                  a8^( <g g'>8 <fis fis'> | 8 <e e'> <fis fis'>)
                  % Todo fix slur
                  % Todo lower the dot
                  \once \override Slur.height-limit = #13.5
                  \once \override Slur.eccentricity = #0.25
                  \once \override Slur.positions = #'(6.0 . 4.3)
                  <fis fis'>^(
                  g8.
                  <fis, fis'>16) |
                  <fis fis'>8 <a a'>8 <cis cis'>8 4 8 |
                  \once \override Slur.height-limit = #4.5
                  <cis cis'>8^( <d d'> <g, g'> <b b'> <cis, cis'> <eis eis'>)
                }
                \\
                \relative c' {
                  s4 s8 s8 s8 cis8 |
                  a8\rest d8-[ cis] <b d eis>4 a8 |
                  cis4. <gis cis>8. s8. |
                  d'8-[ <gis b>8 a8] d,4 dis8 |
                  <bis dis>8 8 cis cis e b
                }
                \\
                \relative c'''' {
                  s2. |
                  s2. |
                  s2. |
                  s2. |
                  s2. |
                  s2. |
                  s8 s8 s8 s8
                  % Cheating a little bit here. We made this note a 4 instead of 8.
                  % This way it looks correctly. We only put this here because
                  % we need to move only this note's dot down one position.
                  \once \override Dots.extra-offset = #'(0 . -1)
                  \voiceOne
                  \stemDown
                  g4.
                }
              >> |
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
          >> |
          r4 r8 r8 r8
          <<
            \relative c''' {
              s8 | b8\rest b8\rest fis8 fis a cis |
              \once \override Slur.height-limit = #4
              \once \override Slur.positions = #'(5.8 . 3.7)
              cis4^( e16-[ d]) d8 eis, b' |
              % todo: make these cresc/decresc a bit nicer
              b8 b, cis16^\< d\! d8^( cis8. b16)
            }
            \\
            \relative c'' {
              cis8_~ | cis16 8 8 16_~ 16 8 8 16 |
              b16\rest <eis b'>8 <eis_~ b'_~>16 8 b16\rest b8 8 b16_~ |
              b16 eis,8 8 eis16_~ 16^\> <eis b'>8\! 8 eis16
            }
          >> |
          b16 a8 cis fis16^~
          \tuplet 3/2 { fis16-[ a cis16^~] }
          \implicitTuplets
          \tuplet 3/2 { cis16-[ fis gis] }
          \tuplet 3/2 { a-[ fis cis] } |
          % TODO should after grace be 16 or 32? check with M 117.
          \afterGrace cis4\startTrillSpan { bis32\stopTrillSpan cis }
          \explicitTuplets
          \tuplet 3/2 { e16-[^( cis d)] }
          \implicitTuplets
          \tuplet 3/2 { d16-[^( e, eis)] }
          \tuplet 3/2 { eis16-[^( d' cis)] }
          \tuplet 3/2 { cis16-[^( ais b]) } |
          b32
          eis,,32-[ f g] a-[ ais b bis]
          \explicitTuplets
          \tuplet 3/2 { cis16-[ d dis] }
          \tuplet 3/2 { e!16-[ cis d] }
          d32-[\< b' g eis]\!\> d-[ bis d cis]\! |
          <<
            \relative c'' {
              \override Tie.minimum-length = #2.5
              cis8 gis'8. cis,16 d4 cis8 |
              \tupletDown
              \stemNeutral
              \tuplet 3/2 { cis16-[^\( cis' gis] }
              b32-[ a eis fis]
              gis-[ fis]
              \tuplet 3/2 { a-[^( fis cis]^)\) }
              \stemUp
              e16-[ dis] d16-[ 8 16] |
              cis8.-[ fis8 16]^~ 8.-[ 8 16]^~ |
              8.-[ b8 16]^~ 8.-[ <b, b'>8 <b^~ b'^~>16] |
              <b b'>16-[ 8 8 <b b'^~>16]
              \stemNeutral
              b'16 <e, b' e>8
              % Note: Henle has an extra neutral on d, but I don't see the need.
              <e b' d e>8
              <e a cis e>16 |
              \stemUp
              e'16-[^( gis, b a gis a]) cis8 b4^~ |
              b16^( gis! bes a gis a) b8
              % todo: make tie nicer
              a4^~ |
              a16^( fis a g fis g) g^( e g fis e f) |
              f8^( <e, e'> <fis d'>) g' fis b!^~ |
              b8 a d^~ \stemNeutral <d, g d'> <cis e g cis> <g'_~ cis_~ e^~ g^~> |
              8. g,16-[ e bes'] gis-[ a e b' a g]
            }
            \\
            \relative c' {
              e16\rest fis8 fis16_~ fis16 e16\rest e16\rest <eis b'>8 8 16 |
              \noBreak
              s4. e16\rest <eis b'>8 8 16 |
              e16\rest fis8 e16\rest e8\rest e16\rest fis8 e16\rest e8\rest |
              e16\rest b8 e16\rest e8\rest e16\rest b8 e16\rest e8\rest |
              s2. |
              e'8 e fis_~ fis16 16_( a g fis g) |
              f8 e4_~ e16 e_( g fis eis fis) |
              \bar "||"
              \key b \minor
              dis8 e cis cis d b_~ |
              b16 f bes a gis a cis e d8 <b f'> |
              <b d gis>8 <a d>
              % Note: first edition ties the following to to the next d.
              % Henle notes this is probably an engraving error.
              d s4. |
            }
          >> |
          fis,8 r8 \clef bass
          d,,8_~ d4 d16_( a) |
          a4. a4 a8 |
          fis8 r8 \clef treble
          <d''''_~ d'^~>8 <d d'>4 <d d'>16^( <a a'>) |
          <a a'>4. 4 8 |
          <fis fis'>8 r8 \clef bass
          d,,8_~ d8-[ d8] \tuplet 3/2 { d16\< cis\> d\! } |
          a4 4 4 |
          fis8 r8 \clef treble
          <d''''_~ d'^~>8 <d d'>8-[ <d d'>8] \tuplet 3/2 { <d d'>16 <cis cis'> <d d'> } |
          \hideTupletBracket
          <a a'>4 4 <a_~ a'^~>8 \tuplet 3/2 { <a_~ a'^~>16 16 <g g'> } |
          <fis fis'>8\p
          <<
            \relative c'' {
              fis4 g4. |
              a8 a4 b4. |
              cis4 d8 e4 fis8 |
              g8 a,8 b f4 e8
            }
            \\
            \relative c' {
              \hideTupletBracket
              \set subdivideBeams = ##t
              \implicitTuplets
              \tuplet 3/2 { fis16 e' d }
              \tuplet 3/2 { cis b a }
              \tuplet 3/2 { g bes a }
              \tuplet 3/2 { g a b }
              \tuplet 3/2 { cis d e }
              |
              a,8\noBeam
              \tuplet 3/2 { a16 g' fis }
              \tuplet 3/2 { e d c }
              \tuplet 3/2 { b d c }
              \tuplet 3/2 { b c d }
              \tuplet 3/2 { e fis g }
              |
              \tuplet 3/2 { g g fis }
              \tuplet 3/2 { e d cis }
              \tuplet 3/2 { d e fis }
              \tuplet 3/2 { e bes' a }
              \tuplet 3/2 { g fis e }
              \tuplet 3/2 { fis g a }
              |
              \tuplet 3/2 { g fis e }
              \tuplet 3/2 { es d es }
              \tuplet 3/2 { d c b }
              \tuplet 3/2 { d\> cis b }
              \tuplet 3/2 { gis a b }
              \tuplet 3/2 { cis bes a\! }
              |
            }
          >>
          <<
            \relative c''' {
              a4.^( b4 fis8) |
              s4 s8
              \once \override Slur.height-limit = #3
              \once \override Slur.positions = #'(0 . 3.7)
              d'4^( <a cis>16-[ <a c>]) |
              c8-[ c,^~] c16-[ b] s4 s8 |
              a8-[ 8^~] a16-[ gis] s4 s8 |
            }
            \\
            \relative c'' {
              dis4. <b fis'>4 <b dis>8 |
              \set subdivideBeams = ##f
              a'16-[ fis <g g'> <b, b'> <fis' fis'> <e e'>]
              d-[ eis g f] <cis e>16-[ <c es>] |
              a'32-[ fis es c] a-[ fis es c] a'-[ e <b d> g'] \stemNeutral <bes, d g bes>4 \relative c'' b8\rest |
              \stemDown
              \explicitTuplets
              \tuplet 3/2 { fis'16-[ d a] }
              fis'32-[ d a fis']
              fis d fis d
              \stemNeutral
              <g, bes e g>8 \relative c'' { b8\rest b8\rest } |
            }
          >> |
          r4 r8 <dis fis>4 <dis fis b>8 |
          <b dis fis b>4 8 <b e b'>8 <a cis e a>4 |
          <a d! fis a>4_( fis'8 a,4 a'8) |
          fis4 <fis' a fis'>8 <e g e'>4 <a, e' g a>8 |
          <a fis' a>4^( fis'8 a,4 <a a'>8) |
          <fis fis'>4 <a a'>8 <b g' b>4 <cis e g cis>8 |
          <d fis d'>4. <e cis' e>4. |
          % As per original edition.
          4 <fis dis' fis>8 <g e' g>8 <a e' a>8-[ <a e' a g>8] |
          <a a'>8 <a, a'>-[^( <fis fis'>)] <fis fis'>_( <d d'> <e e'>) |
          <fis fis'>4. <g g'>4 <b b'>8 |
          <b g' b>4 <ais g' ais>8 <ais ais'>8-[ <e' e'> <eis eis'>16 <fis fis'>16] |
          <fis fis'>4.
          \once \override Slur.height-limit = #4
          dis16^( fis gis dis' fis gis) |
          \bar "||"
          \key fis \minor
          <eis,, eis'>4.
          <<
            \relative c'' {
              gis'4 gis8 |
              cis4. a4 fis8 |
              fis'4 s4 s4 |
            }
            \\
            \relative c'' {
              g8 eis' fis |
              gis8 cis, cis cis a <fis cis'> |
              fis'8-[ dis'] <fis, dis' fis> <fis dis' fis>-[ <fis gis dis'> <eis gis cis>] |
            }
          >>
          \bar "||"
          \key es \major
          <<
            \relative c''' {
              d4 s8 s4. |
              \stemDown
              <bes, bes'>4 <g g'>8
              \stemUp
              <g g'> <es es'> <bes' d f> |
            }
            \\
            \relative c'' {
              <f a>4 a16 f
              \clef bass
              \stemNeutral
              \relative c { d16-[ f }
              \clef treble
              \relative c' { bes d f bes] } |
              \stemDown
              s4 s8 s4 f,16 as |
            }
          >> |
          <g bes es g>4 <ces ces'>8 <as as'>4 <f f'>8 |
          <des' des'>4 <bes bes'>8 <g g'>4 
          <<
            \relative c'' {
              \once \override Slur.height-limit = #4
              \once \override Slur.positions = #'(3.0 . 2.4)
              dis8^( |
              <gis, b>4 gis8 e'4 cis8) |
              \bar "||"
              \key a \minor
              ais4 \stemNeutral <fis' fis'>8\f <dis dis'>4 <bis bis'>8 |
              <gis' gis'>4 <e e'>8\sf <dis dis'>4 <a, a'>8 |
              fis'4 d8 b''4 gis8 |
              eis4 <cis cis'>8 \stemUp a'!4 d!8 |
            }
            \\
            \relative c' {
              c16\rest <dis fisis>16 |
              dis8 c8\rest c8\rest s4 s8 |
              s2. |
              s2. |
              a8 ais16-[ dis] s4 s4 |
              s4 s8 cis'16-[ fis8 a,16] d!8 |
            }
          >> |
          \bar "||"
          \key fis \minor
          <b b'>4 <gis gis'>8 <eis eis'>4 <eis gis b eis>8 |
          <d eis gis b>4 <b d eis gis>8 <gis b d eis>4
          \change Staff = "left"
          \voiceOne
          \stemUp <eis_~ gis_~ b^~ d^~>8 |
          32-[ b' gis eis] d-[ b gis b] <b d>-[ eis' gis b]
          \change Staff = "right"
          \oneVoice
          <b d>-[ eis gis b] <d b>-[ eis gis b]
          <<
            \relative c''' {
              d32-[ bis d cis] |
              \once \override Slur.height-limit = #4
              d-[^( d, d' cis]
              d,-[ cis' d cis]
              b-[ a, b' a]
              a,-[ a' b a]
              gis-[ fis, gis' fis]
              gis,-[ gis' a gis]) |
            }
            \\
            \relative c''' {
              a8 |
              a8 % todo fix this note
              a
            }
          >> |
          a,,32-[ a' b a]
          b32-[ ais, b' ais]
          b,32-[ b' cis b]
          cis-[ b b, b']
          b,-[ b' cis b]
          e-[ d d, d']
          |
          d,-[ d' e d]
          e-[ d d, d']
          cis,-[ cis' d cis]
          d-[ cis cis, cis']
          <eis, b'>-[ eis' fis eis]
          gis-[ fis <fis, a> fis']
          |
          a-[^( gis gis, gis'])
          r32 gis-[ gis, gis']
          r32 gis-[ gis, gis']
          r32 gis,-[ e' d]
          cis-[ d gis, d']
          r32 d-[ gis, d']
          |
          d,-[ cis' e d]
          cis-[ d d, d']
          d,-[ d' e d]
          d-[ cis cis, cis']
          bis-[ cis cis, cis']
          ais-[ b b, b']
          |
          b,-[ b' cis b]
          ais-[ b b, b']
          b,-[ b' cis b]
          r32 cis-[ b, b']
          r32 b-[ a,! a'!]
          r32 a-[ gis, gis']
          |
          gis,-[ gis' fisis gis a gis gis, gis' gis, gis' a gis]
          a-[ gis gis, gis' a, a' b a gis fis fis, fis']
          |
          eis-[ fis fis, fis' gis fis fis, fis' eis fis fis, fis']
          r32 fis-[^( eis, eis'])
          r32 a-[^( gis, gis'])
          r32 cis-[^( b, b'])
          |
          \once \override Slur.height-limit = #3.5
          cis-[^( b, cis' b ais b b, b' b a a, a']
          b-[ a, b' a a gis, a' gis gis fis, gis' fis])
          |
          eis-[ fis fis, fis' gis fis fis, fis' eis, eis' fis eis]
          \once \override Slur.height-limit = #2.4
          \once \override Slur.eccentricity = #-0.8
          fis-[^( eis, fis' eis gis, gis' a gis b b, d d'])
          |
          \once \override Slur.height-limit = #3.5
          cis-[^( d d, d' e d d, d' d cis, d' cis])
          r32 d-[^( cis, cis'])
          r32 cis-[^( b, b'])
          r32 b-[^( a, a'])
          |
          \once \override Slur.height-limit = #3.1
          b-[^( a, b' a gis a a, a' a gis, a' gis])
          r32 gis-[^( gis, gis'])
          \ottava #1
          \set Staff.ottavation = #"8"
          \stemDown
          r32 gis'-[^( gis, gis'])
          r32 g-[^( g, g'])
          |
          r32 g-[^( g, g'])
          r32 g-[^( b, b'])
          r32 b-[^( a, a'])
          r32 a-[ g, g']
          r32 g-[ g, g']
          r32 g-[ g, <fis fis'>]
          |
          r32 fis'-[ e, e']
          r32 e-[ e, e']
          r32 e-[ e, <fis fis'>]
          r32 fis'-[ g, g']
          r32 g-[ g, g']
          r32 g-[ g, <fis fis'>]
          |
          fis'-[^( fis,) fis^( fis') a^( a,) a^( a') cis^( cis,) cis^( cis')]
          r32 cis-[^( cis, cis')]
          \stemNeutral
          r32 cis,-[_( cis, cis')]
          r32 cis'-[^( cis, cis')]
          |
          r32 cis,-[ cis, cis']
          % todo: fix this slur
          r32 cis'-[^( cis, cis']
          a-[ a,) a^( a')]
          a-[^( a,) a^( a')]
          \ottava #0
          fis-[^( fis,) fis^( fis,])
          <b eis gis>-[^( gis) <b eis gis>^( gis])
          |
          <b gis' b>8-[ <d, gis b> <cis fis a>]
          <b d eis a>8-[ <b d eis gis> <a dis fis>]
          |
          <<
            \relative c' {
              % Todo move note a bit to the right
              <a fis'>4.
            }
            \\
            \relative c' {
              d!8.-[_( bis16 cis bis])
            }
          >>
          <gis cis eis>8.-[^( gis'16 b d])
          |
          <dis, eis gis b dis>8-[_( <dis gis b dis> <cis a' cis>])
          <dis eis gis cis>-[_( <dis eis gis b> <dis fis a>])
          |
          <<
            \relative c' {
              <fis a>4^( <e gis>8) <gis, cis e gis>8 g'4
              |
              \slashedGrace g8 b'4^( a8)
              <a, a'>8-[ <g! g'> <b g'>16 <d fis>]
              |
              <d fis>8-[ <c e> <c e>16( f)]
              <a, c es f>16-[( <b d g>) 8]
              g16-[( <fis, fis'>])
              |
              % todo: need some grace keys here
              <e fis'>8-[ <a cis fis a> <cis fis a cis>]
              <cis eis gis cis>4 <cis fis a cis>8
              |
              <cis a' cis>8-[ <d g d'> <g, g'>]
              % TODO: should lower cis be played with left hand?
              <b b'>8-[ <cis, cis'>8 <eis eis'>]
              |
              <fis fis'>8-[ <cis' cis'>8. <gis! gis'!>16]
              <a a'>8-[ <a' a'>8. <eis eis'>16]
            }
            \\
            \relative c' {
              s8 bis16-[ cis bis cis] s8 <g bes e>8-[ <g b d>]
              |
              g'8\rest b8-[ a] s8 s8 g8
              |
              g8-[ g] g16-[ <a c es>] s8 s8 s8
            }
          >>
          |
          r4 r8 r8 r8
          <<
            \relative c''' {
              s8
              |
              d8\rest d8\rest a8\noBeam d8-[ e fis]
              |
              fis-[ a g]
              g8.-[ e16 cis d]
            }
            \\
            \relative c'' {
              \stemNeutral fis8^~
              |
              \stemDown
              fis16 8 8 16_~ 16 8 8 16
              |
              d8\rest d16\rest a'8._~ a16 a8 d,16\rest d8\rest
            }
          >>
          |
          dis''16-[ e]^~
          \hideTupletBracket
          \explicitTuplets
          \tupletDown
          \tuplet 6/4 { e16-[ g, fis g a ais] }
          \set subdivideBeams = ##t
          \tuplet 3/2 { cis b a }
          \tuplet 3/2 { g fis g }
          \tuplet 3/2 { gis a e }
          \set subdivideBeams = ##f
          |
          g16-[ fis8 a d16^~] d16-[ d8 e fis16]
          |
          \afterGrace fis4\startTrillSpan { eis16\stopTrillSpan fis }
          a16-[ g] g8^~ \tuplet 6/4 { g16-[ dis e g fis e] }
          |
          e8^~ \tuplet 6/4 { e16-[ bis cis e d! cis] }
          b32-[ gis d' cis bis cis e, g eis fis cis e]
          |
          d8-[ b'8. fis16]
          <<
            \relative c''' {
              g4 fis8
              |
              fis32-[ fis' cis d e d ais b] cis-[ b]
              \tuplet 3/2 { d-[ b gis] }
              a16-[ g^~] g16-[ 8 fis16]
              |
              % todo: consider using 8 instead of 16~16
              fis8.-[ 16^~ 16 16] 8.-[ b16^( 16) 16]
              |
              bis16-[ 8 16^~ 16 16]
              cis16-[ cis^~ cis cis^~ cis cis^~]
              |
              \voiceTwo
              \once \omit Flag
              cis16
            }
            \\
            \relative c'' {
              b16\rest <ais e'>8-[ 8 16]
              |
              <b d>8 b8\rest b8\rest b16\rest <ais e'>16_~ <ais e'>16-[ 8 16]
              |
              % TODO: double check this whole section
              <b d>16-[ fis fis] <fis b d>16-[ <fis ais e'>16 16]
              <fis b d>16-[ b b] <b d fis>16-[_( <b dis fis>16) 16]
              |
              <bis dis fis>16-[ 8 16 <bis dis a'>16 16]
              % todo fix these ties
              <cis gis'>16 <cis_~ gis'^~>16 16 <cis_~ gis'>16 <cis fis> <cis_~ fis^~>
              |
              <cis fis cis'>16-[ <bis bis'> <dis dis'> <cis cis'> <bis bis'> <cis cis'>]
              <e e'>8^( <dis_~ dis'^~>4)
              |
              \key dis \minor
              <dis dis'>16-[ <bis bis'> <dis dis'> <cis cis'> <bis bis'> <cis cis'>]
              <dis dis'>8^( <cis_~ cis'^~>4)
              |
              <cis cis'>16-[^( <ais ais'> <cis cis'> <b b'> <ais ais'> <b b'>])
              <b b'>16-[^( <gis gis'> <b b'> <ais ais'> <gis gis'> <a a'>])
              |
              <<
                \relative c''' {
                  a8-[ gis fis]
                  b8-[ a dis^~]
                  |
                  dis8-[ cis fis^~]
                  fis-[ eis b^~]
                  |
                  \voiceTwo
                  \stemUp
                  % TOdo: this tie is ugly, fix it
                  <b, eis gis b>8.
                }
                \\
                \relative c'' {
                  <a a'>8-[ <gis cis> cis_~]
                  cis16-[ cis gis' fis eis fis]
                  |
                  <dis fis>8-[ <cis fis> fis^~]
                  fis-[ eis <b_~ eis_~ gis_~>]
                  |
                  \stemUp
                  \once \omit Flag 
                  <b eis gis>8
                }
              >>
              b16-[ gis d']
              bis-[ cis gis dis' cis b]
            }
          >>
          ais,8 r8 \clef bass
          fis,,8_~4 16-[_( cis])
          |
          cis4. 4 8
          |
          ais8 r8 \clef treble
          <fis''''_~ fis'^~>8 4 16-[^( <cis cis'>])
          |
          <cis cis'>4. 4 8
          |
          <ais ais'>8 r8 \clef bass
          % todo: does this need a tie?
          fis,,8_~ 8-[ 8]
          \tupletUp
          \tuplet 3/2 { fis16\<-[ eis\> fis\!] }
          |
          cis4 4 4
          |
          ais8 r8 \clef treble
          <fis''''_~ fis'^~>8 8-[ 8]
          \implicitTuplets
          \tuplet 3/2 { <fis fis'>16\<-[ <eis eis'>\> <fis fis'>\!] }
          |
          <cis cis'>4 4 <cis_~ cis'^~>8
          \explicitTuplets
          \tupletDown
          \tuplet 3/2 { <cis_~ cis'^~>16-[ <cis cis'> <b b'>] }
          |
          <<
            \relative c''' {
              s8 ais4 b4. |
              cis8 cis4 dis4. |
              eis4 fis8 gis4 ais8 |
              b8 cis,8-[ dis] a4 gis8 |
              <fisis cis'>4. <ais dis>4 <dis, ais'>8 |
            }
            \\
            \relative c'' {
              % todo: should this really be in the same voice, as per M 52?
              % maybe we should instead do both in separate voices?
              <ais ais'>8\noBeam
              \hideTupletBracket
              \set subdivideBeams = ##t
              \implicitTuplets
              \tuplet 3/2 { ais16 gis' fis }
              \tuplet 3/2 { eis dis cis }
              \tuplet 3/2 { b cis ais }
              \tuplet 3/2 { b cis dis }
              \tuplet 3/2 { eis fis gis }
              |
              cis,8\noBeam
              \tuplet 3/2 { ais'16 gis fis }
              \tuplet 3/2 { e dis cis }
              \tuplet 3/2 { cis dis e }
              \tuplet 3/2 { dis eis fis }
              \tuplet 3/2 { gis ais b^~ }
              |
              \tuplet 3/2 { b b ais }
              \tuplet 3/2 { gis fis eis }
              \tuplet 3/2 { fis gis b }
              \tuplet 3/2 { gis b ais }
              \tuplet 3/2 { gis b ais }
              \tuplet 3/2 { ais b cis^~ }
              |
              \tuplet 3/2 { cis ais b }
              \tuplet 3/2 { g fis e }
              \tuplet 3/2 { dis e fis_~ }
              \tuplet 3/2 { fis eis dis }
              \tuplet 3/2 { bis cis dis }
              \tuplet 3/2 { eis cisis cis }
              |
              \set subdivideBeams = ##f
              eis4 dis8 dis4 cis8 |
            }
          >>
          |
          \stemNeutral
          <cis cis'>16^(-[ <ais ais'> <b b'> <dis dis'> <ais' ais'> <gis_~ gis'^~>)]
          <gis gis'>-[ <fis_~ fis'^~>] <fis fis'>-[^( <fis, ais fis'> <eis gis eis'> <e g cis e>])
          |
          <e g cis e>4
          <<
            \relative c'' {
              e16-[ dis]
            }
            \\
            \relative c'' {
              cis32-[ g b fis]
            }
          >>
          <d fis b d>4 r8
          |
          <<
            \relative c' {
              <cis fis ais cis^~>4 cis'16-[ bis]
            }
            \\
            \relative c'' {
              s4 ais32-[ fis a fis]
            }
          >>
          <d eis gis b>8 r8 r8
          |
          r4 r8 <g bes>4 \stemUp <g bes eis>8 \stemNeutral
          |
          <<
            \relative c'' {
              <g bes es>4 <g es'>8 <fis dis'>8 <eis cis'>4
            }
            \\
            \relative c' {
              es4 es8 dis8 cis4
            }
          >>
          |
          <cis, fis ais cis>4 ais'8 cis,4 cis'8
          |
          ais4 <ais cis ais'>8 <gis b gis'>4 <cis, gis' b cis>8
          |
          <cis fis ais cis>4 ais''8 cis,4 <cis cis'>8
          |
          <ais ais'>4
          <<
            \relative c''' {
              s8 cis8-[ <dis, dis'> <eis eis'>]
            }
            \\
            \relative c'' {
              <cis_~ cis'^~>8 8 cis'16-[ b ais bis]
            }
          >>
          |
          <<
            \relative c'' {
              <fis ais fis'>4. <gis eis' gis>4.
            }
            \\
            \relative c'' {
              s4. b8\rest b8\rest cis'8
            }
          >>
          |
          <ais' cis fis ais>4 <ais, cis ais'>8
          <cis ais' cis>8.-[ <d b' d>16 <e cis' e> <fis d' fis>]
          |
          <fis fis'>4 <d d'>8\noBeam <d d'>8-[^( <b b'> <cis cis'>])
          |
          <d d'>4 r8 r4 r8
          |
          <b b'>4. <d d'>4.
          |
          \key g \major
          <g_~ g'^~>4. <g g'>8-[ <b, d> <fis c'>16 <g b>]
          |
          <g b>8 r8 \clef bass
          \implicitTuplets
          g,,8_~ g-[ g] \tuplet 3/2 { g16-[_( fis g]) }
          |
          d4 d d
          |
          b8 r8 \clef treble
          <g''''_~ g'^~>8 8-[ 8] \tuplet 3/2 { <g g'>16-[^( <fis fis'> <g g'>]) }
          |
          <e e'>4 4 4
          |
          4 <e_~ e'^~>8 8-[ <e_~ e'^~>] \tuplet 3/2 { <e e'>16-[^( <dis dis'> <e e'>)] }
          |
          <d fis d'>4 4 <fis_~ fis'^~>8\noBeam \tuplet 3/2 { <fis fis'>16-[^( <eis eis'> <fis fis'>]) }
          |
          \key d \major
          <fis fis'>4 <fis_~ fis'^~>8-[ <fis fis'>16] r16 <fis_~ fis'^~>8-[ <fis fis'>16] r16
          |
          % todo: fingering was in first edition
          <fis fis'>16 \repeat unfold 5 { fis'16^(-[-4 fis]-3) } fis16\noBeam
          |
          \key a \major
          \stemUp cis,4_( a8) a_(-[ fis <cis eis gis>]) \stemNeutral
          |
          <a cis fis a>4 <ais cis fis ais>8 <b d fis b>4 <d fis b d>8
          |
          <d eis b' d>4 <cis fis a! cis>8\noBeam
          8-[ <b d gis b> <a dis fis a>]
          |
          <<
            \relative c' {
              <a fis' a>4 <gis eis' gis>8 <gis cis eis gis>8 gis'4
              |
              % todo is this a 16 grace?
              \slashedGrace b8 b'4 a8 a-[ g fis] |
              fis-[ e fis] fis-[ g8. <fis,, fis'>16]
            }
            \\
            \relative c' {
              dis8 cis4 s8 <g bes e>-[ <g bes d>]
              |
              b'8\rest b8_(-[ a]) a-[ g fis]
              |
              fis-[ e fis] fis-[ g8.] s16
              |
            }
          >>
          |
          <fis fis'>8-[ <a a'> <cis fis a cis>]
          <cis eis gis! cis>4 <cis fis a cis>8
          |
          <cis a' cis>8-[ <d g d'> <g, g'>]
          <b b'>-[ <cis, cis'> <eis eis'>16 <fis fis'>]
          |
          <<
            \relative c' {
              fis4 fis'8 4 cis8
              |
              e8-[^( d b]) b-[^( d b])
              |
            }
            \\
            \relative c {
              <fis ais e'>8. fis'8-[ fis16_~] fis-[ 8 8 16^~]
              |
              fis16-[ 8 <d eis gis> <d_~ eis_~ gis^~>16] 16-[ 8 8 16]
              |
            }
          >>
          |
          <<
            \relative c' {
              \tuplet 3/2 { <fis ais>16-[ fis' cis] }
              \hideTupletBracket
              \implicitTuplets
              \stemNeutral
              \tuplet 3/2 { ais'-[ fis cis'] }
              \tuplet 3/2 { fis,-[ g' fis] }
              \tuplet 3/2 { eis-[ fis e^~] }
              \tuplet 3/2 { e-[ cis ais] }
              \stemUp
              \tuplet 3/2 { g-[ fis e^~] }
              |
              \tuplet 3/2 { e-[ cis d] }
              \tuplet 3/2 { b'-[ fis d'^~] }
              \tuplet 3/2 { d-[ cis b] }
            }
            \\
            \relative c' {
              cis8 s2 cis'8
            }
          >>
          <b' d eis gis! b>4 8
          |
          <ais_~ cis_~ fis^~ ais^~>4. 4 <ais_~ cis_~ fis^~ ais^~>8
          |
          4 <fis'_~ ais^~ fis'^~>8 4 <fis_~ ais^~ fis'^~>8
          |
          8 <ais_~ cis^~ ais'^~>4 4 cis,8
          |
          4 a8 a8-[^( fis <cis eis gis>]
          |
          <cis fis a>4 <ais cis fis ais>8) <b d fis b>4 <cis fis ais cis>8
          |
          <d fis b d>8 <d gis b d>4 4 16-[_( <cis ais' cis>16])
          |
          <cis ais' cis>2.
          |
          <ais' fis' cis'>2.
          |
          4. <ais, fis' cis'>4.\pp
          |
          \relative c' { <ais fis' cis'>4\ppp\arpeggio } r8 r4
          \bar "|."
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
          <cis eis gis cis>4 <fis a cis>8 8-[ a <gis b>16 <fis a>16] |
          <<
            \relative c, {
              cis8 eis fis gis8.-[ a16 b bis] |
              s2. |
              s2. |
              a'8\rest <a fis>8-[ <eis gis>] s4. |
              s2. |
              s4. <g d'>8 g fis |
              s2. |
              cis'8 d g, b cis, eis
            }
            \\
            \relative c, {
              % Note: purposely left un-merged.
              cis2. |
              \stemNeutral
              <cis_~ cis'^~>4. 16-[ cis'^( eis gis b d)] |
              <cis,, cis'>8 <eis cis' eis>8 <fis cis' fis>8
              <gis cis gis'>8.-[ <a a'>16 <b b'>16 <bis bis'>16] |
              \stemDown cis4 cis8 <cis eis gis>8 <cis e g bes>8 <d g b>8 |
              <g, d' b'>4. <b g' d'>4. |
              <c g' e'>4.
              b4 d8 |
              <d fis>8 <cis fis a>8 <cis fis a cis>8 <cis eis gis! cis>4 <fis a cis>8 |
              <fis a>8 b,4 g8\rest s8 g8\rest
            }
            \\
            \relative c {
              s2. |
              s2. |
              s2. |
              s2. |
              s2. |
              s2. |
              s2. |
              s4 s8 s8 \voiceOne \stemDown
              \once \override Voice.Stem.length = #3.8
              cis4
            }
            \\
            \relative c, {
              s2. |
              s2. |
              s2. |
              s2. |
              s2. |
              s2. |
              s2. |
              s4 s8 s8 \voiceOne \stemDown cis8
            }
          >> |
          r8
          % Exactly as original edition.
          fis,16-[ r16 <cis' fis a cis>16-.] r16
          <cis fis a cis>16-.-[ r16 fis,16-. r16 <cis' fis a cis>16-.] r16 |
          <cis fis a cis>16-[ r16 fis,16 r16 <cis' fis a cis>16] r16
          <cis fis a cis>16-[ r16 fis,16 r16 <cis' fis a cis>16] r16 |
          <cis eis gis b cis>16-[ r16 gis16 r16 <eis' gis b d>16] r16
          <eis gis b d>16-[ r16 gis,16 r16 <eis' gis b d>16] r16 |
          <eis gis b d>16-[ r16 gis,16 r16 <eis' gis b d>16] r16
          <eis gis b d>16-[ r16 gis,16 r16 <eis' gis b cis>16] r16 |
          <cis fis a cis>16-[ r16 fis,16 r16 <cis' fis a cis>16] r16
          <cis fis a cis>16-[ r16 fis,16 r16 <cis' fis a cis>16] r16 |
          <cis eis gis b cis>16-[ r16 gis16 r16 <eis' gis b d>16] r16
          <eis gis b d>16-[ r16 gis,16 r16 <eis' gis b d>16] r16 |
          <eis gis b d>16-[ r16 gis,16 r16 <eis' gis b d>16] r16
          <eis gis b d>16-[ r16 gis,16 r16 <eis' gis b cis>16] r16 |
          <fis a cis>16-[ r16 a,16 r16 <fis' a cis>16] r16
          <eis gis b d>16-[ r16 gis,16 r16 <eis' gis b cis>16] r16 |
          <fis a cis>16-[ r16 a,16 r16 <cis fis a cis>16] r16
          <cis eis gis b cis>16-[ r16 gis16 r16 <gis' b cis>16] r16 |
          <a cis>16-[ r16 a, r16 <ais' cis>16] r16
          <ais cis>16-[ r16 ais, r16 <b' dis>16] r16 |
          <b dis>16-[ r16 b, r16 <cis' e>16] r16
          <cis e>16-[ r16 cis, r16 <dis' fis>16] r16 |
          <dis fis>16-[ dis, <e' g> e, <fis' a>16 fis,]
          \clef treble
          <g' b>16-[ g, <gis' b> gis, <a' cis> a,] |
          <a' cis>8
          % Note: first edition stays in treble a bit longer.
          % Either is usable.
          \clef bass
          <<
            \relative c' {
              cis8 dis^~ dis16 dis fis e dis e |
              d8 cis4^~ cis16 cis e d c d |
              \key b \minor
              <bis dis>8-[ <cis e> d16 e] e16 cis e d c d |
              s4. e,16 cis e d c d |
              d gis, b a gis a <a e> gis, bes a gis a |
              a16 e''-[ cis g' e bes'] gis-[ a e b' a g] |
              fis b gis a fis b gis a fis b fis a |
              e a fis a g! a g a fis a e a |
              fis b gis a fis b gis a fis b fis a |
              e a fis a g! a g a fis a e a |
              \set subdivideBeams = ##t
              \hideTupletBracket
              \explicitTuplets
              \tuplet 3/2 { fis b a }
              \tuplet 3/2 { gis b a }
              \tuplet 3/2 { fis b a }
              \implicitTuplets
              \tuplet 3/2 { gis b a }
              \tuplet 3/2 { fis b a }
              \tuplet 3/2 { fis bes a }
              |
              \tuplet 3/2 { e b'! a }
              \tuplet 3/2 { fis b a }
              \tuplet 3/2 { gis b a }
              \tuplet 3/2 { gis b a }
              \tuplet 3/2 { fis b a }
              \tuplet 3/2 { e b' a }
              |
              \tuplet 3/2 { fis b a }
              \tuplet 3/2 { gis b a }
              \tuplet 3/2 { fis b a }
              \tuplet 3/2 { gis b a }
              \tuplet 3/2 { fis b a }
              \tuplet 3/2 { fis bes a }
              |
              \tuplet 3/2 { e b'! a }
              \tuplet 3/2 { fis b a }
              \tuplet 3/2 { gis b a }
              \tuplet 3/2 { gis b a }
              \tuplet 3/2 { fis b a }
              \tuplet 3/2 { e b' a }
              |
              \tuplet 3/2 { fis16 a g }
              \tuplet 3/2 { fis g a }
              \tuplet 3/2 { b cis d }
              e8^~\noBeam
              \tuplet 3/2 { e16 d cis }
              \tuplet 3/2 { b a g }
              |
              \tuplet 3/2 { cis e d }
              \tuplet 3/2 { a b c }
              \tuplet 3/2 { d e fis }
              g8^~\noBeam
              \tuplet 3/2 { g16 fis e }
              \tuplet 3/2 { d c b }
              |
              \tuplet 3/2 { e cis! d }
              \tuplet 3/2 { e fis g }
              \tuplet 3/2 { fis e d }
              \clef treble
              \tuplet 3/2 { bes' e, fis }
              \tuplet 3/2 { g a bes }
              \tuplet 3/2 { a g fis }
              |
              \tuplet 3/2 { g bes cis }
              \tuplet 3/2 { c b c }
              \tuplet 3/2 { b a g }
              \tuplet 3/2 { b, cis d }
              \tuplet 3/2 { f e d }
              \tuplet 3/2 { cis dis e }
            }
            \\
            \relative c' {
              a4 a4. |
              a4. a4. |
              a4 ais8 8 b gis |
              <gis d'>8 <g cis> <fis a d> ais,8 b gis |
              eis8 fis8. f16 s4 s8 |
              s2. |
              d'4._~ d4 d8 |
              cis8_( d e) e_( d cis) |
              d4._~ d4 d8 |
              cis8_( d e) e_( d cis) |
              d4._~ d4 d8 |
              cis8 d e e d cis |
              d4._~ d4 d8 |
              cis8 d e e d cis |
              d4. e4. |
              fis4. g4. |
              a4 b8 cis4 dis8 |
              e8-[ f8] \implicitTuplets \tuplet 3/2 { g8-[ g,16] } gis4 g8
            }
          >>
          <fis a>4. <dis fis>4 <b dis fis>8 |
          <<
            \relative c' {
              <e g>8.-[ <g, b>16] a'16-[ g] fis-[ gis b a]
              \clef bass
              <a,,, a'>16 <g g'>32 <fis fis'>
            }
            \\
            \relative c' {
              s8. s16 b8 a4 
            }
          >> |
          fis,,32-[ a c es] fis-[ a c es] fis-[ c' g b] \stemUp <g, g'>4 \stemNeutral r8 |
          <<
            \relative c, {
              \stemUp
              \tuplet 3/2 { a16 d fis }
              a32-[ d fis a]
              d,-[ fis d f]
              <cis e>8 \stemNeutral <ais cis e g>8.-[^( <b dis fis>16]) |
            }
            \\
            \relative c {
              \mergeDifferentlyDottedOn
              s8 a8.-[ b16]
            }
          >>
          <b dis fis>4 <b dis fis b>8 4 8 |
          <b, b'>8 <fis fis'>4 <g g'>8 <a a'>4 |
          <d, d'>4 fis''8 a,4 a'8 |
          fis4 <a,, a'>8 <b a' b>4 <cis a' cis>8 |
          <d a' d>4 \clef treble
          fis''8 a,4 \clef bass
          <fis, a fis'>8 |
          % Beams as per original edition.
          <a a'>4 <fis_~ a^~ fis'^~>8 8-[ <e a e'>8 <a, a'>8] |
          <d a'>4. <a a'>4. |
          4 g'16-[ fis] e-[ d]
          \explicitTuplets
          \tupletUp
          \tuplet 3/2 { cis-[ e a] }
          \tuplet 3/2 { cis-[ e a] }
          \implicitTuplets
          |
          <fis, fis'>4. <a a'>4. |
          <d d'>4. <b b'>4 <g g'>8 |
          <e e'>4 <e' g>8 <cis e>4 <b d>16-[ <ais cis>] |
          ais16-[ cis fis ais cis fis]
          % todo: check stem and voices
          <bis, dis fis gis>4. |
          \key fis \minor
          <gis, gis'>4 <eis eis'>8 8-[ <cis cis'> <dis dis'>] |
          <eis eis'>4 <eis' gis>8 <fis a>4 <a cis>8 |
          <a cis>4 <gis bis>8 <gis bis>-[ <bis dis> <cis eis>] |
          \key es \major
          \clef treble
          d16 f as d f as <d, f as bes>4. |
          \clef bass
          g,,,16 bes es g bes es bes, es g bes as f |
          es16-[ g bes es] as,,-[ as'] ces,-[ es as ces] des,-[ des'] |
          bes,-[ des ges bes] des,-[ des'] es,-[ g bes des] fisis,-[ ais!] |
          % TODO double check
          gis-[ b dis gis] \clef treble bis,-[ dis] cis-[ e gis cis] eis,-[ gis] |
          \clef bass
          \key a \minor
          fis,-[ ais cis fis] dis,,-[ dis'] fis,-[ ais dis fis] gis,-[ gis'] |
          e,-[ gis cis e] gis,-[ gis'] a,-[ cis e a] cis,-[ cis'] |
          <<
            \relative c' {
              c16\rest fis,8. \stemNeutral fisis16-[ ais]
            }
            \\
            \relative c {
              dis4
            }
          >>
          g16-[ b dis gis] bis,-[ dis] |
          \clef treble
          \stemUp
          c-[ eis g c] eis,-[ g] f-[ a c f] b,,-[ <b b'>] |
          \stemNeutral
          \key fis \minor
          \clef bass
          r16 <gis gis'>16
          r16 <eis eis'>16
          r8 r16  <cis cis'>16
          r16 <cis, cis'>16 r8 |
          r16 <cis cis'>16
          r16 cis r8 r16
          cis r cis\noBeam
          \once \override Voice.Stem.length = #7.0
          cis8 |
          \stemDown
          cis8-[ 8 <cis gis'>]
          \stemUp
          8-[ 8 <fis, cis' fis>8] |
          8\noBeam <cis' fis cis'>8-[ 8] 8-[ 8 <cis eis cis'>] |
          <cis fis cis'>-[ 8 <d fis d'>] 8-[ 8 <b fis' b>] |
          8\noBeam \stemDown <b' fis' b>8-[ <a fis' a>] 8-[ <gis cis gis'> <fis cis' fis>] |
          <eis cis' gis'>8-[ 8] <eis' gis b cis>\noBeam <eis gis b d>-[ 8 8] |
          8\noBeam <eis, gis eis'>8-[ 8] 8-[ <fis a fis'> <gis b gis'>] |
          8\noBeam \clef treble \stemNeutral
          <gis' b d eis>8-[ 8] 8-[ <a cis fis>] <b d fis>16-[ <bis dis fis>] |
          r16 <bis d fis gis>16 r16 <bis d fis>
          r16 <bis d fis gis>16 r16 <bis d fis>
          r16 <bis d fis a>16 r16 \clef bass <bis, dis fis a>16
          |
          r16 <cis fis a>
          r16 <cis fis a bis>
          r16 <cis fis a cis>
          % todo: check this bis
          <cis eis gis cis>8-[ <cis eis gis> <cis gis' bis>]
          |
          <cis gis' b>8-[ 8 <cis fis a>]
          8-[ <b d eis gis> <a bis dis fis>]
          |
          \stemDown
          8-[ 8 <gis cis eis>]
          8
          <<
            \relative c {
              eis16-[ <eis gis>] <gis b>-[ <b d>]
            }
            \\
            \relative c {
              cis8-[ 8]
            }
          >>
          |
          <cis b' d>8-[ 8 <cis a' cis>]
          8-[ <cis gis' b> <cis fis a>]
          |
          8-[ <cis fis a bis> <cis eis gis cis>]
          8-[ 8 <cis e g bes cis>]
          |
          <d g b d>8-[ 8 8]
          8-[ <g b d>8\< 8]
          |
          <g c e>8-[ 8\> 8]
          <g b d>8-[ <d g b d>\! <d fis a d>]
          |
          <d fis a d>8-[ <cis fis a cis>8 8]
          <cis eis gis! cis>8-[ 8 8]
          |
          8-[ 8]
          <fis a c>8\noBeam <fis a c>8\noBeam
          <a c>16-[ <a, cis a'> <gis cis gis'> <fis cis' fis>]
          |
          \stemNeutral <cis cis'>16\noBeam cis8-[ eis fis16_~]
          % TODO: is this supposed to be a 16,
          % or an 8 followed by a tuplet 3/2 16 16 16?
          fis16-[_( gis8 a16 b bis])
          |
          <cis, cis'>16 <bis bis'> <cis cis'> <bis bis'> <cis cis'> <bis bis'>
          <cis cis'> eis' gis eis gis b
          |
          % TODO: isolate first note, nobeam it?
          <cis, eis gis b>16-[ <cis, cis'>8 <eis eis'>
          % TODO: should this be a doulbe tie?
          <fis_~ fis'^~>16] <fis fis'>16-[ <gis gis'>8 <a a'>16 <b b'>16 <bis_~ bis'^~>16]
          |
          <bis bis'>16-[ <cis cis'>] <bis, bis'>16-[_( <cis cis'> <bis bis'> <cis cis'>])
          <bis bis'>-[_( <cis cis'>])
          cis16-[ bes' d, b']
          |
          \stemNeutral
          % Todo: flip stems of these beams?
          g,16-[( g' d' g, d' g,])
          b,-[( g' g' g, g' g,])
          |
          c,-[( g' g' g, g' g,])
          g,-[( g' g' g,]) g'32-[( g,) <d fis>16]
          |
          <d fis>16-[ a' <bis, fis' a> cis' <bis, fis' a> cis']
          <cis, eis gis>16-[ cis' <cis, eis gis> cis' <fis, a> cis']
          |
          <fis, a>16-[ cis' <b, b'> d' <b, g'> b']
          <b, b'>16-[ b' cis, cis' cis, eis]
          |
          fis,16-[ <cis' fis>16 eis, <cis' gis'> eis, <cis' gis'>]
          fis,16-[ <cis' a'> cis <fis cis'> cis cis']
          |
          r8
          % TODO double check these chords
          % TODO maybe split chords between right/left?
          <d, d'>16-[ r16 <gis' d' fis a>] r16 <gis d' fis a>-[ r16 <d, d'> r16 <gis' d' fis a>] r16
          |
          <gis d' fis a>16 r16 <d, d'> r16 <gis' d' fis a> r16 <gis d' fis a> r16 <d, d'> r16 <gis' d' fis a> r16
          |
          <gis d' fis a>-[ r16 <d, d'> r16 <gis' d' fis a>] r16
          <gis d' fis a>-[ r16 <d, d'>] r16 <gis' d' fis a> r16
          |
          <a cis e a>16 r16 <cis,, cis'> r16 <a'' cis e a> r16
          <a cis e a>16 r16 <cis,, cis'> r16 <a'' cis e a> r16
          |
          <a d fis a>16 r16 <d,, d'> r16 <fis' a d fis>16 r16
          <fis a d fis>16 r16 <cis, cis'> r16 <fis' a d fis>16 r16
          |
          <fis ais cis e fis>16 r16 <ais,, ais'> r16 <g'' ais cis e g>16 r16
          <g ais cis e g>16 r16 <ais,, ais'> r16 <g'' ais cis e g>16 r16
          |
          <g ais cis e g>16 r16 <ais,, ais'> r16 <g'' ais cis e g>16 r16
          <fis ais cis e fis>16 r16 <ais,, ais'> r16 <fis'' ais cis e fis>16 r16
          |
          <fis b d fis>16 r16 <b,, b'>16 r16 <fis'' b d fis>16 r16
          <fis ais e' fis>16 r16 <cis, cis'>16 r16 <fis' ais e' fis>16 r16
          |
          <fis b d fis>16 r16 <b,, b'>16 r16 <fis'' b d fis>16 r16
          <fis a e' fis>16 r16 <cis, cis'>16 r16 <fis' a e' fis>16 r16
          |
          <fis b d fis>16 r16 <d, d'>16 r16 <cis' e cis'>16 r16
          <b fis' b>16 r16 <b, b'>16 r16 <a' a'>16 r16
          |
          <g g'> r16 <g, g'> r16 <fis' fis'> r16
          <eis eis'>-[ <eis' eis'> <eis, eis'> <eis' eis'> <dis, dis'> <dis' dis'>]
          |
          <cis, cis'>8 \clef treble
          <<
            \relative c' {
              <eis g>8-[ <fis ais^~>] <fisis ais>16-[^( 16 <ais cis> <gis b> <fisis a> <gis b>])
              |
              \key dis \minor
              % todo: fix this tie
              <fis ais>-[ <fis a>] <eis_~ gis^~>4 16-[^( 16 <gis b> <fis ais> <eis gis> <fis ais>])
              |
              <disis fisis>8-[ <eis gis>8 8] gis16-[ eis gis fisis eis fis]
              |
              fis16-[ dis fis eis fis cis]
              \clef bass
              fis16-[ eis fis8] s8
              |
              b,16-[ eis, gis fis dis cis]
              bis16-[ cis]
            }
            \\
            \relative c' {
              cis4 4.
              |
              4. 4.
              |
              cis4 cisis8 cisis8-[ dis bis]
              |
              bis-[ b ais]
              <gis cis>8-[ <fis cis'>8 <b, b'>]
              |
              b8-[ ais a] gis8
              \stemUp
              dis16-[ cis bis cis]
            }
          >>
          |
          \stemDown
          cis16-[ gis'' eis b' gis d']
          bis-[ cis gis dis' cis b]
          \stemNeutral
          |
          <<
            \relative c' {
              ais16-[ dis bis cis ais dis]
              bis-[ cis ais dis ais cis]
              |
              gis-[ cis ais cis b! cis]
              b-[ cis ais cis gis cis]
              |
              ais16-[ dis bis cis ais dis]
              bis-[ cis ais dis ais cis]
              |
              gis-[ cis ais cis b! cis]
              b-[ cis ais cis gis cis]
              |
              \set subdivideBeams = ##t
              \hideTupletBracket
              \explicitTuplets
              \tuplet 3/2 { ais dis cis }
              \tuplet 3/2 { bis dis cis }
              \tuplet 3/2 { ais dis cis }
              \implicitTuplets
              \tuplet 3/2 { bis dis cis }
              \tuplet 3/2 { ais dis cis }
              \tuplet 3/2 { ais d cis }
              |
              \tuplet 3/2 { gis dis' cis }
              \tuplet 3/2 { ais dis cis }
              \tuplet 3/2 { b dis cis }
              \tuplet 3/2 { b dis cis }
              \tuplet 3/2 { ais dis cis }
              \tuplet 3/2 { gis dis' cis }
              |
              \tuplet 3/2 { ais dis cis }
              \tuplet 3/2 { bis dis cis }
              \tuplet 3/2 { ais dis cis }
              \tuplet 3/2 { bis dis cis }
              \tuplet 3/2 { ais dis cis }
              \tuplet 3/2 { ais d cis }
              |
              \tuplet 3/2 { gis dis' cis }
              \tuplet 3/2 { ais dis cis }
              \tuplet 3/2 { b dis cis }
              \tuplet 3/2 { b dis cis }
              \tuplet 3/2 { ais dis cis }
              \tuplet 3/2 { gis dis' cis }
              |
              \tuplet 3/2 { ais16 dis cis }
              \tuplet 3/2 { ais b cis }
              \tuplet 3/2 { dis eis fis }
              gis8_~\noBeam
              \tuplet 3/2 { gis16 fis eis }
              \tuplet 3/2 { dis cis b }
              |
              \clef treble
              \tuplet 3/2 { eis16 gis fis }
              \tuplet 3/2 { cis dis e }
              \tuplet 3/2 { fis gis ais }
              b8_~\noBeam
              \tuplet 3/2 { b16 ais gis }
              \tuplet 3/2 { fis eis dis }
              |
              \tuplet 3/2 { cis eis fis }
              \tuplet 3/2 { gis ais b }
              \tuplet 3/2 { ais gis fis }
              \tuplet 3/2 { eis gis ais }
              \tuplet 3/2 { b cis dis }
              \tuplet 3/2 { cis b ais }
              |
              \tuplet 3/2 { e' cis dis }
              \tuplet 3/2 { e fis, g }
              \tuplet 3/2 { fis e dis }
              \tuplet 3/2 { dis eis fis }
              \tuplet 3/2 { ais g fis }
              \tuplet 3/2 { cis eis g }
              |
            }
            \\
            \relative c {
              eis4._~ 4 8
              |
              eis8-[_( fis gis] gis-[ fis eis])
              |
              fis4._~ 4 8
              |
              % todo: needs a slur?
              eis8-[ fis gis] gis-[ fis eis]
              |
              fis4._~ 4 8
              |
              eis8-[ fis gis] gis-[ fis eis]
              |
              fis4._~ 4 8
              |
              eis8-[ fis gis] gis-[ fis eis]
              |
              fis4. gis4.
              |
              ais4. b4.
              |
              cis4 dis8 eis4 fis8
              |
              gis8\noBeam
              \implicitTuplets
              \tupletDown
              \tuplet 3/2 { ais16 ais,16^~ ais16 }
              b8\noBeam bis4 b8
              |
            }
          >>
          <ais' cis>4. <fisis ais>4 <dis fisis>8
          |
          <<
            \relative c'' {
              \set subdivideBeams = ##f
              ais16-[ fisis gis dis \clef bass cis b]
              s8
              ais,16-[ cis^~] cis32-[ b ais b]
              |
              s2 s4
              |
              s4
              fis'32-[ ais fis a]
            }
            \\
            \relative c' {
              b8\rest
              gis8-[ b,]
              <cis ais'>
              cis,16-[ cis_~] cis32-[ b ais b]
              |
              ais32-[ cis e g] ais-[ cis e g] <ais cis>-[ e' b dis]
              <b, b'>4 d8\rest
              |
              \set subdivideBeams = ##t
              \hideTupletBracket
              \tuplet 3/2 { cis,16 fis ais }
              \tuplet 3/2 { cis fis ais }
              \set subdivideBeams = ##f
              cis,16-[ dis]
            }
          >>
          <d, eis! gis b>8 <d f aes ces>8.-[ <es g bes>16]
          |
          <es g bes>4 <es g bes es>8 4 8
          |
          <es, es'>8 <bes bes'>4 <b b'>8 <cis cis'>4
          |
          <fis, fis'>4 ais''8 cis,4 cis'8
          |
          ais4
          <cis,,_~ cis'^~>8 8-[ <dis dis'>16 <cis cis'> <dis cis' dis> <eis cis' eis>]
          |
          <fis cis' fis>4 \clef treble
          ais''8 cis,4 \clef bass
          <ais,, ais'>8
          |
          <cis cis'>8-[ <cis' cis'> <ais cis ais'>]
          <gis cis gis'>4 <cis, cis'>8
          |
          <fis cis' fis>4. <cis cis'>4.
          |
          <fis, fis'>4 <fis' fis'>8 <fis fis'>4 <fis fis'>16.-[ <e e'>32]
          |
          <d d'>4. <fis fis'>4.
          |
          <b b'>4 r8 r8 <b b'>8-[ <g g'>16 <d d'>16]
          |
          <d d'>4 <b b'>8 8-[_( <g g'> <ais ais'>)]
          |
          \key e \minor
          <b b'>8-[ <b' b'> <c c'>]
          <d b'>8-[ <g b>^( <d a' c>16 <g b>)]
          |
          <<
            \relative c' {
              \set subdivideBeams = ##t
              \hideTupletBracket
              \explicitTuplets
              \tuplet 3/2 { b e d }
              \tuplet 3/2 { cis! e d }
              \tuplet 3/2 { b e d }
              \implicitTuplets
              \tuplet 3/2 { cis e d }
              \tuplet 3/2 { b e d }
              \tuplet 3/2 { b es d }
              |
              \tuplet 3/2 { a e'! d }
              \tuplet 3/2 { b e d }
              \tuplet 3/2 { c! e d }
              \tuplet 3/2 { c e d }
              \tuplet 3/2 { b e d }
              \tuplet 3/2 { ais e' d }
              |
              \tuplet 3/2 { b e d }
              \tuplet 3/2 { cis! e d }
              \tuplet 3/2 { b e d }
              \tuplet 3/2 { cis e d }
              \tuplet 3/2 { b e d }
              \tuplet 3/2 { b es d }
              |
              \tuplet 3/2 { a e'! d }
              \tuplet 3/2 { b e d }
              \tuplet 3/2 { c! e d }
              \tuplet 3/2 { c e d }
              \tuplet 3/2 { b e d }
              \tuplet 3/2 { ais e' d }
              |
              \tuplet 3/2 { ais e' d }
              \tuplet 3/2 { b e d }
              \tuplet 3/2 { b e d }
              \tuplet 3/2 { b e d }
              \tuplet 3/2 { b f' d }
              \tuplet 3/2 { b f' d }
              |
              % todo: break these up as per original edition?
              \tuplet 3/2 { d fis e }
              \tuplet 3/2 { d fis e }
              \tuplet 3/2 { d fis e }
              \tuplet 3/2 { d fis e }
              \tuplet 3/2 { d fis e }
              \tuplet 3/2 { d eis fis }
              |
              \key d \major
              \tuplet 3/2 { d g fis }
              \tuplet 3/2 { dis gis fis }
              \tuplet 3/2 { dis a' fis }
              \tuplet 3/2 { dis,-[ a' fis] }
              \tuplet 3/2 { dis'-[ a' fis] }
              \tuplet 3/2 { dis,-[ a' fis] }
            }
            \\
            \relative c' {
              g4._~ g4 g8
              |
              fis8-[ g a]
              a-[ g fis]
              |
              g4._~ g4 g8
              |
              fis8-[ g a]
              a-[ g fis]
              |
              fis8-[_( g gis])
              gis-[ gis gis]
              |
              a8-[_( ais b])
              b-[ b b]
              |
              b-[ bis] bis\noBeam
              bis,\noBeam
              bis'\noBeam
              bis,\noBeam
            }
          >>
          |
          bis32-[ a' <dis, fis> a']
          bis,,32-[ a' <dis, fis> a']
          bis32-[ a' <dis, fis> a']
          \tupletDown
          \explicitTuplets
          \tuplet 6/4 { bis,,32-[ a' <dis, fis> a' <dis, fis> a'] }
          \tuplet 6/4 { bis32-[ a' <dis, fis> a' <dis, fis> a'] }
          \tuplet 6/4 { bis,,32-[ a' <dis, fis> a' <dis, fis> a'] }
          \key a \major
          |
          cis4 a8 a-[ fis <cis gis'>]
          |
          <fis, fis'>4 8 <b, b'>4 8
          |
          <gis gis'>4 <a a'>8 8-[ <b b'> <bis bis'>]
          |
          <bis bis'>8-[ <cis cis'>8. <bis bis'>16]
          <cis cis'>8-[ 8 <d d'>]
          |
          <g, d' b'>4.
          <b g' e'>4.
          |
          <c g' e'>4.
          <b g' d'>8
          <<
            \relative c {
              g8.-[ fis16]
            }
            \\
            \relative c, {
              b8\rest d8
            }
          >>
          |
          <d fis>8-[ <cis a'> <cis cis'>]
          <cis cis'>4 <fis cis'>8
          |
          <<
            \relative c {
              cis8-[ d g,]
              b8\noBeam cis,8-[ eis16 fis]
            }
            \\
            \relative c, {
              fis8 b,4_~ b8 cis8-[ 8]
            }
          >>
          |
          <cis fis>8-[ <fis, fis'> <ais ais'>]
          <cis cis'>8-[ <fis, fis'> <ais ais'>]
          |
          <b b'>-[^( <fis fis'> <b b'>] <d d'>-[ <fis, fis'> <b b'>])
          |
          <cis cis'>8-[ <fis, fis'> <ais ais'>]
          <cis cis'>-[ <fis, fis'> <ais ais'>]
          |
          <b b'>-[ <fis fis'> <b b'>]
          \set subdivideBeams = ##f
          \hideTupletBracket
          \explicitTuplets
          \tupletUp
          \tuplet 6/4 { <d d'>16-[ fis, b d fis b] }
          \tuplet 3/2 { d-[ fis, d'] }
          |
          \set subdivideBeams = ##t
          \implicitTuplets
          % todo connect disconnect the beams or something
          \tuplet 3/2 { fis, cis' fis, }
          \tuplet 3/2 { fis' cis fis }
          \tuplet 3/2 { fis, cis' fis, }
          \tuplet 3/2 { fis' cis fis }
          \tuplet 3/2 { cis fis, cis' }
          \tuplet 3/2 { fis cis fis }
          |
          \tuplet 3/2 { cis, fis cis }
          \tuplet 3/2 { cis' fis, cis' }
          \tuplet 3/2 { cis, fis cis }
          \tuplet 3/2 { cis' fis, cis' }
          \tuplet 3/2 { cis, fis cis }
          \tuplet 3/2 { cis' fis, cis' }
          |
          \tuplet 3/2 { fis, cis fis }
          \tuplet 3/2 { fis, cis' fis, }
          \tuplet 3/2 { fis' cis fis }
          \tuplet 3/2 { fis, cis' fis, }
          \tuplet 3/2 { fis' cis fis }
          \tuplet 3/2 { cis fis cis }
          |
          \stemNeutral
          cis'8-[ cis' a!]
          a-[ fis <cis eis gis>]
          |
          <fis a>8
          % todo check precedents for this
          <fis,_~ fis'^~>4 8-[ <b, b'> <fis fis'>8]
          |
          b8 <eis, eis'>4 4 16-[_( <fis fis'>])
          |
          4. \stemDown <fis'_~ cis'^~ ais'^~>4.
          |
          4. \stemNeutral <fis, cis' ais'>4.
          |
          4. 4.
          |
          \relative c,, { <fis cis' ais'>4\arpeggio } r8 r4
        }
      }
    >>
    \layout {
      \context {
        \Score
        \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/16)
        \consists #Span_stem_engraver
      }
    }
    \midi {
      \tempo 4 = 60
    }
  }
}

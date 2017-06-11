%===========================================================================
%    Piano Sonata Op.106 (L.Beethoven) - IV
%===========================================================================
%
%    (C) 2016-2017, Michiel Sikma <michiel@sikma.org>
%    Licensed under CC BY-SA 4.0.
%
%---------------------------------------------------------------------------

\version "2.19.42"
\include "sonata-op106-includes.ily"

%---------------------------------------------------------------------------
%    IV. Largo - Allegro risoluto
%---------------------------------------------------------------------------

four-section-one = {
  \key f \major
  \time 4/4
  \tempo "Largo" 16 = 76
}
% Per la misura si conta nel Largo sempre quattro semicrome, ciò è

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
        \clef treble \relative c {
          \four-section-one
          \override Tie.minimum-length = #2.75
          \autoBeamOff
          \tuplet 3/2 {
            r32 r
            \once \override Slur.positions = #'(1 . 2)
            f_( \noBeam
          }
          \tuplet 3/2 { f')_\markup { \italic "dolce" } r r }
          % Set the exact duration of this measure. Although the
          % time signature is 4/4, this first measure has an undeterminable
          % length. Based on the notes, it's precisely 140 64th notes long.
          \set Timing.measureLength = #(ly:make-moment 140/64)
          <<
            \relative c'' {
              \tuplet 3/2 { f32-[ f'^~ f^~] }
              % Hiding the stem and flag, since the other voice
              % will take care of proper display.
              \stemDown
              \single \hide Stem
              \single \hide Flag
              f\fermata
            }
            \\
            \relative c'' {
              f16_~ <f f'>16.
            }
          >>
          <f'_~ f'^~>32 16
          r16 r16.
          <f_~ aes_~ des^~ f^~>32 16
          r16 r16.
          <f_~ bes_~ des^~ f^~>32 16
          r16
          \key bes \major
          r16.
          <ges_~ bes_~ des^~ ges^~>32 <ges_~ bes_~ des^~ ges^~>8 32\fermata
          \autoBeamOn
          <<
            \relative c'' {
              \stemDown des32-[^(-2 ges-4
              \set stemRightBeamCount = #1
              des
              \set stemLeftBeamCount = #1
              ges des ges bes,)] \stemUp es4-5
              \bar "" \break
              es16-[^( des8\finger \markup \tied-finger-up #"4" #"5" ces16-4])
              bes16-[-3 es aes,^~-3 aes32. bes64]
            }
            \\
            \relative c'' {
              s8. s32
              r32 ges_(-[ ces
              \set stemRightBeamCount = #1
              ges
              \set stemLeftBeamCount = #1
              ces ges ces es,)]
              f-[ aes f
              \set stemRightBeamCount = #1
              aes
              \set stemLeftBeamCount = #1
              f aes f aes]
              ges16\< <ges beses> f_~\> f32. ges64\!
            }
          >>
          % End of the first measure.
          |
          <bes, des ges bes>16\p r16 r16. <bes_~ es_~ ges^~ bes^~>32 16 r16 r16.
          % Modify the second measure's length as well.
          \set Timing.measureLength = #(ly:make-moment 160/64)
          <es_~ ges^~ es'^~>32 32\fermata
          \key b \major
          r32
          \tempo "Un poco più vivace"
          r16 r8 r32
          \set subdivideBeams = ##t
          \set baseMoment = #(ly:make-moment 1/8)
          \set beatStructure = #'(6 6)
          fis,32-[ gis ais b cis dis e] dis-[ b fis' e dis cis b ais]
          b-[ fis' gis ais b cis dis e] dis-[ cis b ais gis fis e dis]
          cis-[ b ais gis fis e' dis gis] fis-[ b ais e']
          <e, ais e'>16.\fermata \noBeam
          \tempo "Tempo I"
          <dis_~ fis_~ b^~ dis^~>32\p \noBeam
          16 r16 r16.
          <dis_~ gis_~ b^~ dis^~>32
          \tempo "Allegro"
          % End of the second measure.
          |
          \time 4/4
          \bar "||"
          \set subdivideBeams = ##f
          16\fp dis gis, dis'
          e dis gis, dis' e2^~ |
          e16 ais, dis cisis dis ais dis cis bis dis bis gis' cis, gis' dis gis |
          e4 e,4_~ e16 cis fis eis fis cis fis e |
          dis8
          <<
            \relative c''' {
              s4 s4 s8 b4^~ |
              b16 gis a cis e, a dis, gis dis gis dis fisis dis gis dis ais'
            }
            \\
            \relative c'' {
              dis4 cis8 b16 dis b dis e dis b dis |
              e4 a,8 b b cis b ais
            }
          >>
          \tempo "Tempo I"
          |
          % Move the tempo text above the fermata.
          \once \override Staff.TextScript.outside-staff-priority = #500
          \once \override Staff.Script.outside-staff-priority = #0
          r8..\fermata
          <b'_~ dis_~ gis^~ b^~>32 16 r16 r16.
          <b_~ e_~ gis^~ b^~>32 16 r16 r16.
          <cis_~ e_~ gis^~ cis^~>32 16 r16 r16.
          <cis_~ e_~ a^~ cis^~>32
          \bar "||"
          % This measure is 3/4 for some reason.
          \set Timing.measureLength = #(ly:make-moment 3/4)
          \key a \major
          16 \clef bass
          \once \override Slur.positions = #'(-2 . 0)
          \tuplet 3/2 {
            a,,32^(-[ a')
            \once \override Slur.positions = #'(-2 . 0)
            a^(]
          }
          \tuplet 3/2 {
            a')-[ \clef treble
            \once \override Slur.positions = #'(-2 . 0)
            a^( a')]
          }
          \tuplet 3/2 {
            \once \override Slur.positions = #'(-2 . 0)
            a_~^( <a_~ a'^~> <a_~ a'^~>
          }
          \tuplet 3/2 { <a a'>8 <gis gis'> <e e'> }
          \tuplet 3/2 { <dis dis'> <d d'> <b b'>) }
          |
          % Another looooong measure.
          \set Timing.measureLength = #(ly:make-moment 352/64)
          \tuplet 6/4 { gis'16 e dis d b gis }
          \tuplet 3/2 { e-[ dis d] }
          \clef bass
          b32 gis e dis
          \once \override TrillSpanner.bound-details.right.padding = #1.0
          d4. \startTrillSpan
          \once \override TrillSpanner.bound-details.right.padding = #2.0
          dis8^~ \stopTrillSpan \startTrillSpan
          dis
          \once \override Staff.Script.outside-staff-priority = #200
          \once \override TrillSpanner.outside-staff-priority = ##f
          \afterGrace e4.\fermata \startTrillSpan { dis16-[ e] \stopTrillSpan }
          % The long and slow modulation from B major to A major to B flat major.
          \clef bass
          \bar ""
          \break
          <cis_~ e^~>16\p 16 32-[ r32 <cis e>16] <cis_~ e^~>16-[ 16]
          <cis a'>32-[ r32 <cis fis a>16] <fis_~ a^~>16-[ 16]
          <fis a>32-[ r32 <fis a>16] <fis_~ a^~>16-[ 16]
          <fis d'>32-[ r32 <fis b d>16]
          \clef treble
          \key c \major
          <b_~ d^~>16-[ 16] <b d>32-[ r32 <b d>16] <b_~ d^~>16-[ 16]
          <b g'>32-[ r32 <b g'>16] <e_~ g^~>16-[ 16] <e g>32-[ r32 <e g>16]
          <e_~ c'^~>16-[ 16] <e c'>32-[ r32 <e c'>16]
          \bar ""
          \break
          <a_~ c^~>16-[ 16] <a c>32-[ r32 <a c>16] <a_~ f'^~>16-[ 16]
          <a d f>32-[ r32 <a d f>16]
          <a_~ cis_~ e^~ a^~>16-[\ff 16] <a cis e a>32-[ r32 <a cis e a>16]
          <a_~ cis_~ e^~ a^~>16-[ 16] <a cis e a>32-[ r32 <a cis e a>16]
          <a_~ cis_~ e^~ a^~>16-[ 16]
          <a a'>32-[ r32 <a a'>16] <a_~ a'^~>16-[ 16]
          <a a'>32-[ r32 <a a'>16] <a_~ a'^~>16-[ 16]
          <a a'>32-[ r32 <a a'>16] <a_~ a'^~>16-[ 16]
          <a a'>32-[ r32 <a a'>16]
          \bar "||"
          \key bes \major
          \time 3/4
          \break
          \once \override TrillSpanner.bound-details.right.padding = #-1.0
          \tempo "Allegro risoluto" 4 = 144
          a'2.^~\startTrillSpan | a4 \stopTrillSpan
          \once \override TrillSpanner.bound-details.right.padding = #-1.0
          c2^~ \startTrillSpan | c4 \stopTrillSpan
          \once \override TrillSpanner.bound-details.right.padding = #-1.0
          \once \override Slur.positions = #'(6.1 . 0)
          \once \override Slur.eccentricity = #1.25
          \once \override Slur.height-limit = #6.5
          f2^~ \startTrillSpan | f16\f \stopTrillSpan
          es d c bes\ff a g f es d c f |
          <bes,, d f bes>8\sf r8 r8 g'16-[\p f] es d c bes
          \clef bass |
          \break
          % Start of the fuga section.
          % "Three part fugue with some license"
          a16^\markup { "Fuga a tre voci, con alcune licenze" } bes a g
          f g f es d es d c |
          bes4 r4 r4 |
          R2. |
          R2. \clef treble |
          R2. |
          R2. |
          R2. |
          R2. |
          R2. |
          R2. |
          b'8 r8 \afterGrace e'2\sf\>\startTrillSpan { d32\!\stopTrillSpan e } |
          f4 r8 f16 e d c bes a |
          d4 r8 d16 c bes a g f |
          bes4 r8 bes16 a g a g f |
          e f e d c d e f fis g a g |
          f! g a bes b c d c bes a g f |
          e f e d c d e f fis g a f |
          <<
            \relative c' {
              e f c' bes a bes c bes gis a bes a
              |
              g as e' d c cis d cis b c d c
              |
              gis a bes a e f g f b c d c
              |
              \relative c'' f8\rest d,8 es'4.^\sf \relative c'' f8\rest
              |
              \relative c'' f8\rest bes,8 bes'4.^\sf \relative c'' f8\rest
              |
              \relative c'' f8\rest g8_.-[ g' f es e]
              |
              f8 \relative c'' f8\rest es4. es8
              |
              es8-[^( d c bes a bes])
              |
              \relative c'' f8\rest b8-[ c ges] f4
              |
              bes'8 \relative c''' a8\rest g4. f8
              |
              \relative c''' a8\rest
              % Neutral as per London. Es in original edition.
              e8-[ g des] c4
              |
              f'8 \relative c''' f8\rest es!4.^\sf d8
              |
              bes'8 \relative c'''' b8\rest g4.^\sf f8^~
              |
              f8-[ f^~]
              f8-[ e] es4^~
              |
              es8-[ d] des8-[ des,^~] des16-[ g bes des]
              |
              des8-[ c16 bes] a-[ bes c bes] a g a bes
              |
              c bes a g f g f es! d! cis' d cis
              |
              es8-[ d16 c!] b c d c b a b c
              |
              d16 c b as g as g f! es4
              |
              \relative c''' b4\rest
              es4.\sf des16-[ es]
              |
              f16 ges f es des c bes as des4^~
              |
              des16 es des c bes as g f bes4^~
              |
              bes4. bes8^. c8-[^. des!^.]
              |
            }
            \\
            \relative c' {
              d8 b8\rest cis4. c8
              |
              f8 e8\rest e4. es8
              |
              e2 f4_~
              |
              f8 \relative c' { g8\rest b8\rest } a8 bes4
              |
              \relative c' { c4\rest e8\rest } fis8 g4
              |
              \relative c' { c4\rest e8\rest } b8-[ c g]
              |
              d'8-[ f,] d'8-[ ges,] f4_~
              |
              f8 f es d c d
              |
              f8 \relative c' { e8\rest } es4._\sf d8
              |
              \relative c'' { b8\rest } bes'8-[ e bes_~] bes4
              |
              c8 \relative c'' { g8\rest } bes4._\sf a8
              |
              \relative c'' { b8\rest } a'8-[ c bes] g4
              |
              \relative c'' { b8\rest } bes8-[ e bes_~] bes8-[ d]
              |
              b8-[ g] c-[ g] c-[ f,_~]
              |
              f8 bes!_~ bes bes,
              s4
              |
              \trillSpanDown
              e2\sf\startTrillSpan f4\stopTrillSpan
              |
              \relative c'' { g4\rest g4\rest }
              d,8
              \relative c'' g8\rest
              |
              fis'2\startTrillSpan g4\stopTrillSpan
              |
              \relative c' { e4\rest e4\rest }
              g,16 b c des
              |
              es des c b as b as ges f4
              |
              \bar "||"
              \key f \minor
              \relative c' { e4\rest e4\rest }
              des16-[ es e f]
              |
              ges4 \relative c' e4\rest bes,16-[ c des d]
              |
              es d es f ges8-[ g] as \relative c'' g8\rest
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
          \four-section-one
          \override Tie.minimum-length = #2.75
          \autoBeamOff
          \stemUp
          \tupletDown
          \once \override Slur.positions = #'(0 . 1)
          \once \override TupletBracket.positions = #'(-3.7 . -3.7)
          \tuplet 3/2 { f32-[\sustainOn_( f')] r32 }
          \tupletUp
          \stemDown
          \once \override TupletBracket.positions = #'(3.1 . 3.4)
          \tuplet 3/2 {
            r32 \clef treble
            \once \override Slur.positions = #'(-1 . 1)
            f'^(-[ f')]
          }
          \once \override TupletBracket.positions = #'(3.4 . 3.4)
          \once \override Score.NoteColumn.X-offset = 0.8
          \tuplet 3/2 { r32 r \clef bass \stemNeutral <f,,,,_~ f'^~> }
          <f f'>16.\fermata r32 r16
          <f' f'>16 r16\sustainOff r16 r16\sustainOn
          <es es'> r16\sustainOff r16 r16\sustainOn
          <bes bes'> \key bes \major r16\sustainOff r16 r16\sustainOn
          <ges_~ ges'^~> <ges ges'>\fermata r16\sustainOff r8 r4
          % Breaking to the next line here.
          \autoBeamOn
          r32 f''32-[^( aes
          \set stemRightBeamCount = #1
          f
          \set stemLeftBeamCount = #1
          aes f aes des,)] ges16 c, des aes
          % End of the first measure
          |
          r16\sustainOn <ges ges'> r16\sustainOff r16
          r16\sustainOn <es es'> r16\sustainOff
          r16\sustainOn <b b'>32\fermata \noBeam \sustainOff
          % Un poco più vivace
          \key b \major
          \set subdivideBeams = ##t
          \set baseMoment = #(ly:make-moment 1/8)
          \set beatStructure = #'(6 6)
          \stemDown
          fis''32-[ gis ais b cis dis e] dis-[ b fis' e dis cis b ais]
          b-[ fis gis ais b cis dis e]
          % Force another break to the next page.
          \bar "" \break
          dis-[ \clef treble dis' fis e dis cis b ais]
          b-[ ais dis cis b ais gis fis] \clef bass e-[ dis cis b ais cis b e] dis-[ d cis fis,]
          <fis cis' fis>16.\fermata\sustainOn
          \stemNeutral
          r32\sustainOff r16 <b,, b'>16\sustainOn r16\sustainOff r16\sustainOn
          \bar "||"
          <b b'>8\sustainOff r8 r4 \clef treble r16
          \set subdivideBeams = ##f
          gis'''16 cis, gis' ais gis cis, gis' |
          fisis4. fis8_~ fis8 8 e dis \clef bass |
          cis16 gis^( cis, gis' a gis cis, gis' a4.)
          <<
            \relative c' {
              \once \override Slur.positions = #'(1 . 2)
              gis8 |
              ais!16 cis ais dis e dis ais dis gis, b gis b cis b gis b |
              e,8 cis'4 b8 \noBeam 8 ais gis fisis
            }
            \\
            \relative c {
              s8 |
              fisis2 b,4\rest b8\rest b8 |
              cis4. dis8 dis4. dis8 |
            }
          >>
          r8..\fermata r32 r16 <gis, gis'>16
          r16 r r <e e'>
          r r r <cis cis'> r r
          \bar "||"
          \key a \major
          \tuplet 3/2 { r32 a a' } r16 r16
          \tuplet 3/2 { r32 r32 <a, a'> }
          <a_~ d_~ e^~ b'^~>2 |
          <a_~ d_~ e_~ b'_~>1 2\fermata
          % Modulation section.
          r16 <a a'>16 r32. <a a'>64 r16 r16 <a a'>16 r32.
          <fis fis'>64 r16 r16
          <d' d'>16 r32. <d d'>64 r16 r16 <d d'>16 r32.
          <b b'>64 r16
          \key c \major
          r16
          <g' g'>16 r32. <g g'>64 r16 r16 <g g'>16 r32.
          <e e'>64 r16 r16
          <c' c'>16 r32. <c c'>64 r16 r16
          <a a'>16 r32 <a a'>32 r16
          \bar ""
          \break
          r16
          <f f'>16 r32 <f f'>32 r16 r16
          <d d'>16 r32 <d d'>32 r16 r16
          <a cis e a>16 r32 <a cis e a>32 r16 r16
          <a cis e a>16 r32 <a cis e a>32 r16 r16
          <a cis e a>16 r32 <a a'>32 r16 r16
          <a a'>16 r32 <a a'>32 r16 r16
          <a a'>16 r32 <a a'>32 r16 r16
          <f f'>16 r32 <f f'>32 r16
          \bar "||"
          \key bes \major
          \time 3/4
          <f f'>8 r8 <f'' a> r8 r4 |
          <f,, f'>8 r8 <a'' c> r8 r4 |
          <f,, f'>8 r8 <f'' a c f>8 r8 <f,, f'>8 r8 |
          <f'' a c f> r8 <f,, f'>4. g'16 a |
          <bes, d f bes>8 r8 r4 r4 |
          f''8 r8 \clef treble \afterGrace a'2\startTrillSpan { g32 a\stopTrillSpan } |
          bes4 r8 bes16-2 a g-1 f es d |
          g4-. r8 g16 f es d c bes |
          es4-. r8 es16 d c d c bes |
          a bes a g f g a bes b c d c |
          bes c d es e f g f es d c bes |
          a bes a g f g a bes b c d c |
          bes! c d es e f g f bes, fis' g fis |
          bes, g' a g fis g a g e f g f |
          e f g f d es f es cis d es d |
          cis d es d b c d c a bes c bes |
          <<
            \relative c' {
              \relative c'' b8\rest a8_. a'4.^\sf \relative c'' b8\rest |
              \relative c'' b8\rest f,8_. f'4.^\sf \relative c'' b8\rest |
              \clef bass
              \relative c d8\rest d,8-[ d' c bes b]
              |
              c8 \relative c \relative c' c8\rest bes!4. bes8
              |
              bes8-[^( a g f e f)]
              |
              c'8 \relative c' c8\rest bes4. a8
              |
              
            }
            \\
            \relative c' {
              \override MultiMeasureRest.staff-position = #-8
              R2.
              |
              R2.
              |
              \override MultiMeasureRest.staff-position = #-2
              R2.
              |
              R2.
              |
              R2.
              |
              R2.
              |
              R2.
              |
              R2.
              |
              \trillSpanUp
              \stemUp f,,8 \stemDown \relative c d8\rest \afterGrace a'2\sf\startTrillSpan { \stemUp g32\stopTrillSpan a \stemNeutral }
            }
          >>
          bes4 r8 bes16 a g f es d
          |
          g4 r8 g16 f es d c bes
          |
          es4 r8 es16 d c d c bes
          |
          a bes a g f g a bes b c d c
          |
          bes! c d es e f g f es d c bes
          |
          a bes a g f g a bes a bes c d
          |
          es f g es cis d e cis d f bes d
          |
          fis, g a g dis e f! e f a c f
          |
          b, c d c gis a bes a bes a g! f
          |
          es f g es d cis bis cis d
          % Unsure whether this should be an es or an e.
          % Henle is unsure too.
          es
          f fis
          |
          g a bes b c, e! g c
          f, g as a
          |
          bes, d f bes
          e, g bes e
          <<
            \relative c' {
              bes8 d8\rest
            }
            \\
            \relative c'' {
              g,16 e g e
            }
          >>
          |
          r4 r4 f,,8 r8
          |
          \trillSpanUp
          a'2_\sf\startTrillSpan bes4\stopTrillSpan
          |
          r4 r4 g,8 r8
          |
          b'2_\sf\startTrillSpan c8\stopTrillSpan-[ as,]
          |
          \afterGrace c'2_\sf\startTrillSpan { bes16-[\stopTrillSpan c] } des4
          |
          \key f \minor
          r8 des16-[ c] bes as ges f bes4
          |
          r8 bes16-[ as] ges f es des ges4
          |
          r8 ges16-[ f] es f es des c des c bes
          |
        }
      }
    >>
    \layout {
      \context {
        \Score
        \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/8)
        \consists #Span_stem_engraver
      }
    }
    \midi {
      \tempo 4 = 60
    }
  }
}

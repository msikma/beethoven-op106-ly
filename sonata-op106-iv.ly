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
              \stemDown <ges, es'>4._\sf 8 8-[^( <f des'>]
              |
              \stemUp
              c'8-[ des] es,8-[ f16 ges?)] as bes c des
              |
              s2.
              |
              s2 as8 b8\rest
              |
              % Todo: put sf in parentheses
              ges4.^\sf f8 bes4
              |
              \relative c'' { f4\rest f4\rest } des8^\sf \relative c''' a8\rest
              |
              c4.^\sf bes8 es4
              |
              \relative c''' { a4\rest a4\rest } f8 \relative c''' a8\rest
              |
              f8^\sf^.-[ es^.] \relative c'' f4\rest des8 \relative c'' f8\rest
              |
              des8-[ c] \relative c'' f8\rest des8 g'4^~\startTrillSpan
              |
              g4 as4\stopTrillSpan \relative c''' a8\rest as16-[ g]
              |
              f es des c f4 \relative c''' { a8\rest } f16-[ es]
              |
              des c bes as des4 \relative c''' { a8\rest } des16-[ c]
              |
              bes16 c bes as g as g f es f g as
              |
              a bes c bes as bes c des d es f es
              |
              des c bes as bes8
              \relative c''' { a8\rest }
              <bes,_~ des^~>4
              |
              <bes des>8-[ <f des'>] <f des'>_( <es c'> <des bes'> <c as'>
              |
              <bes g'>8-[ <c as'>])
              a'16 bes c des es f ges f
              |
              es des c bes
              <ges es'>8_(\sf <f des'> <es c'> <des bes'>
              |
              <c a'>-[ <des bes'>])
              s2
              |
              s2.
              |
              s4
              \stemDown
              <ces' es>8\sf-[^( <bes des> <as ces> <ges bes>]
              |
              <f as>-[ <ges bes>]) \stemNeutral <fes' des'>\sf-[ <es ces'> <des bes'> <ces as'>]
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
              fis'2\startTrillSpan_\sf g4\stopTrillSpan
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
              ges4 \relative c' c4\rest bes,16-[ c des d]
              |
              es d es f ges8-[ g] as \relative c'' g8\rest
              |
              s2.
              |
              es8-[ des] c-[ des] c-[ es]
              |
              d'16 es f es des c bes as des es f ges
              |
              g! as bes as ges f es des c, des c bes
              |
              as bes c des d es c des e f ges f
              |
              d es g as fis g as g a bes c bes
              |
              g as! bes as fis g as g a bes c bes
              |
              as! bes c des c des b c b c des c
              |
              a bes c bes d, es f es g as! bes as
              |
              g as bes as g as bes b c bes a bes
              |
              bes as! e as \relative c'' { g4\rest g8\rest } g8_.
              |
              as4 \relative c'' { g4\rest g8\rest } e8_.
              |
              f4 \relative c'' { g4\rest g8\rest } es'8
              |
              des8-[ bes] bes8
              \relative c'' { g8\rest } s4
              |
              s2.
              |
              s4 des8 s8 s4
              |
            }
          >>
          <bes g'>8-[ <ces_~ as'^~>]
          <ces as'>8-[ <as'_~ ces^~>]
          <as ces> <g bes>
          |
          <des fes>4.\f 8\sf 8-[ <ces es>]
          |
          <bes des>^( <as ces> <g bes> <as ces> <bes des> <ces_~ es^~>)
          |
          <ces es>8\f-[ 8] 4.\sf <bes_~ des^~>8
          |
          \stemDown
          <bes des>-[^( <as ces> <ges bes> <f as> <ges bes> <as ces>])
          \stemNeutral
          |
          <<
            \relative c'' {
              des8 es4 des des8
              |
              \bar "||"
              \key ges \major
              des16-[ bes, des ges]
              % TODO: staccato marks here?
              bes8-[ ces] des4
              |
              \relative c''' { a4\rest c16\rest }
              ges16-[ f es] f8-[ ges16 as^~]
              |
              as4 as16-[ f' es des] c8-[ des16 es]
              |
              as,8 s8 s2
              |
              f8-[^. ges^.] as4^~ as16-[ f es d]
              |
              es4 \relative c''' { c16\rest } ges'16-[ f es]
              d ces bes as
              |
              ges4 \relative c''' { c4\rest c4\rest }
              |
              ges8^.-[ as^.] bes4^~^\sf bes16-[ g f es]
              |
              es'16 ces bes as as' f es d as'4^\sf^~
              |
              as16 as, g f as f es d f bes, a bes
              |
              bes' f e f f' bes, a bes bes' as! g f
              |
              g4
              % TODO: double check height of these rests.
              \relative c''' { e4\rest e4\rest }
              |
              s4 d8 \relative c''' { e8\rest } es4^~
              |
              es4 s2
              |
              s4 bes8 \relative c''' { c8\rest } ces4^~
              |
              ces4 s2
              |
              s4
              bes4 ces4^~
              |
              ces4 bes as^~
              |
              as2 as'4^\sf^~
              |
              as8
              \relative c'''' g8\rest
              ges8
              \relative c'''' g8\rest
              f8
              \relative c''' e8\rest
              |
              es8
              \relative c''' e8\rest
              d
              \relative c''' a8\rest
              as,8-[ ges]
              |
              <as, f'>8\sf-[ <bes ges'> <as f'>\sf <ges es'> <f d'>\sf <g es'>]
              |
              f'8-[^\sf ges as^\sf bes c^\sf d]
              |
              es-[^\sf f ges^\sf g]
              as-[^\sf bes]
              |
              c-[^\sf bes as^\sf ges!]
              es8
              \relative c'' { f8\rest }
              |
              des8
              \relative c'' { f8\rest }
              c8
              \relative c'' { f8\rest }
              es,4_~_\sf
              |
              \bar "||"
              \key bes \minor
              es2
              a'4^~\startTrillSpan
              |
              \afterGrace a2. { g16-[\stopTrillSpan a] }
              |
              bes2.
              |
              bes8-[ as! ges! f es des]
              |
              ges2 \relative c''' { a4\rest }
              |
              ges8-[ f es des]
              g16-[ des' bes g]
              |
              % TODO: e or es?
              es-[ bes' ges es]
              des-[ ges es des]
              c-[ ges' es c]
              |
              des-[ bes' ges e]
              c4
              s4
              |
              bes'2
              <bes,, ges'>4\startTrillSpan
              |
              2 f'4\stopTrillSpan
              |
              s2.
              |
              % TODO: move sf next to note
              es''2^\sf
              c,4^~\startTrillSpan
              |
              c2
              bes4\stopTrillSpan
              |
              \relative c''' { c4\rest c4\rest }
              des'4^~^\sf
              |
              des2
              bes,4\startTrillSpan
              |
              bes2.
              |
              \afterGrace bes2 { a16-[\stopTrillSpan bes] }
              f'4^~
              |
              f8-[^( es des c b c])
              |
              <a es'>8-[ <bes! des> <es, bes'> bes' a bes]
            }
            \\
            \relative c'' {
              ges8-[ ges f ges]
              as16 ges f as
              |
              bes8\p s8 \relative c' { e16\rest }
              ges16-[ f es]
              f8-[ ges16 as]
              |
              bes4 s4 s4
              |
              f'16-[ f, as des]
              f8-[ ges]
              as4\sf
              |
              f4_~ f16 f es des c bes as ges
              |
              f8\f \relative c'' { g8\rest b16\rest }
              as16-[ bes c] d8-[ bes]
              |
              bes16 ges, bes es
              ges8_.-[ as_.] bes4\sf
              |
              bes8-[ ges^~] ges16 ges' f es
              d ces bes as
              |
              ges4 \relative c'' { g4\rest g4\rest }
              |
              % TODO: check position of rest
              \override MultiMeasureRest.staff-position = #-2
              R2.
              |
              % TODO: r2 here?
              s2
              \trillSpanDown
              % TODO: end this trill at the bar line.
              c4_\sf\startTrillSpan
              |
              c2.
              |
              c2\stopTrillSpan
              \relative c'' { b4\rest }
              |
              es8 <es, des'!>_.-[ <es ces'>_. <des bes'>_. <ces as'>_. <bes ges'>_.]
              |
              <es ces'>2
              \relative c'' { b4\rest }
              |
              <es ces'>8_.-[ <des bes'>_. <ces as'>_. <bes ges'>_.]
              <as f'>8_.-[ <ges es'>_.]
              |
              <ces as'>2
              \relative c'' b4\rest
              |
              <ces as'>8_.-[ <bes ges'>_.]
              <as f'>_.-[ <bes ges'>_.]
              <as f'>_.-[ <ges es'>_.]
              |
              s2.
              |
              s2.
              |
              s2
              <f' a>8\sf-[ <ges bes>]
              |
              <as ces>\sf-[ <ges bes>]
              <ces, as'>\sf-[ <bes ges'>]
              f'\sf-[ es]
              |
              s2.
              |
              d8-[ es f ges es f]
              |
              ges-[ as bes ces]
              f-[ ges]
              |
              % TODO: c or ces?
              as-[ ges c, bes]
              % TODO: sf up or down?
              as-[_\sf ges]
              |
              f-[_\sf es des_\sf c]
              s4
              |
              s2
              des'8-[ c!]
              |
              f-[ es] des-[ c] ges'-[ c,]
              |
              \trillSpanDown
              \afterGrace es2.\startTrillSpan { des16-[\stopTrillSpan es] }
              |
              des8-[\sf c bes\sf as ges\sf f]
              |
              es'-[ es, f ges as bes_~]
              |
              bes-[ as ges f] e'4
              |
              \relative c' { e4\rest e4\rest }
              bes4_~
              |
              bes2
              \relative c'' { b4\rest }
              |
              s2.
              |
              s2 
              c,8-[ es'8]^~
              |
              es2
              \stemUp
              c,4^~\startTrillSpan
              |
              \stemDown
              c2 es4_~\stopTrillSpan
              |
              es4 e4 f8-[ des'^~\sf]
              |
              \key as \major
              des2
              bes,4\startTrillSpan
              |
              \afterGrace bes2 { a16-[\stopTrillSpan bes] }
              des4_~
              |
              des2
              g4^~
              |
              g8-[_( f es des c des])
              |
              b-[ c bes as g' as]
              |
              s4.
              des,4 des8
              |
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
          <a_~ d_~ e^~ b'^~>1 2\fermata
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
          as16 bes c des d es f es des es f ges
          |
          g! as bes as ges f es des as8 r8
          |
          <ges es'>4.^\sf 8 8-[_( <f des'>]
          |
          \stemUp <es c'>8-[ <des des'>] <c' es>-[ <des f>)] r4 \stemNeutral
          |
          r4 r4 <des, des'>8 r8
          |
          <c c'>4.\sf <bes bes'>8 <es es'>4
          |
          r4 r4 <g g'>8 r8
          |
          % Todo: put \sf in parentheses
          <f f'>4._\sf <es es'>8 <as as'>4
          |
          r4 <g g'>8 r8 <g g'>8_.-[ <f f'>-.]
          |
          r4 <es' es'>8 r8 es'8-[ des]
          |
          des-[ c] r8 \stemDown c,8_. c'4_\sf
          |
          r4 r8 as,8_. as'4_\sf
          |
          r4 r8 f,8_. f'8^.-[ a^.]
          |
          bes8-[ d] es8 r8 <bes_~ des^~>4_\sf
          |
          <bes des>8-[ 8] 8-[^( <as c>] <des, bes'>-[ <c as'>]
          |
          <bes g'>-[ <c as'>])
          g16 as g f es f g as
          |
          a bes c bes g as bes c des es f es
          |
          des c bes as
          <ges' es'>8\sf^( <f des'> <es c'> <des bes'>
          |
          <c a'> <des bes'>)
          a16 bes c des es f ges f
          |
          es des c bes
          <<
            \relative c {
              d16 es f g as bes ces bes
              |
              as g f es e f g as bes c! des c
              |
              bes as g f
            }
            \\
            \relative c {
              as8\sf_( g f es
              |
              d-[ es)] bes'8\sf_( as g f
              |
              e-[ f)]
            }
          >>
          f'16 ges as bes ces des es des
          |
          ces bes as ges g, as bes ces des es fes es
          |
          des ces bes as ges fes es d es g bes es
          |
          % TODO: the trill is on the top note.
          % This is as per Artaria but it it's not very clear.
          <g, g'>2\startTrillSpan <as as'>4\stopTrillSpan
          |
          <as as'>4 <es es'> <des des'>
          |
          <f f'>2\startTrillSpan <ges ges'>4\stopTrillSpan
          |
          <des des'>4 <es es'>
          <<
            \relative c {
              ces4^~
              |
              ces8-[ bes as bes ces des]
            }
            \\
            \relative c, {
              \voiceOne ces4_~
              \voiceTwo
              |
              ces8-[ bes as bes ces]
              \once \hide Flag
              \voiceOne des
            }
          >>
          |
          \key ges \major
          \stemNeutral <ges, ges'>4 r4 r16 d''16-[ es f]
          |
          g16-[ bes, des g]
          bes8-[ ces] des4
          |
          r4 r4 r16 as16-[ bes ces]
          |
          des16-[ f, as des]
          % TODO: staccato marks here?
          f,8-[ ges] as4\sf_~
          |
          as16-[ f' es des]
          c bes as g
          f8-[ as]
          |
          g16 r16 r8 r4 r16 d'16-[ es f]
          |
          es16-[ ges, bes es,] ges8^.-[ as^.]
          bes4^~\sf
          |
          bes16-[ ges f es] d-[ ces bes as]
          a8_.-[ bes_.]
          |
          bes8_.-[ ces_.] ces'4^~\sf ces16 as ges f
          |
          <<
            \relative c' {
              bes2
            }
            \\
            \relative c {
              es4 d
            }
          >>
          r4
          |
          R2.
          |
          r4
          % TODO: display in voice one?
          ces4_. ces'4^~\sf
          |
          ces8
          s8 s2
          |
          r4
          as,4_. as'4^~\sf
          |
          % TODO: second as shouldn't be an 8 like the preceding?
          as4 s2
          |
          r4
          % TODO: does this not have a staccato?
          f,4 f'4^~\sf
          |
          f4 s2
          |
          <f d'>8\sf-[ <ges es'>]
          <f d'>\sf-[ <es c'>]
          <d bes'>\sf-[ <es c'>]
          |
          <f d'>\sf-[ <ges es'>]
          <g e'>\sf-[ <as f'>]
          <bes ges'>\sf-[ <as f'>]
          |
          <ges! es'>\sf-[ <as f'> <bes ges'>\sf <ces as'>]
          s4
          |
          s2
          <bes,,_~ bes'^~>4
          |
          <bes bes'>2 <as_~ as'^~>4
          |
          <as as'>2 <as_~ as'^~>4
          |
          <as as'>8 r8 <ges ges'> r8
          <f f'>8 r8
          |
          <es es'>8 r8
          <d d'>8 r8
          <es es'>8 bes'''8\noBeam
          |
          as-[ ges f es]
          <<
            \relative c' {
              bes8-[ a]
              |
              ges-[ f es des]
            }
            \\
            \relative c {
              des8-[ c!]
              |
              \key bes \minor
              bes-[ as ges f]
            }
          >>
          <es_~ es'^~>4\f
          |
          <es es'>2
          % TODO: these are not tied, should they be?
          % TODO: the trill is played on the top note in practice.
          % Should be break this up into two voices?
          <c,, c'>4\startTrillSpan
          |
          \afterGrace <c c'>2. { bes'16-[\stopTrillSpan c] }
          |
          bes2
          r4
          |
          % TODO: stem up here since we are splitting into voices later, should we?
          \stemUp
          bes8
          <c, c'>8-[ <des des'> <es es'> <f f'> <ges ges'>]
          |
          <des des'>2
          <c_~ c'^~>4
          |
          <c c'>2
          <<
            \relative c {
              \once \override TrillSpanner.bound-details.right.padding = #2.0
              e4\startTrillSpan
              |
              % TODO: should we really move back to voice two?
              \voiceTwo
              e2
              % TODO: trill y position is a bit ugly
              \trillSpanUp
              g4\stopTrillSpan
              \startTrillSpan
              |
              g2
            }
            \\
            \relative c, {
              e4
              |
              e2
            }
          >>
          f4_~
          |
          f2
          % Make sure the trill stops before the note ends.
          % TODO: maybe just make this length 2, instead of 2.
          <<
            \relative c, {
              a'4_~
              |
              a2.
            }
            \\
            \relative c {
              \trillSpanUp
              s4\startTrillSpan
              |
              s2 s4\stopTrillSpan
            }
          >>
          |
          r4\stopTrillSpan r4 bes4_~\sf
          |
          bes2
          \stemNeutral
          des'4^~
          |
          \bar "||"
          \key as \major
          \afterGrace des2 { c16-[ des] }
          es4
          |
          es2
          as4^~
          |
          as8-[ g f es d es]
          |
          es2.
          |
          es2
          es4\startTrillSpan
          |
          es2
          f8-[\stopTrillSpan g]
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

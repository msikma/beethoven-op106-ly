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
              |
              \stemDown
              des,8-[ c]
              \stemUp
              \relative c''' { c16\rest } as''16-[ g f]
              % TODO: the only 8th beamed notes that don't have staccato, correct?
              es8-[ g]
              |
              as8 \relative c''' { a8\rest c16\rest } c16-[ bes as] g4
              |
              as16-[ c, es as] c8^.-[ des^.] es4_\sf
              |
              \relative c''' { c16\rest } c,16-[ bes as] g4 as4^~
              |
              as16-[ as c f] as8^.-[ bes^.] c4^~
              |
              c4 \relative c''' { c16\rest } as16-[ g f] e8-[ f]
              |
              as8^.-[ bes^.] c4^~ c16-[ as g f]
              |
              a8^.-[ bes^.] c4^~ c16-[ as g f]
              |
              bes8^.-[ c^.] des4^~ des16-[ bes ges f]
              |
              a4 \relative c'''' { g16\rest } as16-[ c des] es4
              |
              \relative c''' { e4\rest e4\rest } des,16-[ f ges a]
              |
              g!16-[ bes as! g] f-[ es d c] bes4
              |
              \relative c''' { c4\rest c4\rest }
              g16-[ bes c des]
              |
              c16-[ c' bes as] g-[ f es des] c4
              |
              % TODO: I added a rest here since it's a space in the original. check
              \relative c''' { a8\rest } g'8 as4. c8
              |
              des4
              \relative c''' { c4\rest }
              as,8^.-[ c^.]
              |
              des4.^\sf e8-[ f ges^~]
              |
              ges16-[ bes as ges]
              f-[ es! des ces]
              bes4
              |
              \bar "||"
              \key es \minor
              s8
              ces8 des4. bes'8
              |
              b8
              \relative c''' { a8\rest a4\rest }
              fis,8-[ ais]
              |
              \bar "||"
              \key b \minor
              bis4. cis8-[ d e]
              |
              fis-[ ais^.] b4. cis8^.
              |
              d8-[ e] fis8^\sf
              % TODO: check length of decresc
              \relative c''' { a8\rest^\> }
              fis,8
              \relative c'' { f8\rest\! }
              |
              \relative c'' { f4\rest f4\rest }
              fis4^\p
              |
              e2^( cis4
              |
              d2 c4^~
              |
              c4 b b)
              |
              b^( fis d')
              |
              % TODO: this measure is totally incorrect. fix it.
              cis4 fis,8 \relative c'' g8\rest ais'4^~\startTrillSpan
              |
              % TODO: added a slur here
              \afterGrace ais4 { gis16-[\stopTrillSpan ais] }
              b4 \relative c''' { a8\rest }
              b16-[^( ais]
              |
              g-[ fis e fis] g-[ a g fis]
              e-[ d cis d]
              |
              e-[ d cis b] a-[ gis a g]
              fis-[ a b cis]
              |
              d-[ e fis g]
              a-[ b a gis]
              g-[ fis e dis])
              |
              e^( fis e dis d cis b a b cis d cis
              |
              d e fis e fis-[ g])
              r8
              s4
              |
              s2.
              |
              s2.
              |
              s2 ais,8 \relative c'' b8\rest
              |
              fis'4^( e cis
              |
              e d2_~
              |
              d4)^( cis2_~
              |
              cis4 b2_~
              |
              b2) e,8-[^( d]
              |
              cis8-[ d] \clef bass
              cis8-[ d] e-[ eis])
              |
              fis2
              \clef treble
              fis'4
              |
              \trillSpanUp
              d2\startTrillSpan
              b8-[\stopTrillSpan eis,]
              |
              fis2 \stemDown fis8-[\< gis16 ais]
              |
              b16-[ cis d e]\> fis-[ gis]\!
              % TODO: should the decresc touch the piano?
              \relative c'' b8\rest gis4\p
              \stemUp
              |
              fis2\startTrillSpan
              d4\stopTrillSpan
              |
              b2 g4
              |
              e16-[^( fis g a] b-[ cis]) r8 cis4
              |
              g16-[^( a b cis] d-[ e]) r8 e4
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
              des,4 des8_(
              |
              \stemUp
              es4)_\p
              \relative c' { e4\rest g16\rest }
              \stemDown
              bes'16-[ c des]
              |
              c16-[ c, es as] c8_.-[ des_.] es4
              |
              es4 s2
              |
              c,8_.-[ des_.] es4_\sf_~ es16-[ c bes as]
              |
              % TODO: should this be a 4?
              c8_\f \relative c'' { s8 b16\rest } f'16-[ es des] c4
              |
              c16-[ as g f] as4 as16-[ c bes as]
              |
              \relative c'' { g4\rest b16\rest } c16-[ d e] f4
              |
              \relative c'' { g4\rest b16\rest } c16-[ d e] f4
              |
              \relative c'' { g4\rest b16\rest } f16-[ g a] bes4
              |
              es,8_.-[ f_.] ges4_~ ges16-[ es des c]
              |
              f16-[ bes a g!] f-[ es d c] bes4_~
              |
              bes8
              \relative c'' { g8\rest g8\rest }
              es,8_~ es16-[ g as bes]
              |
              es,16-[ es' des! c] bes-[ as g f] es4
              |
              es8 \relative c' { e8\rest e4\rest } es8_.-[ g_.]
              |
              as8-[ bes] c-[ des] es4_\sf
              |
              des16-[ f es des]
              c-[ bes as ges]
              f4
              |
              s8 ges8 as4._\sf bes8_~
              |
              bes4
              \relative c' { e4\rest }
              des,8-[ f]
              |
              ges4. as8 bes8-[ ges'_(]
              |
              fis16-[) d cis bes] ais-[ g fis e]
              des4
              |
              s8 e8 fis4._\sf cis'8
              |
              d8 cis16-[ b] d-[ b g fis]
              b-[ fis e d]
              |
              fis-[ d cis b]
              d-[ b
              \change Staff = "left"
              \stemUp
              g fis]
              g-[ fis gis ais]
              \change Staff = "right"
              \stemDown
              |
              b-[_( cis d e]
              fis-[ g fis eis]
              e-[ d cis b])
              |
              cis16-[ d cis bis]
              b-[ ais gis fis]
              gis-[ ais b ais]
              |
              b-[ cis d cis]
              d-[ e] \relative c' e8\rest e4
              |
              b16-[ cis d e] fis-[ g] \relative c'' g8\rest g4
              |
              d16-[ e fis gis] ais-[ b] \relative c'' g8\rest b4
              |
              \afterGrace ais2\startTrillSpan { gis16-[\stopTrillSpan ais] }
              \stemUp s8 \stemDown
              s8
              |
              \relative c' { e4\rest }
              b,8
              \relative c' { b8\rest }
              d'4_~\startTrillSpan
              |
              d4\stopTrillSpan
              e4 g,
              |
              s4 s4 \relative c' { b8\rest } a8
              |
              b8-[ g fis eis] fis4_~
              |
              fis4 e! s4
              |
              s2 g'4
              |
              d16-[ e fis g] a-[ b]
              \relative c'' f8\rest b4
              |
              fis16-[ g a b] cis-[ d] \relative c'' f8\rest d4
              |
              \trillSpanUp
              cis2\startTrillSpan s4\stopTrillSpan
              |
              \trillSpanDown
              ais,2.\startTrillSpan
              |
              b2\stopTrillSpan fis4
              |
              e2 cis4
              |
              e4 d cis_~
              |
              cis b b
              |
              b4 fis4 d'4
              |
              cis4 fis,4 r4_\<
              |
              % TODO: stop the descresc a little early, maybe.
              r4\> r4 d'4_(\!
              |
              cis4 fis,4) s4
              |
              s2.
              |
              s2.
              |
              \trillSpanDown
              d'2\startTrillSpan cis4\stopTrillSpan
              |
              r4 \relative c' { b8\rest } cis16-[ d] e-[ fis g a]
              |
              r4 \relative c' { b8\rest } e16-[ fis] g-[ a b cis]
            }
          >>
          |
          <<
            \relative c''' {
              g16-[^( fis e d] cis-[ b]) r8 b4^.
              |
              e16-[^( d cis b] a-[ g]) \relative c'' { d8\rest } g4^.
              |
              fis4^\markup { \italic "non ligato" } \relative c'' { d8\rest } fis16-[ g] a-[ b cis d]
              |
              a4 r8 a16-[ b] cis-[ d e fis]
              |
              b,4 r8 b16-[ cis] d-[ e fis g]
              |
              % TODO: no rest here for some reason. added it.
              g4 \relative c''' { a8\rest } g16-[ a] b-[ cis d e]
              |
              fis-[ e d cis] b-[ a] \relative c''' { a8\rest } a4
              |
              d16-[ cis b a] g-[ fis] r8 fis4
            }
            \\
            \relative c'' {
              \relative c' { e4\rest e8\rest }
              g16-[ fis] e-[ d cis b]
              |
              \relative c' { c4\rest c8\rest }
              e16-[ d] cis-[ b a g]
              |
              d'16-[_\f cis b a] g-[ fis]
              \relative c' { a8\rest } s4
              |
              fis'16-[_\sf e d cis] b-[ a]
              % TODO: check if this is a desirable position for r8.
              \relative c' { a8\rest } a4
              |
              g'16-[_\sf fis e d] cis-[ b]
              \relative c' { c8\rest } g'4
              |
              e'16-[_\sf d cis b] a-[ g]
              \relative c'' { g8\rest } g'4
              |
              fis4 \relative c'' { g8\rest }
              s8 s4
              |
              % TODO: another missing rest, added it.
              d4 \relative c'' { g8\rest }
              s8 s4
            }
          >>
          |
          % Todo: should this be stem up?
          r4 r8 \stemUp d16-[ e] fis-[ g a ais]
          |
          b-[\sf a g fis] e-[\sf d g fis] e-[\sf d c b]
          |
          e16-[\sf d cis b] a-[\sf gis]
          <<
            \relative c'' {
              g4.^~
              |
              % TODO: \sf on the correct side?
              g4 fis2^\sf
              |
              fis4 b2^~^\sf
              |
              b8 a4 gis8-[ g f^~]
              |
              f8-[ e]
              bes4. \clef bass bes8_~
              |
              bes16-[ gis a8_~] a16-[ cis d8_~] d16-[ cis d8_~]
              |
              d16-[ eis, fis8^~] fis16-[ fis g8^~] g16-[ a b!8^~]
              |
              b16-[ ais b8^~] b16-[ dis e8^~] e16-[ fis g8^~]
              |
              g8-[ gis8] \clef treble a4.^\sf g8
              |
              fis4 \relative c'' { g8\rest } fis8-[ dis b8_~]
              |
              b8-[ b'] c4.^\sf b8
              |
              a8 r8 r8 a8-[ fis d]
              |
              d8-[ d'16 c] b4_~ b8-[ e^~]
              |
              % TODO: really c slurred to cis?
              e8-[ 16^( d]) c4^( cis8)-[ g'^~]
              |
              g8-[ 16 fis] e4^~ e8-[ b16 b'^~]
              |
              b8-[^( 16 g] fis8-[ a gis a])
              |
              c8_\ff r8
              a,2\startTrillSpan
              |
              g4_\sf\stopTrillSpan
            }
            \\
            \relative c' {
              e16-[ d] cis-[ b a gis]
              |
              e'-[ d cis d] e4_~ e16-[ cis d e]
              |
              % TODO: fix this overlap
              d2 \stemDown \relative c' gis16 \stemUp d16-[ b f']
              |
              \stemDown
              fis4 d16-[ fis] f16-[ d bes e d a]
              |
              bes4 s2
              |
              s2.
              |
              s2.
              |
              s2.
              |
              s2.
              |
              s2.
              |
              s4 r8 g'8-[ e c_~]
              |
              c8-[ cis] d4._\sf c8
              |
              b16-[ c b a] g-[ a b c] cis-[ d gis, d']
              |
              \bar "||"
              \key g \major
              c!16-[ d c b] a-[ b c d] dis-[ e ais, e']
              |
              d!-[ e d cis] b-[ cis d e] f-[ fis g f]
              |
              e-[ f e d] c d e d c d c b
              |
              s2 fis'4
            }
          >>
          r8 g16-[ a] b-[ c d e]
          |
          b4\sf r8 b16-[ c] d-[ e fis g]
          |
          d4\sf r8 d16-[ e] fis-[ e fis g]
          |
          a16-[ gis a b] c b a gis fis es d e
          |
          fis e d c b a g a b c d dis
          |
          e g fis e d! g fis g
          <<
            \relative c'' {
              cis4
              |
              c2 b4
              |
              cis8-[ d e fis] g4_\sf_~
              |
              g8-[ fis e g16 fis] fis,4
              |
              \relative c'' { b4\rest b8\rest }
              e'16-[ d] d,4
              |
              \relative c'' { b4\rest b8\rest }
              b''16-[ a] fis-[ d cis b]
              |
              % TODO: check bes
              bes4 a4. bes8
              |
              cis16-[ bis cis d] e dis e fis g fis e d
              |
              cis bes a b c b a g fis g a b
              |
              c!2\startTrillSpan b4\stopTrillSpan
              |
              a2\startTrillSpan gis16\stopTrillSpan b gis e
              |
              g!2\startTrillSpan fis16\stopTrillSpan a fis d
              |
              \relative c''' { a4\rest a8\rest }
              b''8
              \relative c''' { c8\rest } e8
              |
              \relative c''' { a4\rest a8\rest }
              a,8
              \relative c''' { c8\rest } d8
              |
              \relative c'' { f4\rest f8\rest }
              g,8
              \relative c''' { a8\rest } c8
              |
              c16-[_\ff e, fis g] as8
              \relative c'' { f8\rest a16\rest }
              bes,16-[ c d]
              |
              \bar "||"
              \key es \major
              es4\relative c'' { f4\rest } e16-[ d c bes]
              |
              es bes es d c bes as g g'4^~^\sf
              |
              g16 f as g f es d c bes4^~
              |
              bes4^~ bes16-[ c d es] f4^~
              |
              f16-[ g as a] bes4 as16-[ g f es]
              |
              \override TrillSpanner.to-barline = ##t
              c'8_\ff r8 as,2_\sf\startTrillSpan
              |
              f'16\stopTrillSpan g as bes c d es e f-[ g as8]
              |
              bes8
              \relative c''' { a8\rest }
              g,2\startTrillSpan
              |
              es16\stopTrillSpan f g as bes c des d e f ges g
              |
              as8
              \relative c''' { e8\rest }
              f,2
              |
              \relative c''' { c16\rest }
              bes16-[ c d] es d es f g f g as
              |
              bes8
              \relative c''' { e8\rest }
              g,2
              |
              \relative c''' { a8\rest }
              c16-[ e] f g as g f es d c
              |
              s8
              d,8-[
              \once \override Script.extra-offset = #'(0 . 1)
              b,^\trill]
              %\undo \override Dynamics.extra-offset;
              \relative c''' { e8\rest g8\rest }
              g''8
              |
              e,8^\trill
              \relative c''' { e8\rest g8\rest }
              c''8-[
              \once \override Script.extra-offset = #'(0 . 1)
              a,^\trill]
              s8
              |
              s8
              d'8-[
              \once \override Script.extra-offset = #'(0 . 1)
              bes,^\trill]
              \relative c'''' { g8\rest d'8\rest }
              g''8
              |
              e,8^\trill
              \relative c'''' { b8\rest g'8\rest }
            }
            \\
            \relative c' {
              \stemUp
              \change Staff = "left"
              bes16-[
              \change Staff = "right"
              \stemDown
              g' fis g]
              |
              a8-[ es fis a_~] a8-[ g]
              |
              \relative c' { e4\rest } g8 \relative c' { e8\rest } s4
              |
              s2.
              |
              s2.
              |
              s2.
              |
              cis,16 bis cis dis e dis e fis g fis e d
              |
              s2.
              |
              s2.
              |
              s2 g4
              |
              s2 e4
              |
              s2 d4
              |
              fis16 e fis g a b c dis e8
              \relative c'' { b8\rest }
              |
              e,16-[ d e fis]
              g a b cis d8
              \relative c'' { b8\rest }
              |
              d,16 c d es f g a b c8
              \relative c'' { b8\rest }
              |
              \relative c' { e4\rest g16\rest }
              e,16-[ fis g] as4_~
              |
              as16-[ g bes as]
              g f es d
              es4_~\sf
              |
              % TODO: no rest here?
              es4 s4 es'16 d c bes
              |
              d4
              \relative c' { e4\rest }
              f,16-[ g f es]
              |
              d c d es f4_~ f16 g as a
              |
              bes4_~
              bes16-[ c d es] f es d es
              |
              s2.
              |
              as8
              \relative c'' { g8\rest }
              \override TrillSpanner.to-barline = ##t
              f,2\startTrillSpan
              |
              s4\stopTrillSpan
              d16_\sf es f g as16-[ a bes8]
              |
              s2.
              |
              bes'16 as g f es d c bes a bes f as
              |
              g8
              \relative c'' { b8\rest }
              bes'2
              |
              \relative c'' { b8\rest }
              as16-[ g] f e des c b c g bes
              |
              as8
              \relative c'' { b8\rest }
              c'4.
              fis,8
              |
              <g b>8
              s4
              g,,8-[ b'^\trill] s8
              |
              s8 c,8-[ es'^\trill]
              s4
              d,8
              |
              fis'8^\trill
              s4
              g,8-[ bes'^\trill]
              s8
              |
              \bar "||"
              \key d \minor
              s8
              cis,8-[ e'^\trill]
            }
          >>
          \stemNeutral
          <a a'>8-[ <f f'>]
          <d d'>
          |
          <a a'>\sf-[ <f f'> <d d'>\sf <a a'> <gis d' gis>\sf <gis' d' gis>]
          |
          <ais cis ais'>8^._\f r8 <ais' cis e ais>^. r8 r4
          |
          R2.
          |
          \bar "||"
          \key d \major
          <<
            \relative c'' {
              d4\rest^\markup { \italic "una corda" } a4^( g
              |
              fis g a
              |
              d, e fis
              |
              g2
              fis4)
              |
              e2
              a4^~
              |
              a2.
              |
              b4 cis d
              |
              a g fis^~
              |
              fis e2^~
              |
              e4 e' d
              |
              cis d e
              |
              a, b c
              |
              d2
              cis4^~
              |
              cis4 b a^~
              |
              a4 g fis
              |
              e2 a4^~
              |
              a4 fis b_~
              |
              b4^( e d
              |
              cis fis e)
              |
              d a' g
              |
              fis dis fis
              |
              b, a b
              |
              cis d! e^~
              |
              e d cis
              |
              b2.^~
              |
              b4 a c4^~
              |
              c4 b cis^~_\textCresc "ri"
              |
              cis d_\textCresc "tar" es^~
              |
              es4_\textCresc "dan" d des_\textCrescEnd "do"
              |
              \bar "||"
              \key bes \major
              % TODO: t.c. markup
              c8\!^\markup { \italic "t.c." } d8\rest_\pp f4 es
              |
              d es f
            }
            \\
            \relative c {
              \override MultiMeasureRest.staff-position = #-4
              R2.
              |
              R2.
              |
              f4\rest d'4_( c
              |
              b cis! d_~)
              |
              d cis2_(
              |
              dis4 e fis_~)
              |
              fis e d!_~
              |
              d e a,
              |
              ais b cis
              |
              d a'! b_~
              |
              b a g
              |
              fis g a
              |
              d, e fis
              |
              g2 fis4_~
              |
              fis e d_~
              |
              d cis2
              |
              dis2.
              |
              e4 s2
              |
              s2.
              |
              s2.
              |
              s4 b'4 a
              |
              g fis gis
              |
              a b cis
              |
              a f e
              |
              d2._~
              |
              \voiceOne
              d4 cis dis_~
              |
              dis e
              \voiceTwo
              g4_~
              |
              g4 fis g
              |
              s2.
              |
              \override TrillSpanner.to-barline = ##t
              \trillSpanDown
              s4 a2\startTrillSpan
              |
              bes4\stopTrillSpan
              g8\rest bes16-[ a] g f es d
              |
            }
          >>
          <<
            \relative c'' {
              b4 c d
              |
              \voiceOne d, r4 r4
              |
              R2.
              |
              r4 c'4^( bes
              |
              a bes c
              |
              \override TrillSpanner.to-barline = ##t
              f,8) r8 a'2_\f\startTrillSpan
              |
              a8\rest\stopTrillSpan bes16-[_\sf a] g! f es d
            }
            \\
            \relative c'' {
              g4 r8 g16 f es d c b!
              |
              % TODO: this is ugly. See if we can fix this.
              \once \override NoteColumn.force-hshift = 1.5
              b'8 g8\rest g4_( f4
              |
              e f g
              |
              c, d e
              |
              f g a
              |
              es!8) c'4 f ges8
              |
              r4 r4
            }
          >>
          r4
          |
          \stemUp
          % TODO: fix these rests, they are not in the right position
          r4 r8 g16\sf f es d c bes
          |
          r2 r8 f'16\sf e
          |
          des c bes a r2
          |
          r8 d'16 c bes a g fis r4
          |
          r4 r8 es16 d c bes a g
          |
          <<
            \relative c' {
              f16-[ e bes'8] \relative c'' { b4\rest b4\rest }
              |
              R2.
              |
              R2.
              |
              \relative c'' { g8\rest }
              f16 e d c bes a c4
              |
              \relative c'' { g8\rest }
              d16-[ c]
              s2
              |
              \relative c'' { g8\rest }
              bes'16 a g\sf a g f
              s4
              |
              s2.
              |
              \relative c''' { a4\rest } es'8
              \relative c''' { a8\rest }
              c,4_~\startTrillSpan
              |
              c4 bes4\stopTrillSpan
              \relative c'' b8\rest
              bes16-[ c]
              |
              d16-[ es f g] es4
              \relative c'' b8\rest
              d16-[ es]
              |
              f16 g a bes g4
              \relative c'' d8\rest
              f16-[ g]
              |
              a g a bes c bes c d es d c d
              |
              es d cis c bes a g a bes a g f
              |
              f fis' g f es d c bes a bes a g
              |
              f_\sf g a bes c_\sf cis d c d es f g^~
              |
              g c, d e f g a bes c a g f
              |
              s2.
              |
              s2.
              |
              c2\startTrillSpan bes4\stopTrillSpan
              |
              bes2\startTrillSpan a8-[\stopTrillSpan as]
              |
              a2\startTrillSpan g4\stopTrillSpan
              |
              s4. g8-[ e f]
              |
              s4. a8-[ fis g]
              |
              s4. bes8-[ g a]
              |
              c8-[ f^~] f-[ d c bes]
              |
              a8-[ as] g'4.^\sf f8
              |
              f8-[^( es d c! b! c])
              |
              f8 \relative c''' { a8\rest } es4.^\sf 8
              |
              es8-[^( d c bes a bes)]
              |
              R2.
              |
              c8 \relative c'' { f8\rest } bes4.^\sf bes8
              |
              a16 bes a g f g a bes b c d c
              |
              bes! c d es e f g f b, d es f
              |
              b, c d c d es f es a, c d es
              |
              e f g f a bes! c bes fis g a g
              |
              gis a bes a b c d c e, fis g fis
              |
              g gis a g bes! b c bes gis a bes a
              |
              cis d es d b c d bes cis,\f d c bes
              |
              b8-[^\sf c] bes-[^\sf a] cis-[^\sf d]
              |
              c!-[^\sf bes] dis-[^\sf e] fis-[^\sf g]
              |
              <e, g bes>8_\ff \relative c'' f8\rest
              \afterGrace e''2\startTrillSpan { d16-[\stopTrillSpan e] }
              |
              g4 \relative c''' { b8\rest }
              g16-[ f] es-[ d c bes]
              |
              \relative c''' { c8\rest }
              a8-[ a'] s8 s4
              |
              \relative c''' { a8\rest }
              f,8-[ f'] s8 s4
              |
              \relative c''' { a8\rest }
              d,8-[ d' c] bes-[ b]
              |
              c8 \relative c''' { a8\rest } b4. b8
              |
              f16 g a bes b c d c bes a g f
              |
              d'8 \relative c''' { a8\rest } c4. c8
              |
              g16 a bes c cis d es d c bes a g
              |
              f'8 \relative c''' { a8\rest } es4. es8
              |
              bes16 c d es e f g f e f ges f
              |
              d es f es c des es des b c des c
              |
              \relative c''' { a8\rest } ges'8
              f,16 es f es f es d! es
              |
              d4 \relative c''' { a8\rest }
              d16 es f g a bes
              |
              f4 \relative c''' { c8\rest }
              f16 g a bes c d
              |
              g,4 \relative c''' { c8\rest }
              g16 a bes b c d
              |
              es8-[ e^~] e16 f es d c bes! a g
              |
              f16 g f es d es f e f8 r8
              |
              % TODO: proper spacing of these notes.
              r4 b,,8 r8 es'4^~\startTrillSpan
              |
              \afterGrace es4 { d16-[\stopTrillSpan es] } g4 r8 g16-[ f]
              |
              es16 d c b c4 r8 c16 bes
              |
              a16 g f e d c bes a a'8 s8
              |
              \relative c'' { d4\rest d4\rest d8\rest }
              es'!16 d
              |
              c bes a g f es d c c'8 s8
              |
              \relative c'' { f4\rest f4\rest }
              d16 c f es
              |
              d16 c bes a a' g f es bes' a g f
              |
              es8 \relative c''' { a8\rest } a'2\startTrillSpan
              |
              bes4\stopTrillSpan
              \relative c''' { a8\rest } bes16 a g f es d
              |
              g8 g,
              \relative c''' { e8\rest }
              g'16 f es d c bes
              |
              es4 \relative c''' { f8\rest } es16 d c d c bes
              |
              a bes a g! f g a bes b c d c
              |
              bes! c d es f as, a bes c8 bes
              |
              bes8-[^( as g f]) s4
              |
              s2.
            }
            \\
            \relative c' {
              \relative c' { b8\rest }
              d16 c bes-[ a
              \change Staff = "left"
              \stemUp
              g f]
              es d c' bes
              \change Staff = "right"
              \stemDown
              |
              s2.
              |
              \trillSpanUp
              e2_\sf\startTrillSpan f4\stopTrillSpan
              |
              s2.
              |
              s2.
              |
              s2
              e16 f e d
              |
              c\sf d es f fis\sf g a g f\sf g a bes
              |
              b\sf c d c d\ff c bes a s4
              |
              s4 s4 \relative c' a4\rest
              |
              \relative c' g8\rest d,16-[ c] bes-[
              \change Staff = "left"
              \stemUp
              a g f] bes4
              \change Staff = "right"
              \stemDown
              |
              \relative c' b8\rest bes8_~
              bes16-[ b c d] es4
              |
              \relative c' b8\rest
              es4 e f8_~
              |
              % TODO: really a slur?
              f4. es!8 d4_(
              |
              c8) \relative c'' { g8\rest e4\rest c4\rest }
              |
              \relative c' { a4\rest e'4\rest } bes'8_\sf \relative c'' g8\rest
              |
              s2.
              |
              es16 d e fis g a bes c d bes a g
              |
              f! es f g a-[ bes c d] es8
              \relative c'' g8\rest
              |
              a,,4 es d8-[ des]
              |
              g4 des c8-[ ces]
              |
              f4 ces bes8-[ e]
              |
              s2.
              |
              s2.
              |
              s2.
              |
              a16-[ f g a] bes a bes f g fis g c,_~
              |
              c16\noBeam s8. g'16-[ a b c] cis d es d
              |
              s4 fis,16-[ g as g] s4
              |
              a16 bes a g f g a bes b c d c
              |
              s4 e,16 f g f s4
              |
              b,16 c b a g a b c cis d es d
              |
              c d e f fis g as g f e des c
              |
              R2.
              |
              % TODO: check rest postitions
              \relative c' { c4\rest c4\rest }
              g'8-[\sf f]
              |
              f8-[_( es d c]) s4
              |
              % TODO: these rests/spaces don't seem correct
              \relative c' { e4\rest e4\rest }
              es'8-[\sf d]
              |
              d8-[_( c bes a]) d-[ c]
              |
              % TODO: put these together?
              c8-[_( bes] d-[ es]) d-[ c]
              |
              e8-[ f] es-[ d] s4
              |
              a16-[ d, g e] d e cis e bes' e, a fis
              |
              es! fis d g bes a bes g des' c des bes
              |
              s4
              <bes' des>2
              |
              \trillSpanDown
              \override TrillSpanner.to-barline = ##t
              \relative c'' { g8\rest } bes,,8 e'2_\sf\startTrillSpan
              |
              f4\stopTrillSpan \relative c'' { b8\rest } f16-[ es] d-[ c bes a]
              |
              d4 \relative c'' { b8\rest } d16-[ c] bes a g f
              |
              bes4 \relative c'' { b8\rest } bes16 a g a g f
              |
              e f e d c d e f fis g a g
              |
              bes8 \relative c'' { g8\rest } a4. a8
              |
              fis16 g fis e d e fis g gis a bes a
              |
              c8 \relative c'' { b8\rest } bes4. bes8
              |
              a16 bes a g f g a bes b c d c
              |
              es8 \relative c'' { b8\rest } d4. es16-[ des]
              |
              b16 c des c a bes c bes gis a bes a
              |
              es8 \relative c'' { b8\rest } <ges_~ bes>2_\sf
              |
              ges8-[ <bes, f'> bes']
              % TODO: height of rests
              \relative c' { e8\rest e4\rest }
              |
              \relative c' { e8\rest }
              d,8-[ d']
              \relative c' { e8\rest e4\rest }
              |
              \relative c' { e8\rest }
              es,8-[ es']
              \relative c' { e8\rest e4\rest }
              |
              s2 a,4_~\startTrillSpan
              |
              \afterGrace a4 { g16-[\stopTrillSpan a] } bes4
              \relative c'' { g8\rest } bes16-[ a]
              |
              g f es d g4 r8 g16 f
              |
              es d c b es4 r8 es16 d
              |
              c16 b a g es'4 g4
              |
              c,4 s4 \relative c' { b8\rest } d16 c
              |
              bes16-[ a
              \stemUp
              \change Staff = "left"
              g f]
              \stemDown
              \change Staff = "right"
              s4 s8 \relative c' { b8\rest }
              |
              \relative c' { g4\rest g4\rest g8\rest }
              c'16-[ bes]
              |
              \stemUp
              \change Staff = "left"
              a g f es d
              \stemDown
              \change Staff = "right"
              c' bes a d8
              \relative c' { b8\rest }
              |
              \relative c' { b4\rest b4\rest } f'4
              |
              g,8 c \relative c'' b8\rest c'8 \relative c'' b8\rest e
              |
              \relative c'' b8\rest d8 \relative c'' b2\rest
              |
              es,,8 \relative c'' g8\rest g'2_~\startTrillSpan
              |
              g8\stopTrillSpan gis a8\noBeam s8 s8 e,8
              |
              f8 \relative c'' g8\rest <es ges>4.\sf 8
              |
              8-[ <d f> <c es> <b d>] s4
              |
              g''8-[ f bes, as] <f'' as>-[^(\ff <es g>])
              |
              <es g>^(-[ <c es>]) <bes d>-[^( <d f>])
              <c, es a>8-[^( <bes d bes'>])
            }
          >>
          |
          r4
          <<
            \relative c''' {
              as8_\p \relative c''' a8\rest
              fis,4_\cresc_~\startTrillSpan
              |
              fis4\stopTrillSpan ges'8 \relative c''' a8\rest
              es,4_\ff_~\startTrillSpan
              |
              es8.-[ d32\stopTrillSpan es] ges16 s8. s4
              |
              ges16^\sf s8. s4 s16 a16-[ c es]
              |
              ges16-[ a c es] ges16_\sf s8. s16 a,,,16-[ c es]
              |
              % TODO: put this on lower staff?
              ges16 \clef bass
              a,,16-[ c es] ges4 <ges,_~ a^~ es'^~>4
              |
              8-[ <f as d>] \clef treble
              bes''16-[\pp as bes as] bes as g as
              |
              ces4 \relative c'' f8\rest g'8-[ as] \relative c'' f8\rest
              |
              as,4 r8 e'8-[ f] r8
              |
              ges,4 \relative c'' d8\rest d'8-[ es] es,8^~
              |
              es16 f es d! es des c! b! c b c des
              |
              es8 \relative c'' b8\rest c4. c8
              |
              s2.
              |
              s2.
              |
              \afterGrace a''2\startTrillSpan { g16-[\stopTrillSpan a] } bes4
              |
              \relative c'' d4\rest <bes, des>4 c4
              |
              \relative c'' f4\rest es4 <f, c' es>4
              |
              4. g'16-[ f] es d c b
            }
            \\
            \relative c'' {
              g2\rest
              |
              s2.
              |
              s2.
              |
              \relative c' { b16\rest } a,16-[ c es] ges-[ a c es] ges16_\sf s8.
              |
              s4 s16 a,16-[ c es] ges16_\sf s8.
              |
              s2.
              |
              s2.
              |
              r8
              \change Staff = "left"
              \stemUp
              as,,8-[
              \stemDown
              \change Staff = "right"
              as'] ces16-[ bes] as-[ ges f es]
              |
              \relative c' b8\rest
              \change Staff = "left"
              \stemUp
              f,8-[
              \stemDown
              \change Staff = "right"
              f'] as16 ges f es d ces
              |
              r8
              \change Staff = "left"
              \stemUp
              es,8-[ es']
              \stemDown
              \change Staff = "right"
              ges16 f es des ces bes
              |
              \change Staff = "left"
              \stemUp
              a8 \relative c' a8\rest ges4. 8
              |
              ges8-[ f] f-[ es d! es]
              |
              <es c'>-[ <d bes'>] <es a>-[ <d bes'>] <a es' ges>-[ <bes d f>]
              |
              <ges' a es'>-[ <f bes d>]
              \stemUp
              \change Staff = "right"
              <es' ges a>-[ <d f bes>]
              \stemDown
              <a' es' ges>-[ <bes d f>]
              |
              <c es>2 <bes des>4
              |
              \afterGrace es,2\startTrillSpan { d16-[\stopTrillSpan es] }
              f4
              |
              \afterGrace a2\startTrillSpan { g16-[\stopTrillSpan a] }
              s4
              |
              s2.
            }
          >>
          |
          es'4 r8 g,16 f es d c b
          |
          es4 r8 \stemUp g'16 f es d c b
          |
          g' f es d c bes a g f es d c
          |
          \change Staff = "left"
          bes a g f es d c bes a g f e
          |
          <f f'>8
          \change Staff = "right"
          r8
          \stemNeutral
          <a'' a'>2_\sf\startTrillSpan
          |
          <bes bes'>8\stopTrillSpan r8
          <g, g'>8 r8 <b'_~ b'>4\startTrillSpan
          |
          4 <c c'>8\stopTrillSpan r8 <a, a'>8 r8
          |
          \afterGrace <cis' cis'>2\startTrillSpan { b'16-[\stopTrillSpan cis] }
          <d, d'>4
          |
          <bes, bes'>8 r8 <d' d'>2\startTrillSpan
          |
          <es es'>8\stopTrillSpan r8 <c,! c'!>8 r8 <es'_~ es'^~>4\startTrillSpan
          |
          4 <f f'>8\stopTrillSpan r8 <d, d'>8 r8
          |
          \afterGrace <fis' fis'>2\startTrillSpan { e'16-[ fis] } <g, g'>8\stopTrillSpan r8
          |
          <es,! es'!>8 r8 <a' c es f! a>4. r8
          |
          <bes d f bes>4. r8 <a,_~ c_~ es_~ f^~ a^~>4
          |
          8 r8 r4 <bes_~ d_~ f^~ bes^~>
          |
          2.\fermata
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
          as16-[ c, es as] c8^.-[ des^.] es4
          |
          r4 r4 r16 bes16-[ c des]
          |
          c4 r16 as16-[ g f]
          <<
            \relative c' {
              \relative c' { e16\rest } g16-[ as bes]
            }
            \\
            \relative c {
              es4
            }
          >>
          |
          r4 r16
          des16-[ c bes] c8-[ d16 e16]
          |
          f4 r4 r16 e16-[ f g]
          |
          as8^.-[ bes^.] c4^~ c16-[ as g f]
          |
          c'16-[ f e d] c-[ bes as g] f8 r8
          |
          c'16-[ es des c] bes-[ a g f] es4
          |
          des16-[ des' c bes] a-[ g f es] des4
          |
          c16-[ c' bes a] ges16-[ f es des] c4
          |
          \stemNeutral
          <d, d'>8^.-[ <es es'>^.] <f_~ f'^~>4^\sf <f f'>16-[ d' c bes]
          |
          <es, es'>8_.-[ <f f'>_.] <g_~ g'^~>4_\sf <g g'>16-[ es' ces bes]
          |
          <g g'>8^.-[ <as as'>^.] <bes_~ bes'^~>4_\sf <bes bes'>16-[ g' f es]
          |
          <as, as'>8^.-[ <bes bes'>^.] <c_~ c'^~>4_\sf <c c'>16-[ as' es c]
          |
          as'16-[ es c as] es'-[ c as es] ges-[ es' c ges]
          |
          <f f'>8^.-[ <ges ges'>^.] <as_~ as'^~>4\sf <as as'>16-[ f' des as]
          |
          f'-[ des as f] des'-[ as f des] as'-[ f es des]
          |
          <bes' bes'>8^.-[ <ces ces'>^.] <des_~ des'^~>4\sf <des des'>16-[ bes' g des]
          |
          \key es \minor
          bes'16-[ ges des bes] ges'-[ des bes ges] des'-[ bes as ges]
          |
          <d d'>8^.-[ <e e'>^.] <fis_~ fis'^~>4 <fis fis'>16-[ d' b fis]
          |
          \key b \minor
          d'16-[ b fis d] b'-[ fis d b] fis'-[ d cis b]
          |
          fis8 r8 r4 r4
          |
          \once \override MultiMeasureRest.staff-position = #-2
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
          <<
            \relative c {
              s4 s4 fis8 a8\rest
            }
            \\
            \relative c {
              R2.
            }
          >>
          |
          R2.
          |
          r4 r4 \stemDown a'8 \relative c b8\rest
          |
          cis'2\startTrillSpan d4\stopTrillSpan
          |
          r4 r4 a4
          |
          g2
          <<
            \relative c' {
              g4
              |
              b a g4^~
              |
              g4 fis g
              |
              g8-[^( fis e fis] gis-[ a])
              |
              g2 fis8 r8
              |
            }
            \\
            \relative c {
              e4
              |
              fis2 e4
              |
              e d d
              |
              d4_( a fis'
              |
              e ais,) r4
              |
            }
          >>
          |
          r4 r4 fis16 e d cis
          |
          b cis d e fis g fis eis e d cis b
          |
          cis^( d cis bis b ais gis fis gis ais b ais
          |
          b cis d cis d e) r8 e4
          |
          b16-[ cis d e] fis-[ g] r8 g4
          |
          d16-[^( e fis gis] ais-[ b]) r8 b4
          |
          ais2\startTrillSpan
          fis,8-[\stopTrillSpan gis16 ais]
          |
          b-[ cis d e] fis8 r8
          <<
            \relative c' {
              \stemDown
              b4
              |
              \trillSpanDown
              % TODO: ensure trill and cresc play nicely
              ais2\startTrillSpan
              \stemUp
              fis4\stopTrillSpan
              |
              \trillSpanUp
              d2\startTrillSpan
              b8-[\stopTrillSpan bes]
              |
              a4 \relative c' { a4\rest } fis'4
            }
            \\
            \relative c, {
              s4
              |
              s2 fis4
              |
              r4 r4 r8
              cis8
              |
              d16-[_( e fis g] a-[ b])
              \relative c { b8\rest } b4
            }
            \\
            \relative c {
              % TODO: check this cresc
              s4_\<
              |
              s4 s4_\>
              s4\!
            }
          >>
          |
          g,16-[_( a b cis] d-[ e]) r8 e4
          |
          cis16-[_( d e fis] g-[ a]) r8 a4
          |
          e16-[_( fis g a] b-[ cis]) r8 cis4
          |
          e16-[ d cis b] a-[ g] r8 g4
          |
          cis16-[ b a g] fis-[ e] r8 e4
          |
          d,16-[ e fis g] gis-[ a] r8
          <<
            \relative c {
              fis4
            }
            \\
            \relative c {
              a4
            }
          >>
          |
          fis16-[ g a b] cis-[ d] r8 d4
          |
          g,16-[ a b cis] d-[ e] r8 e4
          |
          cis16-[ d e fis] g-[ a] r8 a4
          |
          d,16-[ cis b a] g-[ fis]
          <<
            \relative c {
              fis16-[ g] a-[ b cis d]
              |
              s4 s8
              d,16-[ e] fis-[ g a b]
              |
              b16-[ a g fis] e-[ d]
              s8 d4
            }
            \\
            \relative c {
              g8\rest g4\rest
              |
              b16-[ a g fis] e-[ d]
              e8\rest e4\rest
              |
              g'16-[ fis e d] cis-[ b]
              \relative c d8\rest
              b4
            }
          >>
          |
          g16-[ a b c] d-[ e
          b c] d-[ e fis g]
          |
          a,-[ b cis d] e-[ f]
          a,-[ b] cis-[ d cis b]
          |
          ais4_~ ais16-[ gis fis fis] ais4
          |
          b16-[ cis b a] gis-[ d' b f']
          s16 \relative c' { e16\rest c8\rest }
          |
          a,16-[ fis' d a'] fis-[ d']
          <<
            \relative c {
              b8-[ cis d]
              |
              s4 r8 g8 e4
              |
              f8.-[ eis16] f8.-[ g16] a8.-[ ais16]
              |
              \change Staff = "right"
              \stemDown
              b8.-[ c,16] d8.-[ dis16] e8.-[ fis16]
              |
              g8.-[ fis16] g8.-[ a16] b8.-[ bes16]
              |
              a4 \relative c' a8\rest
              \change Staff = "left"
              \stemUp
              e'8-[ cis a^~]
              |
              a8-[ ais] b4.^\sf a8
              |
              g8 r8
            }
            \\
            \relative c, {
              s4.
              |
              g8_\ff \relative c, { c8\rest }
              cis'2\startTrillSpan
              |
              d4\stopTrillSpan \relative c { g8\rest }
              d16-[ cis] b-[ a g fis]
              |
              b4 \voiceOne \relative c { d8\rest }
              b16-[ a] g16-[ fis e d]
              |
              g4 r8 g16-[ fis] e16-[ dis e d]
              |
              \voiceTwo cis-[ d cis b] a-[ b cis d] dis-[ e fis e]
              |
              d-[ e d cis] b-[ cis d e] eis-[ fis g fis]
              |
              e-[ f e d] c-[ d e f] fis-[ g a g]
              |
              fis-[ g fis e] d-[ e f g] gis-[ a b a]
              |
              g8 \relative c d8\rest g'8-[ f] e8 \relative c d8\rest
              |
            }
          >>
          \bar "||"
          \key g \major
          gis,4^( a8-[ g] fis8) r8
          |
          ais4^( b8-[ a] g) r8
          |
          b4^( c8-[ b a g])
          |
          <<
            \relative c' {
              a16-[ b a g]
              fis4 s4
              |
              \relative c' { a4\rest a8\rest }
              a8 g4
              |
              \relative c' { a4\rest a8\rest }
              f8 e8-[ d]
              |
              c8 s8 s4 s4
              |
              a4 \relative c' { c8\rest }
              e'8-[ fis g]
              |
              a8-[ b c b a g^~]
              |
              g8 c4 b8 s8 s8
              |
              s2.
              |
              s2
              % TODO: I added a tie here.
              d,4^~\startTrillSpan
              |
              \afterGrace d4 { cis16-[\stopTrillSpan d] } cis4
              s8
              d16-[ e]
              |
              fis-[ g a b]
              fis4 r8 fis16-[ g]
              |
              a16-[ b c d] a4 \relative c' { c8\rest } a16-[ b]
              |
              s2.
              |
              a16-[ gis a b]
              cis8-[ cis,16 d] e4^~
              |
              e8-[ fis16 g] a-[ g fis e] d-[ e fis g]
              |
              a16-[ b c d]
              e16-[ d
              \stemDown
              \change Staff = "right"
              e fis]
              \change Staff = "left"
              \stemUp
              s4
              |
              fis,16-[ e fis g] a-[ b
              \stemDown
              \change Staff = "right"
              cis dis]
              \change Staff = "left"
              \stemUp
              s4
              |
              e,16-[ d e fis] g-[ a
              \stemDown
              \change Staff = "right"
              b cis]
              \change Staff = "left"
              \stemUp
              s4
              |
              s2.
            }
            \\
            \relative c {
              % TODO: really ces?
              d8-[ c] ces16-[ b a b] ces-[ b ces a]
              |
              \relative c { b8\rest }
              b'8^. b,4._\sf
              \relative c { b8\rest }
              |
              \relative c { b8\rest }
              g'8^. g,4._\sf b8
              |
              a8-[ c' <c, e> <b d> <a c> <g b>]
              |
              fis8-[ es'] d2_~_\sf
              |
              d4. d8-[ c b]
              |
              c4 d e
              |
              fis16-[ a g fis] e d e fis g d g fis
              |
              e fis e d cis d cis b a8-[ gis]
              |
              a2 \relative c { b8\rest } b8
              |
              a4 \relative c { g4\rest g8\rest } g8
              |
              fis'4 \relative c { b4\rest b8\rest } d8
              |
              e16-[ dis e fis]
              g fis g a
              b a g gis
              |
              a,8 r8 r8 a4 b8
              |
              cis8-[ d_~] d4
              \relative c, { e4\rest }
              |
              \relative c { g4\rest g8\rest }
              d8 g16-[ b g e]
              |
              \relative c, { e4\rest e8\rest }
              b8 e4
              |
              \relative c, { e4\rest e8\rest }
              a8 d4
              |
              \trillSpanUp
              a2\startTrillSpan
              gis16-[\stopTrillSpan b gis e]
              |
              g2\startTrillSpan
              fis16-[\stopTrillSpan a fis d]
              |
              f2\startTrillSpan
              es16-[\stopTrillSpan g es c]
            }
          >>
          |
          \override TrillSpanner.to-barline = ##t
          as8 r8 f,2\sf\startTrillSpan
          |
          \bar "||"
          \key es \major
          es4\stopTrillSpan
          \relative c { b8\rest }
          es16 f g as bes c
          |
          g4
          \relative c { b8\rest }
          g16 as bes c d es
          |
          bes4
          \relative c { b8\rest }
          bes16 c d c d es
          |
          f e f g as g f es d es d c
          |
          bes c bes as g as bes c d e f g
          |
          as, bes c d es f g as bes-[ b c8]
          |
          s2.
          |
          g16 as bes c
          s2
          |
          g8_\f
          \trillSpanDown
          r8 \stemUp e,2^\sf\startTrillSpan
          \trillSpanUp
          |
          \stemNeutral b8_\f\stopTrillSpan
          r8
          d'2_\sf\startTrillSpan
          |
          e,8_\f\stopTrillSpan
          r8
          g'2_\sf\startTrillSpan
          |
          c,,8\stopTrillSpan r8 e'2\startTrillSpan
          |
          f,8\stopTrillSpan r8 as'2\startTrillSpan
          |
          \stemDown
          g8\stopTrillSpan
          b8-[ g,]^\trill r8 r8 e''8
          |
          c,^\trill
          r8 r8 a'8-[ fis,^\trill] r8
          |
          r8
          b'8-[ g,]^\trill r8 r8 e''8
          |
          \bar "||"
          \key d \minor
          cis,8^\trill r8 r8
          as'8-[ f] d8
          |
          as-[ f d <as as'> <bes bes'> <bes bes'>]
          |
          <as cis es as>8 r8 8 r8 r4
          |
          R2.
          |
          \bar "||"
          \key d \major
          R2.
          |
          R2.
          |
          R2.
          |
          R2.
          |
          r4
          \stemNeutral
          a''4_( g
          |
          fis g a^~)
          |
          a g fis
          |
          b cis, d
          |
          g, gis a
          |
          b fis gis
          |
          a b cis
          |
          d d' c
          |
          b c d
          |
          g, a b
          |
          e, fis g
          |
          gis a g
          |
          fis b a
          |
          <<
            \relative c' {
              s4 c4 b
              |
              ais d cis
            }
            \\
            \relative c' {
              g2_( eis4
              |
              fis2 gis8-[ ais])
            }
          >>
          |
          <b d>4 <g cis> <cis e>
          |
          <d fis> fis, dis
          |
          e e' d
          |
          cis a, g
          |
          fis gis a_~
          |
          a gis e
          |
          a a' fis
          |
          g2 e4
          |
          es d c
          |
          <<
            \relative c' {
              a4 bes e,
              |
              \bar "||"
              \key bes \major
              f4
            }
            \\
            \relative c {
              f4 bes, bes
              |
              a4 c f,
              |
              bes
            }
          >>
          r4 r4
          |
          R2.
          |
          \override TrillSpanner.to-barline = ##t
          g4 b'2\startTrillSpan
          |
          c4\stopTrillSpan r8 c16 bes a g f e
          |
          a4 r8 a16 g f es d c
          |
          \stemDown
          f4 r8 f16 es d c bes a
          |
          c bes a g
          <f, f'>4^\markup { \whiteout \italic "ben marcato" }
          <es es'>
          |
          <<
            \relative c' {
              s4 s4 \relative c' c8\rest bes16-[^\sf as]
              |
              g f es d s2
              |
              \relative c' c8\rest c'16 bes as g f e s4
              |
              s4 \relative c' a8\rest a16 g fis es d! c
              |
              \relative c' a2\rest
              \relative c' c8\rest d'16 cis
              |
              c!16 bes a g s2
              
            }
            \\
            \relative c,, {
              <d d'>4 <es es'> <f f'>
              |
              <es es'> <f f'> <g g'>
              |
              <e e'>_\markup { \italic "sempre ben marcato" } <f f'> <g g'>
              |
              <f f'> <g g'> <a a'>
              |
              <fis fis'> <g g'> <a a'>
              |
              <g g'> <a a'> bes16 bes' c bes
            }
          >>
          |
          a'16 g f! e! g f e' d c bes a g
          |
          <<
            \relative c' {
              a16 g f es d^\ff c e g bes,8 r8
              |
              s2.
              |
              s2.
              |
              s4 a'16 g f es a4
              |
              s2.
              |
              s2.
              |
              s2 es4
              |
              es4 d s4
              |
              s2.
              |
              s2.
              |
              s2.
              |
              s2.
              |
              s2.
              |
              s2.
              |
              g2\startTrillSpan f4\stopTrillSpan
              |
              a2\startTrillSpan g4\stopTrillSpan
              |
              bes2\startTrillSpan g4\stopTrillSpan
              |
              s2.
              |
              s2.
              |
              s2.
              |
              % TODO: cross over to right hand staff?
              des16 c d e f g
              \change Staff = "right"
              \stemDown
              a bes d bes a g
              \stemUp
              \change Staff = "left"
              |
              es d! e fis g a
              \change Staff = "right"
              \stemDown
              bes c d bes a g
              \stemUp
              \change Staff = "left"
              |
              f! es f g a bes
              \change Staff = "right"
              \stemDown
              c d es c bes a
              \stemUp
              \change Staff = "left"
              |
              s2.
              |
              s16\> es'16-[ d c]\! b!16 c d es e f! g f
              |
              c d es! f s4 f!16 es d es
              |
              c d c bes a bes c d es e f es
              |
              bes! c d es s4 es!16 d c bes
            }
            \\
            \relative c, {
              f16 e d c
              \once \override NoteColumn.force-hshift = 1.5
              % TODO: this is ugly, maybe move it up
              bes''8
              \trillSpanDown
              r8 g,4_~_\sf\startTrillSpan
              |
              g4 f4\stopTrillSpan
              \relative c { b8\rest }
              f16 g
              |
              a bes c d a4 \relative c { b8\rest } a16 bes
              |
              c d e f c4 \relative c { b8\rest } c16 d
              |
              e16 d e f g f g a bes a g a
              |
              bes a g f e d c d es d c bes
              |
              d c bes a bes a g f r8 f,8
              |
              a'2_\ff\startTrillSpan bes4\stopTrillSpan
              |
              \relative c { d8\rest } bes16 a g f es d g4
              |
              \relative c { d8\rest } g16 f es d c b c4
              |
              \relative c { d8\rest } es'16 d c d c bes a bes a g
              |
              f g a bes c cis d c bes c d es
              |
              e es d es f g a bes c bes c d
              |
              es d cis c bes a g a bes a g f
              |
              e4 bes a
              |
              fis'4 c bes
              |
              g' d c8-[ fis,]
              |
              fis16 g a bes c d e fis g, g' f,! f'!
              |
              e, f g a bes c d e f, f' es,! es'!
              |
              d, es f g as bes c d es, es' <des, des'>8\noBeam
              |
              bes2\startTrillSpan a4\stopTrillSpan
              |
              c2\startTrillSpan bes4\stopTrillSpan
              |
              d2\startTrillSpan c4\stopTrillSpan
              |
              es4\startTrillSpan d4\stopTrillSpan e8-[ e']
              |
              f2.
              |
              f2.
              |
              f2.
              |
              f2_~ f8-[ fis]
              |
            }
          >>
          |
          <g g'>8\f r8 <f! f'!>4.\sf 8
          |
          <f f'>8-[ <es es'> <des des'> <c c'> <b b'> <c c'>]
          |
          <f f'>8 r8 <es es'>4.\sf 8
          |
          <es es'>8-[_( <d d'> <c c'> <b b'>]) r4
          |
          r2 <f' f'>8-[\sf <es es'>]
          |
          <es es'>8-[_( <d d'> <c c'> <bes bes'>]) r4
          |
          R2.
          |
          R2.
          |
          r4 r4 <fis fis'>8-[ <g g'>]
          |
          <f! f'!>8-[ <e e'>] <g g'>-[ <a a'>] <g g'>-[ <fis fis'>]
          |
          <a a'>-[ <bes bes'>] <fis fis'>-[ <g g'>] <dis dis'>-[ <e e'>]
          |
          <bes''' d>8 r8
          <<
            \relative c {
              c2
            }
            \\
            \relative c {
              \afterGrace g2\startTrillSpan { f16-[\stopTrillSpan g] }
            }
          >>
          |
          s2.
          |
          s4 s8 \stemUp e8-[ f] s8
          |
          s4 s8 cis8-[ d] s8
          |
          s2.
          |
          s2.
          |
          s2.
          |
          s2.
          |
          s2.
          |
          s2.
          |
          s2.
          |
          s2.
          |
          \override TrillSpanner.to-barline = ##t
          f,,,8 r8 a'2\startTrillSpan
          |
          bes4\stopTrillSpan r8 bes16 a g f es d
          |
          f4 r8 g16 f es d c bes
          |
          es4 r8 es16 d c d c bes
          |
          <<
            \relative c {
              r4 f8 r8
            }
            \\
            \relative c,, {
              f8-[ a'16 g] f8 r8
            }
          >>
          r4
          |
          \stemDown
          r4 r8 bes'8\noBeam d'8\trill r8
          |
          s2.
          |
          r4 r8 es,8\noBeam c'8\trill r8
          |
          \override TrillSpanner.to-barline = ##f
          r4 c,,8 r8 e'4_~\startTrillSpan
          |
          e4\stopTrillSpan f4 r8 f16 e
          |
          d c bes a
          <<
            \relative c {
              e16 d c bes bes'8 s8
            }
            \\
            \relative c' {
              g4 \relative c { b8\rest } g16 f
            }
          >>
          |
          es'16 d c bes a'4\sf r8 a16 g
          |
          f es d c bes a' g f bes a d c
          |
          bes a g f e d c bes g a bes b
          |
          c d es d c bes! a g f es d c
          |
          \override TrillSpanner.to-barline = ##t
          bes8 r8 d'2\startTrillSpan
          |
          es8\stopTrillSpan r8 s2
          |
          r4 r8 e8 f4
          |
          r8 f8 s2
          |
          s2 d16 es d c
          |
          bes c d es e f g f d es f es
          |
          b c d es e f g f <f, f'>8-[ <bes, bes'>]
          |
          r4 r4 bes8 \relative c b8\rest
          |
          <<
            \relative c'' {
              % TODO: redo this measure or recheck that it's correct
              b4\rest s8 s8 c,4\rest
              |
              s4 s16 a,16-[ c es] ges-[ a
              \stemDown
              \change Staff = "right"
              c es]
              \stemUp
              \change Staff = "left"
            }
            \\
            \relative c {
              d4^\trill <es es'>8 \relative c b8\rest \clef treble as''4^\trill
              |
              \clef bass
              <ges,,, ges'>8\ff \relative c d8\rest
              % TODO: elongate span
              \override TrillSpanner.to-barline = ##f
              es,2_~\startTrillSpan
              |
              es2._~
              |
              es2._~
              |
              es2\stopTrillSpan
            }
          >>
          <<
            \relative c,, {
              \trillSpanDown
              \stemDown
              <f_~ bes^~>4\startTrillSpan
              |
              <f_~ bes^~>2.
              |
              <f_~ bes^~>2.
              |
              <f_~ bes^~>2.
              |
              <f_~ bes^~>2.
              |
              <f_~ bes^~>2.
              |
              <f bes>2.
              |
              % TODO: only 2?
              \stemUp
              % TODO: shorten stem
              bes2 s4
              |
              bes2 \afterGrace s4 { a16-[\stopTrillSpan bes] }
              |
              s2.
              |
              s2.
              |
              \afterGrace c''2\startTrillSpan { bes16-[\stopTrillSpan c] }
              \stemDown
              <f, a c>4
              |
              4.
            }
            \\
            \relative c,, {
              s4
              |
              s2.
              |
              s2.
              |
              s2.
              |
              s2.
              |
              s2.
              |
              s2.
              |
              f4 4 4
              |
              4 4 4
              |
              <ges bes ges'>4 <g bes g'>2
              |
              \trillSpanUp
              \afterGrace g''2\startTrillSpan { f16-[\stopTrillSpan g] } a4
              |
              \relative c b4\rest f4 s4
              |
            }
          >>
          r8 r4
          |
          r4 r8 g''16-[ f] es d c b
          |
          es4 r8
          \change Staff = "right"
          \stemDown
          g'16 f es d c b
          |
          \stemDown
          \change Staff = "left"
          g'16^\cresc f es d c bes a g f es d c
          |
          bes a g f es d c bes a g f e
          |
          f8^\ff
          r8
          \override TrillSpanner.to-barline = ##f
          a'2\startTrillSpan
          |
          \stemNeutral
          bes8\stopTrillSpan
          r8
          g,8 r8 b'4_~\startTrillSpan
          |
          b4 c8\stopTrillSpan r8 a,8 r8
          |
          \afterGrace cis'2\startTrillSpan { bis16-[\stopTrillSpan cis] } d4
          |
          bes,8 r8 d'2\startTrillSpan
          |
          es8\stopTrillSpan r8 c,8 r8 e'4_~\startTrillSpan
          |
          e4 f8\stopTrillSpan r8 d,8 r8
          |
          \afterGrace fis'2\startTrillSpan { e16-[\stopTrillSpan fis] } g8 r8
          |
          <es,! es'!>8 r8 <f' c' es f>4. r8
          |
          <bes, d f bes>4. r8 <f_~ bes_~ es_~ f^~>4
          |
          8 r8 r4
          <bes,_~ d_~ f^~ bes^~>4
          |
          2.^\fermata
          \bar "|."
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

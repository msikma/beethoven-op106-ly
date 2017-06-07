%===========================================================================
%    Piano Sonata Op.106 (L.Beethoven) - I
%===========================================================================
%
%    (C) 2016-2017, Michiel Sikma <michiel@sikma.org>
%    Licensed under CC BY-SA 4.0.
%
%---------------------------------------------------------------------------

\version "2.19.42"
\include "sonata-op106-includes.ily"

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
  \header {
    title = "SONATA"
    subtitle = "Grosse Sonate für das Hammerklavier"
    composer = "L.Beethoven"
    opus = "Op.106"
    dedication = "Dem Erzherzog Rudolph von Österreich gewidmet"
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
          \repeat volta 2 {
            \one-section-one
            r8\ff |
            r4 r8 <d f bes d>8 4-. <d f bes es>8-. <d f bes d>-. |
            4-. <bes d f bes>-. r2 |
            r4 r8 <f' bes d f>8 4 <f bes d g>8 <f bes d f> |
            4 <d f bes d>4 r4\fermata
            <<
              \relative c'' {
                bes8\p-3^( c
                |
                d2 c4) 8-[^( d]
                |
                es2 d4) 8-[^( es]
                |
                f4. g8\noBeam f e4 f8)
                |
                es8-[ d f es]
                s4 bes'8-[^( c]
                |
                d2 c4)
                c8-[ d]
                |
                es2 d4 d8-[ es]
                |
                f4. g8\noBeam f es4 f8
                |
                es8 d4 es8\noBeam d8-[ c d es]
                |
                g-[ f g f]
                f-[ es f es]
                |
                es-[ d f d]
                d-[ c d es]
                |
                g-[^( f)]
                a8\rest
                g8\noBeam^( 8) aes4 a8
                |
                \ottava #1
                \set Staff.ottavation = "8"
                c8^(-[\f b a! g]) f4-. <f a>-.
                |
                bes2\sf
                \ottava #0
              }
              \\
              \relative c' {
                s4
                |
                e4\rest g4 a as
                |
                g a bes g
                |
                f bes g a
                |
                <f bes>4 4 \stemUp <a c>4^\fermata \stemDown s4
                |
                b4\rest
                g'4 a aes
                |
                g a! bes g
                |
                f bes g a
                |
                f bes_~ bes <f a>
                |
                <f bes> bes g a
                |
                f4 bes2 <f a>4
                |
                <f bes>4 <bes e>4
                es <c es>
                |
                <bes d> <bes es> <bes d> <a c>
                |
                <bes d f>2
              }
            >>
            <bes d bes'>2
            |
            <d f d'>4-.\p <bes d bes'>-. <d f d'>-. <c es c'>-.
            |
            <es g es'>2\f <c es c'>2\f
            |
            <es g es'>4-.\p <cis e cis'>-. <es ges es'!>-. <d f d'>-.
            |
            <f aes f'>2\f
            % note: the \f is omitted here.
            % todo should it?
            <d f d'>2
            |
            <f aes f'>4-.\p <d fis d'>-. <f aes f'!>-. <es g es'>-.
            |
            <g bes g'>2\f <es g bes es>2\sf
            |
            <g bes g'>4-.\p <e bes' e>-. <ges bes ges'>-. <f bes f'>-.
            |
            \ottava #1
            \set Staff.ottavation = "8"
            <a bes a'>4
            <fis bes fis'>
            <a bes a'>
            <g bes g'>
            |
            <bes es g bes>
            <gis gis'>
            <bes bes'>
            <a a'>
            |
            <c c'>\f
            <bes bes'>
            \ottava #0
            <g g'>\sf
            <f f'>
            |
            <es es'>\sf
            <d d'>
            <c c'>\sf
            <bes bes'>
            |
            <g g'>\sf
            <f f'>
            <es es'>\sf
            <d d'>
            |
            <c c'>\sf
            <bes bes'>
            <g g'>\sf
            <f f'>
            |
            a' \relative c' f c \relative c' f
            |
            f \relative c' f a \relative c' f
            |
            c \relative c' f f \relative c' f
            |
            f\pp \relative c' f f r4
            |
            r4 r8
            % Note: first explicitly does not have staccato.
            <d, f bes d>8\f 4-. <d f bes es>8-.-[ <d f bes d>-.]
            |
            4 <bes d f bes>4 r2
            |
            r4 r8
            <d f bes d>8
            <d d'>4
            <d fis bes d>8-[ 8]
            |
            4 4 r4\fermata r8 r8
            |
            r4 <fis, a d>4 r4 4
            |
            r4 4 r4 4
            |
            r4 <a c d fis> r4 4
            |
            r4 <a c fis a> r4 <c fis a c>
            |
            \ottava #1
            \set Staff.ottavation = "8"
            r4 <fis a c fis> r4 <a c a'>
            |
            r4 <c a' c> r4 <c fis a c>
            |
            \bar "||"
            \key g \major
            <c fis a c>4
            \ottava #0
            <a c>8-[ <gis b>] <a c>4
            <fis, a>8-[ <g bes>]
            |
            <fis a>4
            <a' c>8-[ <gis b>] <a c>4
            \ottava #1
            \set Staff.ottavation = "8"
            fis'8-[ a]
            |
            c8-[ d c b]
            c-[ d e d]
            |
            a-[ b c a]
            fis-[ g a fis]
            |
            \ottava #0
            c\p-[ d e c]
            a-[ b c a]
            |
            fis-[ g a fis]
            <a, c d>4 r4
            |
            \ottava #1
            \set Staff.ottavation = "8"
            b''8 c b a b c d b
            |
            g a b g d fis g d
            |
            b c d c g a b g
            |
            \ottava #0
            d fis g b, g a b g
            |
            <d fis a>4\p
            e''8-[ d] e d c e
            |
            c b a c a g fis a
            |
            e\p d c e c b a c
            |
            a g fis a c b a c
            |
            <d, f>4\p
            \ottava #1
            \set Staff.ottavation = "8"
            d'''8 c d c b d
            |
            b a g b
            \ottava #0
            b, a g b
            |
            d, c b d b' a g b
            |
            d c b d e4 <a, d fis>
            |
            <g d' g>4\p r4 r2
            |
            r4 <fis, a>4 <g b>8 r8 <b' g'>8^( <a fis'>)
            |
            <b g'>4 <g b g'>4 <fis a fis'> <eis b' eis>
            |
            <g eis'> <fis d'>4 4
            <<
              \relative c''' {
                d8 c!
                |
                b4 g'4 e8 r8
                \ottava #1
                \set Staff.ottavation = "8"
                c'-[ a]
                |
                fis4 d' b8 r8
                \ottava #0
                g8-[^( fis]^)
                |
                \stemDown g4 e c <fis, b> \stemUp
                |
                b2 \stemDown s4 s4
                |
                \stemUp
                a2. d4
                |
                b2. cis4
                |
                fis,2. b4
                |
                f8\noBeam e4 a8 es8 d4 g8
                |
                s1
                |
                s2 g,4 e'!8-[ d]
                |
                s1
                |
                s2 g,4 e'!8-[ d]
                |
                \stemDown d8-[^( <b g'> <d b'> <c a'>]
                \stemUp g'2^~
                |
                g2 fis4) d!8-[ d']
                |
                s1
                |
                s2 g,4 e'8-[ d]
                |
                s1
                |
                s2 g,4 e'8-[ d]
                |
                d8-[ g, b a]
                g2^~
                |
                g2 fis4 g4
                |
                s2 c2^~
                |
                c2 b4 c4
                |
                s2 fis2^~
                |
                fis2 e2^~
                |
                e4
              }
              \\
              \relative c''' {
                g8 a
                |
                s4 g4. s4.
                |
                s4 d'4. s4.
                |
                s1
                |
                fis,4 a8-[ g] g4 <g_~ bes e>
                |
                g4 g8-[ f] f4 <f_~ aes>4
                |
                f4 f8-[ e] e4 <e_~ g>4
                |
                e4 e8-[ dis] d4 <d f>4
                |
                d4 cis4 c4 b4
                |
                d8 d' cis c a fis es d
                |
                cis c a fis
                es d
                g4
                |
                d'8 d' cis c a fis es d
                |
                cis c a fis
                es d
                g4
                |
                s2
                b8-[_( dis e b]
                |
                bes-[ dis e bes]
                a-[ cis]) s4
                |
                \ottava #1
                \set Staff.ottavation = "8"
                d'8 d' cis c a fis es d
                |
                cis c a fis
                es d
                g4
                |
                d'8 d' cis c a fis es d
                |
                cis c a fis
                es d
                g4
                \ottava #0
                |
                s8 b,8-[ d c] b-[ dis e b]
                |
                bes-[ dis e bis]
                a-[ d g, c]
                |
                g'8-[ <e c'> <g e'> <f d'>]
                e-[ gis a e]
                |
                es-[ gis a es]
                d-[ gis c, f]
                |
                % Note: original has this in the upper voice for some reason.
                c'8-[ <a f'> <c a'> <bes g'>]
                aes-[ f aes g]
                |
                aes-[ cis d aes]
                g-[ b c! g]
                |
                c4
              }
            >>
            <e g c e>4\ff <b' d> <c e>8-[ <d f>]
            |
            <e g>4 <c e> b,2\rest
            |
            b4\rest <e g c e>4\sf <b' d> <c e>8-[ <d f>]
            |
            <e g>4
            <g, a e' g>\sf \relative c'' b4\rest
            <g cis e g>\sf
            |
            \relative c'' b4\rest <g b d g>\sf
            \relative c'' b4\rest <g a cis g'>\sf
            <g b d g>2^(\sf <g_~ b^~ d^~>2)
            |
            <g b d>4^( <d g b>4)
            d8-[ fis g b]
            |
            \ottava #1
            \set Staff.ottavation = "8"
            cis-[ d e d] fis-[ g a g]
            |
            ais-[ b c b] d4
            \ottava #0
            <d,, a' c>4
            |
            <<
              \relative c'' {
                % Todo: check these slurs
                <d g d'>1^(
                |
                c'2 <c es>)
                |
                <g g'>1^(
                |
                <c es>2 c)
                |
                g1
                |
                d'2 <a c>4. <fis a>8
                |
              }
              \\
              \relative c''' {
                s1
                |
                g2 g2
                |
                d'2 b2
                |
                g2 g
                |
                bes b
                |
                fis2 b,4\rest d4
                |
              }
            >>
            |
            <<
              \relative c''' {
                \once \override NoteColumn.force-hshift = #0.91
                b1
                |
                c2 e
                |
                g1
                |
                e2 c
                |
                bes4^( b2 d4)
              }
              \\
              \relative c''' {
                % Todo: optimize position
                \trillSpanUp
                \once \override TrillSpanner.bound-details.left.padding = #-0.5
                \once \override TrillSpanner.bound-details.right.padding = #0.0
                \once \override TrillSpanner.outside-staff-priority = ##f
                % 1.335 = 1.5 * our magnification of 89/100.
                \once \override TrillSpanner.Y-offset = #1.335
                \once \override NoteColumn.force-hshift = #0.91
                g1-\tweak bound-details.left.text #'() \startTrillSpan
                |
                g1
                |
                g1
                |
                g1
                |
                g1
                |
                % Todo: should be a spanner?
                \afterGrace d'1\stopTrillSpan^\trill { \stemUp cis16-[ d] }
              }
              \\
              \relative c'' {
                \voiceFour d4 g,4\rest g2\rest
                |
                s1
                |
                s1
                |
                s1
                |
                s1
                |
                g4\rest d'4 b2\rest
              }
            >>
            |
            \ottava #1
            \set Staff.ottavation = "8"
            <d' f b d>4\ff 2\sf <c d f c'>4
            |
            <b d f b>-. <c d f c'>-. <d f d'>-. <b d e b'>\p-.
            |
            <c e c'>-. <b d e b'>-. <c e c'>-. <a c e a>-.
            |
            <a e' g>-. <a cis g'>-. <a c fis>-. <a c a'>-.
            |
            \stemUp
            <g b g'>-.\cresc <d b' d>-. <fis c' fis>-. <a c fis a>-.
            |
            <g b g'> <d b' d> <fis c' fis> <a c fis a>
            |
            \stemNeutral
            g8\f g' d, d' fis,\sf fis' a, a'
            |
            g,\sf g' d, d' fis,\sf fis' a, a'
            |
          }
          \alternative {
            \relative c''' {
              % Todo: change priority of ottava and repeat
              <g g'>4\ff r4 <a a'> r4
              |
              <bes_~ bes'^~>2 4. r8
              \ottava #0
              |
              R1
              |
              r2 r4 r8 bes,,8
              |
              bes'4.\sfp 8 4 r4
              |
              \set Timing.measureLength = #(ly:make-moment 7/8)
              r2 r4 r8
            }
            \relative c''' {
              \ottava #1
              \set Staff.ottavation = "8"
              \set Timing.measureLength = #(ly:make-moment 4/4)
              <g g'>4\sf r4 <a a'>\sf r4
              |
              <b b'>1\ff\fermata
              |
              <b b'>4\sf r4 <c c'>\sf r4
              |
              <d d'>1\ff\fermata
            }
          }
          |
          \ottava #0
          <d,, g d'>4\pp 2 <es g c>4-.
          |
          <f g b>-. <es g c>-. <d g d'>-. <f g b>-.
          |
          <es g es'>4 2 <d f g d'>4-.
          |
          <es g c>4-. <d f g d'>-. <es g es'>-. <es g c>-.
          |
          <f as f'>4 2 <es g es'>4-.
          |
          <d f d'>-. <es g es'>-. <f as f'>-. <d f bes d>-.
          \bar "||"
          \key es \major
          \ottava #1
          \set Staff.ottavation = "8"
          <g es' g>\sf r4 <as f' as>\sf r4
          |
          <bes g' bes>1\sf
          \ottava #0
          <es,, g>4\p r4 <f as> r4
          |
          <g_~ bes^~>2 4.\fermata r8
          |
          R1
          |
          r2 r4 r8
          \clef bass
          es,8\f
          |
          es'4.\fp 8 4 r4
          |
          r2 r4 r8 bes,8\p
          |
          es4. 8 4 f8-[ es]
          |
          es4 c4 c2^( |
          as'4) as8-[ g] f4 f8-[ es]
          |
          d4 r4 d2^( |
          bes'4) bes8-[ as] g4 g8-[ f]
          |
          e4 r4 e2^( |
          c'4)\cresc c8-[ bes] as4 as8-[ g]
          |
          f4 f8-[ g] a4 a8-[ bes]
          |
          g4 g8-[ f] es4 r8\!
          \clef treble
          f'8
          |
          <<
            \relative c'' {
              bes4. 8 4 c8 bes
              |
              bes4 g g2^(
              |
              es'4-.) es8-[ d] c4 c8 bes
              |
              % TODO: missing the slur?
              a4 d4\rest a2
              |
              f'4 f8 es d4 d8 c
              |
              b4 e4\rest b2
              |
              g'4 g8 f es4 es8 d
              |
              c4 c8 bes! as4 as8 g
              |
              f4 f8 g as4 bes
              |
              bes4 f'4\rest f4\rest f8\rest bes,8
              |
              es4. 8 4 f8-[ es]
              |
              es4 c c2^(
              |
              as'4-.) as8-[ bes] f4 f8-[ es]
              |
              d4-. a'4\rest d,2^(
              |
              bes'4) bes8-[ as] g4 g8-[ f]
              |
              e4 e,4 f g
              |
              aes2. a4
              |
              bes4 g'8 f es4 es8 d
              |
              c2. cis4
              |
              d4 es8 d c!4 b8 g
              |
              s4
            }
            \\
            \relative c' {
              s1
              |
              es4. 8 4 f8 es
              |
              es4 s4 c2
              |
              f4 f8 es d4 d8 c
              |
              s1
              |
              g'4 g8 f es4 es8 d
              |
              s4 s2 g8 f
              |
              es4 f8 g c,4 c8 bes
              |
              c4 d es d8 <d f>
              |
              <es g>4.\f g8 4 as8-[ g]
              |
              g4 es4 es2
              |
              es4 c'8-[ bes] as4 as8-[ g]
              |
              f4 g4\rest f2_(
              |
              d'4-.) d8-[ c] bes4 bes8-[ as]
              |
              g4 g4\rest g2_~
              |
              g4
              \change Staff = "left"
              \stemUp
              g,8-[
              \stemDown
              \change Staff = "right"
              des'8] c4 c8-[ bes]
              |
              s4\p f'8 es d4 d8 c
              |
              bes4 e4\rest e2\rest\cresc
              |
              e4\rest c4 f2
              |
              f4 g8 f es4 d
              |
              <c' es>4.\f
            }
          >>
          <c' es>8 4 <d f>8 <c es>
          |
          4 <aes c>4 2\sf
          |
          <f' aes>4 8 <es g>8 <des f>4 8 <c es>
          |
          <bes des>4 r4 2\sf
          |
          <g' bes>4 8 <f aes> <e g>4 8 <d! f>
          |
          <c e>4 r4 <c f>2\sf
          |
          <aes' c>4 8^( <g bes>) <f aes>4-. <g bes>8^( <f aes>)
          |
          <es g>4-. <aes f'>8^( <g es'>) <f d'>4-. <g es'>8^( <f d'>)
          |
          % TODO: there is really no staccato here?
          <es c'>4 <g bes>8^( <aes c>
          <bes des>4-.) <f aes>8^( <g bes>
          |
          <aes c>4-.)
          <<
            \relative c'' {
              es8 f g4 b,8\rest <b d>
            }
            \\
            \relative c'' {
              c4 b s4
            }
          >>
          |
          <g_~ b^~>2\ff 4. <b, d>8
          |
          <g' b>2.\sf
          <<
            \relative c''' {
              es8^( d)
              |
              g^(-[ f])
            }
            \\
            \relative c''' {
              <g bes>4
              |
              <b d>4
            }
          >>
          r4
          <<
            \relative c''' {
              g8^(-[ f])
            }
            \\
            \relative c'' {
              <b d>4
            }
          >>
          r4
          |
          <<
            \relative c'' {
              g8^(-[ f])
            }
            \\
            \relative c' {
              <b d>4
            }
          >>
          r4
          <<
            \relative c''' {
              g8^(-[ f])
            }
            \\
            \relative c'' {
              <b d>4
            }
          >>
          r4
          |
          <g_~ c^~ es^~>2\ff 4. <es_~ g_~>8
          |
          <es_~ g_~ c^~ es^~>2\sf 4
          <<
            \relative c'''' {
              g8^(-[ f])
            }
            \\
            \relative c''' {
              <g c>4
            }
          >>
          |
          <<
            \relative c'''' {
              as8^(-[ g])
            }
            \\
            \relative c''' {
              <c es>4
            }
          >>
          r4
          <<
            \relative c''' {
              as8^(-[ g])
            }
            \\
            \relative c'' {
              <c es>4
            }
          >>
          r4
          |
          <<
            \relative c'' {
              as8^(-[ g])
            }
            \\
            \relative c' {
              <c es>4
            }
          >>
          r4
          <<
            \relative c''' {
              as8^(-[ g])
            }
            \\
            \relative c'' {
              <c es>4
            }
          >>
          r4
          |
          <f_~ d'^~ f^~>2 4. <d f>8
          |
          <<
            \relative c''' {
              <d^~ f^~>2 4
              g8^(-[ f])
              |
              bes8^(-[ as])
            }
            \\
            \relative c'' {
              \relative c'' { b4\rest b8\rest }
              f8 bes4
              <bes d>4
              |
              <d f>4
            }
          >>
          r4
          <<
            \relative c''' {
              bes8^(-[ as])
            }
            \\
            \relative c'' {
              <d f>4
            }
          >>
          r4
          |
          <<
            \relative c'' {
              bes8^(-[ as])
            }
            \\
            \relative c' {
              <d f>4
            }
          >>
          r4
          <<
            \relative c''' {
              bes8^(-[ as])
            }
            \\
            \relative c'' {
              <d f>4
            }
          >>
          r4
          |
          <es'_~ g^~>2 4. <g, bes>8
          |
          <<
            \relative c''' {
              <es_~ g^~>2 4 s4
              |
              \ottava #1
              \set Staff.ottavation = "8"
              <fis_~ a^~>2 4. <fis, a>8
              |
              <fis'^~ a^~>2 4. <fis, b>8
              |
              \bar "||"
              \key c \major
              <gis'^~ b^~>2 4. <gis, b>8
              |
              <gis'^~ b^~>2 4. cis,8
              |
              cis'2^~ 4. cis,8
              |
              cis'2^~ 4. <fis,, a d>8
              |
              d''4.
            }
            \\
            \relative c''' {
              \relative c'' { b4\rest b8\rest }
              g8
              c4
              \relative c'' b8\rest
              <fis a>8
              |
              s1
              |
              \relative c'' { b4\rest b8\rest }
              a,8 d4. s8
              |
              <b_~ d_~ f!_~>2 4. s8
              |
              <b_~ d_~ f!_~>2 4. <e, g! b>8
              |
              <e'_~ g_~ b_~>2 4. <e, g! b>8
              |
              <e'_~ g_~ b_~>2 4. s8
              |
              <d fis a>4.
            }
          >>
          d'8 d'4. d,8
          |
          d'4. d,8^( d'4.) d,8^(
          |
          d'4.) d,8^( d'4.) d,8^(
          |
          d'4.) d,8^( d'4.) \ottava #0
          dis,,8
          |
          \bar "||"
          \key b \minor
          <<
            \relative c''' {
              dis1
              |
              e2 g,
              |
              b1^(
              |
              <e, g>2 e)
            }
            \\
            \relative c''' {
              dis2 dis,2
              |
              e1
              |
              fis2 dis
              |
              b2 b
            }
          >>
          |
          d!2^( dis
          |
          fis e4 cis)
          |
          dis4_( d, dis2)
          |
          fis2_( e4 cis)
          |
          <b' dis>8 e d cisis
          d e fis eis
          |
          g fis eis f
          % Todo: force a grace natural-sharp on the cis
          e dis e cis!
          |
          <<
            \relative c'' {
              % todo: is the position of the 2 rest correct?
              dis4 d4\rest d2\rest
            }
            \\
            \relative c' {
              dis8 e d cisis
              d e fis eis
            }
          >>
          |
          g8 fis eis fis
          e dis e fis
          |
          <fis, cis' e>4 r4 r2
          |
          \bar "||"
          \key gis \minor
          r2 r4 r8 fis'8\p
          |
          cis'4. 8 4
          <<
            \relative c'' {
              dis8 cis
              |
              cis4 ais b2\rest
              |
              s2.. ais8\p
              |
              e'4. 8 4 f4\rest
              |
              s2.. cis8
              |
              ais'4. 8 4 b4\rest
              |
              s4 s8
            }
            \\
            \relative c' {
              \relative c' e8\rest cis8
              |
              e4. 8 4 fis8 e
              |
              e8 cis8 s4 s4 s4
              |
              s4. e8 cis'4. 8
              |
              4 s2.
              |
              s4 g8\rest cis,8 ais'4. 8
              |
              4 g8\rest
            }
          >>
          s8 cis,2_~
          |
          cis4. g8 e'2_~
          |
          e8 g, e'4. g'8^( e'4)
          |
          gis,,,!8_( e'4.) gis'!8^( e'4.)
          |
          ais,,,8_( e'4.) ais'8^( e'4.)
          |
          ais,,,8_( f'4.) ais'8^( f'4.)
          |
          \bar "||"
          \key bes \major
          <d, f bes d>4.\ff 8 4 <d f bes es>8 <d f bes d>8
          |
          4 <bes d f bes>4 r4 r8 <d f>8
          |
          <f bes f'>4. <f bes d f>8 4 <f bes d g>8 <f bes d f>8
          |
          4 <d f bes d>4 r4
          <g bes>8\p <a c>
          |
          <f bes d>2 <f a c>4
          <<
            \relative c'' {
              <a c>8^( <b d>)
              |
              <g c e>2^( <g bes d>4) d'8 es
              |
              f4.^( g8\noBeam) f8^( es4 f8)
              |
              es8-[ d <f, as d f> <es g c es>] <c a' c>4\fermata d'8^( es
              |
              f4. g8 es4. f8)
              |
              es8-[^( d f es]) c4 es8^( f)
              |
              g4.^( a8 f4. g8)
              |
              f8-[^( es g f]) d4 f8 ges8
              |
              a4. bes8 ges4 8-[ as]
              |
              bes4. ces8 a!4^( bes8-[ ces])
              |
              des4. es8\noBeam des8 ces4 des8
              |
              ces8^( bes4 ces8) bes8-[ as bes ces]
              |
              es-[ des es des]
              des-[ ces des ces]
              |
              ces-[ bes ces bes]
              bes-[ as bes ces]
              |
              es8^( des des, des')
              des^( ces ces, ces')
              |
              ces bes bes, bes'
              bes as bes ces
              |
              es8\noBeam^( des4 eses8\noBeam^~ eses8-[ es e f])
              a8-[^( ges f es])
              % Todo: shouldn't these have staccato too? as lower voice?
              des4 <des f>
              |
            }
            \\
            \relative c' {
              f4
              |
              s2. bes4_~
              |
              bes4 <g bes>4 g a
              |
              bes4 s2.
              |
              g8\rest a8 bes4_~ 8-[ ges] a4_~
              |
              8-[ bes]
              f4_~ f4 es8-[_( f]
              |
              g!8-[ a] bes4.) a8 bes4_~
              |
              bes4 4_~ 4 g4\rest
              |
              g8\rest a8 bes4_~ 4 ges8-[ as]
              |
              bes8-[ c] des4_~ des8-[ f ges as]
              |
              bes4 ges4_~ ges4 f_~
              |
              f_( ges) ges8-[ f ges as]
              |
              as8-[ f] ges4_~ ges8-[ fes] f4_~
              |
              f8-[ des] ges4_~ ges8-[ f ges as]
              |
              % todo: is the placement of the overlapping notes correct?
              f8-[ ges] ges4
              fes8-[ f] f4
              |
              f8-[ ges] ges4
              b,4\rest
              des4
              |
              % todo: check des/d
              des8-[ ges] <f ces'>4 <ges bes> <f bes>
              |
              <ges bes>4\f 4 <f as>-. 4-.
              |
            }
          >>
          |
          <ges bes des ges>2\f <bes,, des ges>
          |
          <des ges bes>4\p <bes des ges> <des ges bes> <ces d f a>
          |
          <as'' ces d as'>2\f
          <ces,, d f as>2
          |
          <d f as ces>4
          <ces d f as>
          <d f as ces>
          <des fes g bes>
          |
          <bes'' des fes bes>2\f
          <des,, fes g! bes>2
          |
          <fes g bes des>4\p
          <des fes g bes>
          <fes g bes des>
          <eses ges ces>
          |
          <ces'' eses ges ces>2\f
          <eses,, ges ces>
          |
          <f! as ces d>4
          <d! f as ces>
          <f as ces d>
          <fes g bes des>
          |
          <g bes des fes>
          <fes g bes des>
          <g bes des fes>
          <ges ces eses>
          |
          <ges ces eses ges>
          <ges ces eses>
          <ges ces eses ges>
          <as ces des f!>
          |
          <as' as'>\sf
          <ges ges'>
          % Todo: proper grace neutral
          <es! es'!>\sf
          <des des'>
          |
          <ces ces'>\sf
          <bes bes'>
          <as as'>\sf
          <ges ges'>
          |
          <es es'>\sf
          <des des'>
          <ces ces'>\sf
          <bes bes'>
          |
          <as as'>\sf
          <ges ges'>
          <es es'>\sf
          <des des'>
          |
          f'4
          \relative c' des
          a
          \relative c' des
          |
          des
          \relative c' des
          f
          \relative c' des
          |
          a
          \relative c' des
          des
          \relative c' des
          |
          des
          \relative c' des
          cis4.\fermata r8
          |
          \key b \minor
          \bar "||"
          r4 r8 <d, fis b d>8 4 <d fis b e>8-[ <d fis b d>]
          |
          4 <b d f b> r4.\fermata r8
          |
          % TODO: put \pp on the rest, or on the first note?
          r4 <d fis b d>4\pp r4 4
          |
          r4 <d g b d>4 r4 4
          |
          r4 4 r4 4
          |
          r4 <es g c es>4 r4 4
          |
          \bar "||"
          \key c \major
          r4 <es g c es>4 r4 4
          |
          r4 <es a c es> r4 4
          |
          r4 4 r4
          \ottava #1
          \set Staff.ottavation = "8"
          <a c es a>
          |
          r4 <c es a c> r4 <es a c es>
          |
          \bar "||"
          \key bes \major
          4
          \ottava #0
          <c es>8-[ <b d>] <c es>4 <a, c>8-[ <bes des>]
          |
          <a c>4 <c es>8-[ <b d>] <c es>4 a'8-[ c]
          |
          es^( f es d es f g es
          |
          c d es c a bes c a
          |
          \stemDown es f g es bes c d bes
          |
          a bes c a \stemNeutral <c, es f>4) r4
          |
          d''8^( es d c d es f d
          |
          bes c d bes f a bes f
          |
          d es f d bes c d bes 
          |
          \stemDown f a bes d, bes' c d bes) \stemNeutral
          |
          <f a c>4 g''8-[ f] g f es g
          |
          es d c es c bes a c
          |
          ges f es ges
          es d c es
          |
          c bes a c
          es, d c es
          |
          <f bes>4^( f''8-[ es] f8 es d f
          |
          d c bes d f, es d f)
          |
          <<
            \relative c''' {
              \stemDown
              bes^( g f bes
              f es d f
              |
              \stemUp
              d' c bes d
              es\cresc c d es)
              |
              <f, f'>4\p
            }
            \\
            \relative c'' {
              s1
              |
              d2 ges
            }
          >>
          r4 r2
          |
          r4
          <a c>4^( <bes d>)
          \ottava #1
          \set Staff.ottavation = "8"
          bes'8 a
          |
          bes4
          <g, bes g'>4 <f a f'> <e g e'>
          |
          <g bes g'> <f a f'> <a f'>
          \ottava #0
          <<
            \relative c'' {
              f8^( es)
              |
              d4^( bes' g8) f8\rest
              es'8^( c)
              |
              a4^( f' d8) f,8\rest bes8^( a)
              |
              bes4 \stemNeutral <g g'>4 <es g es'> <d a' d>
              |
              \stemUp d'2. s4
              |
              c2. s4
              |
              bes2. s4
              |
              % TODO: shouldn't be a 2.?
              as2 s2
              |
              as8 g4 c8 ges8 f4 bes8
              |
              s1
              |
              s2 bes,4 g'!8^( f)
              |
              s1
              |
              s2 bes,4 g'!8^( f)
              |
              f8^( bes d c)
              bes2^~
              |
              bes2 a4 s4
              |
              s1
              |
              s2 bes4 g'!8^( f)
              |
              s1
              |
              s2
              bes,,4 g'!8^( f)
              |
              f-[ bes d c]
              bes2^~
              |
              bes2 a4 bes
              |
              bes8-[ es g f]
              es2^~
              |
              es2
              d4 es
              |
              \ottava #1
              \set Staff.ottavation = "8"
              es4^( as) as2^~
              |
              2 bes^~
              |
              bes4
              \stemNeutral
              <g, bes es g>4
              <d' f>4 <es g>8 <f as>
              |
              <g bes>4
              <es g>4
              \relative c''' b2\rest
              |
              \relative c''' b4\rest
              <g, bes es g>4
              <d' f>4 <es g>8 <f as>
              |
              <g bes>4
              \ottava #0
            }
            \\
            \relative c'' {
              bes8 c
              |
              s4 bes4. s8 es8 g
              |
              s4 f4_( 8) s8 s4
              |
              s1
              |
              % TODO: is this really a tie?
              d4 c'8^( bes) bes4^. <bes_~ des g>
              |
              bes4 bes8^( as) as4^. <as ces f>4
              |
              as4 as8^( g) g4^. <g_~ bes e>4
              |
              % TODO: really no tie on these 8ths?
              g4 g8 f f4^. <f as d>
              |
              f4 es es d
              |
              f8-[^( f' e es] c8-[ a ges f]
              |
              e8-[ es c a)] ges8-[_( f)] bes4
              |
              f'8-[^( f' e es] c8-[ a ges f]
              |
              e8-[ es c a)] ges8-[_( f)] bes4
              |
              s8 d8-[ f es]
              d-[ fis g d]
              |
              des8-[ fis g dis]
              c-[ f]
              f-[ f']
              |
              f
              \ottava #1
              \set Staff.ottavation = "8"
              f' e es
              c a ges f
              |
              \ottava #0
              e es c a
              ges-[_( f])
              bes4
              |
              \relative c'' b8\rest
              f'8-[ e es]
              c a ges f
              |
              e es c a
              ges-[_( f])
              bes4
              |
              s8
              d8-[ f es]
              d fis g d
              |
              des fis g des
              c f! bes, es
              |
              s8
              g8-[ bes as]
              g b c g
              |
              ges b c ges
              f bes es, as
              |
              \relative c''' g8\rest
              c8-[ es des]
              des ces bes ces
              |
              ces fes f ces
              bes d es bes
              |
              g4
            }
          >>
          % TODO: no \sf here?
          <bes, c g' bes>4
          r4
          <bes e g bes>4
          |
          r4
          <bes d f bes>4
          r4
          <bes c e bes'	>4
          |
          <bes d f bes>2
          <d_~ f^~>2
          |
          4^( d8) r8
          f8 a bes d
          |
          \ottava #1
          \set Staff.ottavation = "8"
          e8 f g f
          a bes c bes
          |
          cis d es d
          f4
          \ottava #0
          <c,,! es!>4\p
          |
          <<
            \relative c''' {
              a2\rest
              d2^(
              |
              es2 ges)
              |
              bes,1
              |
              s1
              |
              \stemNeutral
              <des, des'>2^( <d d'>
              |
              <f f'>2 <es es'>4. <c c'>8)
              |
              \stemUp
              <d^~ d'^~>2 <d d'>
              |
              <es es'>2 <g g'>
              |
              bes'1
              |
              <g, g'>2 <es es'>
              |
              des'4^( d2 f4)
              |
              f2^~ f8 es c f
            }
            \\
            \relative c'' {
              d1
              |
              es2 ges
              |
              \relative c'' b2\rest
              s2
              |
              ges2 es2
              |
              s1
              |
              s1
              |
              % Todo: optimize position
              \trillSpanUp
              \once \override TrillSpanner.bound-details.left.padding = #-0.5
              \once \override TrillSpanner.bound-details.right.padding = #0.0
              \once \override TrillSpanner.outside-staff-priority = ##f
              % 0.445 = 0.5 * our magnification of 89/100.
              \once \override TrillSpanner.Y-offset = #2.225
              \once \override NoteColumn.force-hshift = #0.91
              bes'1-\tweak bound-details.left.text #'() \startTrillSpan
              |
              bes1
              |
              bes1
              |
              bes1
              |
              bes1\stopTrillSpan
              |
              a1
            }
            \\
            \relative c'' {
              s1
              |
              s1
              |
              s2 \stemDown <d f>2^(
              |
              \stemUp bes'4)^( ges'4 es2)
              |
              s1
              |
              s1
              |
              s1
              |
              s1
              |
              s1
              |
              s1
              |
              \stemDown
              des,4 d2 f4
              |
              
            }
          >>
          <f a d f>4\ff
          \ottava #1
          \set Staff.ottavation = "8"
          <f' a d f>2
          <es f a es'>4-.
          |
          <d f as d>-.
          <es f as es'>-.
          <f as f'>-.
          <d f g d'>-.\p
          |
          <es g es'>-.
          <d f g d'>-.
          <es g es'>-.
          <c g' c>-.
          |
          <c g' bes>
          <c e bes>
          <c es a>
          <c es c'>
          |
          <bes d bes'>
          <f d' f>
          <a es' f a>
          <c es f c'>
          |
          \relative c''' { bes8 bes' }
          \relative c'' { f f' }
          \relative c''' { a a' }
          \relative c''' { c c' }
          |
          \relative c''' { bes8\f bes' }
          \relative c'' { f f' }
          \ottava #0
          a,\sf a' c, c'
          |
          bes,\sf bes' f, f'
          b,\sf b' d, d'
          |
          c,\sf c' g, g'
          b,\sf b' d, d'
          |
          c,\sf c' g, g'
          c,\sf c' es, es'
          |
          d,\sf d' a, a'
          cis,\sf cis' e, e'
          |
          d,\sf d' a, a'
          d,\sf d' f, f'
          |
          es,!\sf es'! bes, bes'
          d,\sf d' f, f'
          |
          es,\sf es' bes, bes'
          es,\sf es' ges, ges'
          |
          f,\sf f' c, c'
          es, es' ges, ges'
          |
          des,\sf des' a, a'
          c, c' es, es'
          |
          ges,,\sf ges' f, f'
          a, a' es es'
          |
          <<
            \relative c'' {
              d1^(
              |
              ges1
              |
              bes
              |
              ges2
              es)
              |
              d1^(
              |
              es2. g4)
              |
              bes2.^( as4
              |
              g4 f es d)
              |
              es2.^( d4
              |
              f es2 d4)
              |
              \once \override TrillSpanner.bound-details.right.padding = #-1.8
              \afterGrace <bes d>1_\p_\espressivo^\startTrillSpan\fermata { c8\stopTrillSpan }
              |
            }
            \\
            \relative c'' {
              % TODO: change to regular notes?
              \repeat tremolo 2 { ces8_( bes8 }
              \repeat tremolo 2 { ces8 bes8) }
              |
              \repeat tremolo 2 { ces8_( bes8 }
              \repeat tremolo 2 { ces8 bes8) }
              |
              \repeat tremolo 2 { ces8 bes8 }
              \repeat tremolo 2 { ces8 bes8 }
              |
              ces8 bes ces bes ces-[ bes]
              \naturalTrill
              \once \override TrillSpanner.bound-details.right.padding = #2.8
              \once \override Voice.Stem.length = #4.8
              bes4_~\startTrillSpan
              |
              bes1_~
              |
              bes1_~
              |
              bes1_~
              |
              bes1_~
              |
              bes1_~
              |
              bes1
              |
              s4\stopTrillSpan
            }
          >>
          |
          d,8^( es d c bes a bes c
          |
          d es f g a bes c d
          |
          es f es d c bes a g
          |
          f es d c bes a g f)
          |
          <f d'>4.\pp 8 4 r8 <d f g>8\f
          |
          <es g es'>4. 8 4 r8 <f g>\pp
          |
          <g es'>4. 8 4 r8 <e g a>8\f
          |
          <f a f'>4. 8 4 r8 <g a>8\pp
          |
          <a f'>4. 8 4 r8 <f as bes>8\f
          |
          <g bes g'>4. 8 4 r4
          |
          r2 r4 r8 <g es'>8\ff
          |
          <a c es a>4. 8 4 r4
          |
          R1
          |
          r4 r8 <d f bes d>8\p 4-. <d f bes es>8-. <d f bes d>-.
          |
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
          <f'' bes d>4. 8 4-. 8-. 8-. |
          4-. <bes, f' bes>4-. r4 r8 bes,8 |
          <f'' bes d f>4. 8 4 8 8 |
          4 <f bes d>4 r4\fermata r4 |
          r4 e'4^( f b,
          |
          c fis, g es!
          |
          d des c f,)
          |
          bes es, d^\fermata r4
          |
          \clef treble r4 e'''4 f b,
          |
          c fis, g es!
          |
          \clef bass
          d des c f,!
          |
          bes ges f es
          |
          d des c f,
          |
          bes ges f es
          |
          d des c fis,
          |
          g es' f! <f, f'>
          |
          <bes bes'>8\noBeam
          <f'' bes d>8-[ 8 8]
          r8
          <d f bes>8-[ 8 8]
          |
          r8 <f bes d>8 r8 <d bes'> r8 <f bes d>8 r8 <f bes c>
          |
          <bes,, bes'>8\noBeam <g'' bes es>8-[ 8 8]
          r8 <es bes' c>8-[ 8 8]
          |
          % Note: previous notes were non-beamed, these are, as per first edition.
          r8 <g bes es>8-[ r8 <e bes' cis>] r8 <ges bes es!>-[ r8 <f bes d>]
          |
          <bes,, bes'>8\noBeam <aes'' bes f'>8-[ 8 8]
          r8 <f bes d>8-[ 8 8]
          |
          r8
          <aes bes f'>8-[ r8 <fis bes d>]
          r8 <aes bes f'>8-[ r8 <g bes es>]
          |
          <bes,, bes'>8\noBeam
          <bes'' es g>8-[ 8 8]
          r8
          <g bes es>8-[ 8 8]
          |
          r8
          \clef treble
          <bes es g>8-[ r8 <bes cis e>]
          r8 <bes es ges>8-[ r8 <bes d f>]
          |
          r8 <bes f' aes>8-[ r8 <bes d fis>]
          r8 <bes f' bes>8-[ r8 <bes e g>]
          |
          r8 <bes c e g>8-[ r8 <bes c e gis>]
          r8 <bes c e a>8-[ r8 8]
          |
          r8 <c c'>8-[ r8 <bes bes'>]
          \clef bass
          r8 <g g'>8-[ r8 <f f'>]
          |
          r8 <es es'>8-[ r8 <d d'>]
          r8 <c c'>8-[ r8 <bes bes'>]
          |
          r8 <g g'>8-[ r8 <f f'>]
          r8 <es es'>8-[ r8 <d d'>]
          |
          r8 <c c'>8-[ r8 <bes bes'>]
          r8 <g g'>8-[ r8 <f f'>]
          |
          r8 a-[ r8 f]
          r8 c'-[ r8 \relative c,, f]
          |
          r8 f-[ r8 \relative c,, f]
          r8 a-[ r8 \relative c,, f]
          |
          r8 c-[ r8 \relative c,, f]
          r8 f-[ r8 \relative c,, f]
          |
          r8 f-[ r8 \relative c,, f]
          r8 \stemUp f\noBeam r8 \relative c,, f\f \stemNeutral
          |
          <f bes d>4. 8 4-. 8-. 8-.
          |
          4 <d f bes>4 r4 r8 bes,8
          |
          <d' f bes d>4. 8 <d d'>4 <d fis bes d>8-[ 8]
          |
          4 4 r4\fermata r8 d8^(
          |
          d'4.) d,8 d'4. d,8
          |
          d'4. d,8 d'4. d,8
          |
          <a' c>4. d,8 <a' c>4. d,8
          |
          <fis a>4. d8 a4. d8
          |
          a4. d8 g,4. d'8
          |
          fis,4. d'8 es,4. d'8
          \bar "||"
          \key g \major
          <d, d'>4
          \clef treble
          es'''8-[ d] es4 d8-[ cis]
          |
          d4 es,8-[ d] es4 d8-[ cis]
          |
          d4
          \clef bass
          r8 b,8 fis4 r8 a8
          |
          c4 
          \clef treble r8
          fis'8_( a4) c8-[ a]
          |
          a'8-[ b c a]
          c,8-[ d e d]
          |
          a8-[ b c a]
          fis-[ g a fis]
          |
          <d g b>4 \clef bass r8 d,8^( g4) r8 b8^(
          |
          d4) \clef treble r8 \stemUp g8_( b4) \stemNeutral r8 d8^(
          |
          g8) a b g b, c d b
          |
          g a b g b c d b
          |
          c d c b c d e c
          |
          a b c a fis g a fis
          \clef bass
          |
          c d e c a b c a
          |
          fis g a fis \clef treble
          a' g fis a
          |
          b c b a b c d b
          |
          g a b g d fis g d
          \clef bass
          |
          b c d b g a b g
          |
          d^( fis g d c g' d c
          |
          b4)^( \stemDown <g g'> <c e>8) \stemNeutral r8 c'8-[^( a])
          |
          <<
            \relative c {
              fis4 d' b8 d,8\rest \clef treble
              e'4^(
              |
              e) e fis g8-[ a]
              |
              a4 b8.-[ cis16] d4 \stemDown e8-[^( fis]
              |
              g4 <b, d>4 <c! e>8) b8\rest a8-[^( c]
              |
              d4 <fis, a>4 <g b>8) b8\rest b4\rest
              |
              \stemUp
              <e, g b>4 <e g c>4 c'4 <dis, fis b>4
              
            }
            \\
            \relative c {
              s4 d4 g8 s8 \stemUp g4_(
              |
              \stemDown g4) g a a
              |
              d2. s4
              |
              s1
              |
              s1
              |
              s4 s4 e4
            }
            \\
            \relative c'' {
              s1
              |
              s1
              |
              s1
              |
              s1
              |
              s1
              |
              % Todo fix this voices setup
              s4 s4 \voiceFour g8-[ a]
            }
          >>
          |
          \stemNeutral
          <dis fis b>4^( <b dis>4 <e g> <dis f>8-[ <cis e>])
          |
          <cis e>4 <a cis> <d f> <c es>8-[ <b d>]
          \clef bass
          |
          <b d>4 <g b> <c e!> <b dis>8-[ <ais c>]
          |
          <ais cis>4 <fis ais> <b d!> <a! cis>8-[ <gis b>]
          |
          <<
            \relative c' {
              b4 e4 a, b
            }
            \\
            \relative c' {
              gis4 a8-[ g] fis4 g8-[ b,]
            }
          >>
          |
          <a,_~ d^~ c'!^~>1
          |
          <a d c'>2 <b d b'>2
          |
          <a_~ d^~ c'^~>1
          |
          <a d c'>2 <b d b'>2
          |
          <b, b'>2 <e e'>
          |
          <cis cis'> <d d'>4 r4
          |
          \clef treble
          <a''_~ d^~ c'^~>1
          |
          <a d c'>2 <b d b'>2
          |
          \clef bass
          <a,_~ d^~ c'^~>1
          |
          <a d c'>2 <b d b'>4
          \clef treble
          b'4
          |
          b2 e
          |
          cis d4 es
          |
          e2 a
          |
          fis g4 aes4
          |
          a!2 des
          |
          b2 <c,_~ c'^~>2
          |
          <c c'>4 \clef bass
          <c,, c'>4 r2
          |
          r4 <c'' e>4 <b d>4\sf <c e>8-[ <d f>]
          |
          <e g>4
          <c,, c'>4\sf r2
          |
          r4 <cis cis'>4 r4 <a a'>
          |
          r4 <d d'> r4 <e e'>
          |
          d8-[ fis! g b]
          d8-[ fis g b]
          |
          \clef treble
          d8-[ fis g b]
          r4 g8-[ b]
          |
          cis-[ d e d]
          fis-[ g a g]
          |
          ais-[ b c b]
          d4
          \tuplet 3/2 { d,,8-[ e fis] }
          |
          \tupletUp
          \tuplet 3/2 { g,4 b' g }
          \tuplet 3/2 { f b g }
          |
          \implicitTuplets
          \hideTupletBracket
          \clef treble
          \tuplet 3/2 { es c' g }
          \tuplet 3/2 { c, c' g }
          |
          \tuplet 3/2 { b, b' g }
          \tuplet 3/2 { g, b' g }
          |
          \tuplet 3/2 { c, c' g }
          \tuplet 3/2 { es c' g }
          |
          \tuplet 3/2 { d bes' g }
          \tuplet 3/2 { d b' g }
          |
          \tuplet 3/2 { d c' a }
          \clef bass
          \tuplet 3/2 { d,, d' c }
          |
          g,8 g' b g fis g g' g,
          |
          e g g' g, c, g' g' g,
          |
          b, g' d' g, g, g' b g
          |
          c, g' e' g, e g g' g,
          |
          d e fis g a b a g
          |
          fis g fis e d c b a
          |
          \repeat tremolo 2 { g,8 g' }
          \repeat tremolo 2 { g,8 g' }
          |
          \repeat tremolo 2 { g,8 g' }
          g,8-[ g' gis, gis']
          |
          a,8-[ a' gis, gis']
          a,-[ a' c, c']
          |
          cis,-[ cis' e, e']
          d,-[ d' d, d']
          |
          d,-[ d' g, g']
          d,-[ d'] d-[ d']
          |
          d,,-[ d' g, g']
          d,-[ d'] d-[ d']
          |
          g,,-[ g' d, d']
          fis,-[ fis' a, a']
          |
          g,-[ g' d, d']
          d,,-[ d' a a']
          |
          <g, g'>4 r4 <a a'> r4
          |
          <bes_~ bes'^~>2 4. bes'8\p
          |
          bes'4.\sfp 8 4 r4
          |
          r2 r4 r8 d,8
          |
          d'4. 8 4 r4
          |
          r2 r4 r8
          |
          <g,,, g'>4 r4 <a a'> r4
          |
          <b b'>1\fermata
          |
          <b b'>4 r4 <c c'> r4
          |
          <d d'>1\fermata
          |
          \clef treble
          b'''8 g b g b g c g
          |
          d' g, c g b g d' g,
          |
          c g c g c g b g
          |
          c g b g c g c c,
          |
          bes'8 bes, <d bes'> bes <d bes'> bes <es bes'> bes
          |
          <f' bes> bes, <es bes'> bes <d bes'>-[ bes] \clef bass
          as,-[ as']
          |
          \key es \major
          g,8-[ g' g g']
          g,,-[ g' g g']
          |
          es,,8-[ es'] <es es'>2.
          |
          r4 g8-[^( bes)] r4 f8-[^( a])
          |
          % TODO: do we need the second tie?
          r4 <es_~ g^~>4 4.\fermata es8\ff^(
          |
          es'4.\fp) 8 4 r4
          |
          % TODO: aren't these reversed???
          r2 r4 r8 g,8
          |
          g'4. 8 4 r4
          |
          R1
          |
          r2 r4 r8 es,,8
          |
          as4. 8 4 bes8-[ as]
          |
          4 f4 f2_(
          |
          bes4) bes8-[ as] g4 g8-[ f]
          |
          es4 r4 e2_(
          |
          c'4) c8-[ bes] as4 as8-[ g]
          |
          f4 r8 c'8 f4 f8-[ es]
          |
          d4 d8-[ c] bes4 c8-[ d]
          |
          es4 g,4_( a)
          <<
            \relative c {
              f8-[ es]
              |
              d4 s2 bes'4
              |
              s1
              |
              s4 c4 s2
              |
              s1
              |
              b4 c4\rest b2
              |
              s1
              |
              % Todo: No rest in between these?
              c4 c2 s4
              |
              s1
              |
              s1
              |
              s1
              |
              
            }
            \\
            \relative c {
              c4
              |
              bes4 bes8 c d4 es8 f
              |
              es4 d4\rest d2\rest
              |
              c4 c8 d e4 f8 g
              |
              f4 d4\rest f4 f8 es!8
              |
              d4 d8 es f4 g8 as8
              |
              g4 d4\rest g4 g8 f
              |
              es4 es8 f g4 a8 b
              |
              c4 d,8 e f4 \stemNeutral f,8 g
              |
              as!4 bes!4 ces4 bes8 bes,8
              |
              es4. 8 4 f8 es
              |
              <<
                \relative c {
                  c!4. 8 4 d8-[ c]
                  |
                  c4 as4 as2^(
                  |
                  % TODO should this have a staccato?
                  f'4-.) f8-[ es] d4 d8-[ c]
                  |
                  bes4-. f'4\rest bes,2^(
                  |
                  g'4) g8-[ f] e4 e8-[ d]
                  |
                  c4 s4 c4 e4
                  |
                  % TODO double check this slur
                  aes4^( c,4 f es)
                  |
                  d4 d g f
                  |
                  es aes8 g f4 f8 es
                  |
                  d4 bes'8 aes g4 f4
                  |
                  <c es>4
                }
                \\
                \relative c, {
                  es4 c4 c2
                  |
                  as'4 as8-[ g] f4 f8-[ es]
                  |
                  d4 e4\rest d2_(
                  |
                  bes'4-.) bes8-[ as] g4 g8-[ f]
                  |
                  e4 e4\rest e2
                  |
                  c'4 c8-[ b] as4 g
                  |
                  f'4 s2.
                  |
                  s1
                  |
                  s1
                  |
                  bes,4 b c d
                  |
                  s4
                }
                \\
                \relative c, {
                  \voiceFour
                  s1
                  |
                  s1
                  |
                  s1
                  |
                  s1
                  |
                  s1
                  |
                  s1
                  |
                  % TODO Fix this note, should be more right
                  f2. fis4
                  |
                  g2. g4
                  |
                  aes2. a4
                  |
                }
              >>
            }
          >>
          r4 r4 r8 \stemUp <c es>8
          |
          \stemNeutral
          <f aes>4. 8 4 <g bes>8 <f aes>
          |
          4 <des f>4 2
          |
          <bes' des>4 8 <aes c> <g bes>4 8 <f aes>
          |
          <e g>4 r4 2
          |
          <c' e>4 <c es>8 <bes des> <aes c>4 8 <g bes>
          |
          <f aes>4 <d! f>8^( <es g>) <f aes>4-. <c es>8^( <d f>)
          |
          <es g>4-. \stemDown <b d>8^( <c es>) <d f>4-. <a c>8^( <bes d>)
          |
          <c es>4-. \stemNeutral
          <des' f>8^( <c es> <bes des>4-.) <c es>8^( <bes des>
          |
          <aes c>4-.) 4 <g d>4 r4
          |
          \clef treble r4 r8 <g' b>8 4. \clef bass <g, b>8
          |
          4. <g, b>8 4 r4 \clef treble
          |
          r4 es''''8-[^( d)] r4 es,8-[^( d)]
          |
          r4 es,8-[_( d)] r4 es'8-[^( d)]
          |
          % TODO is this ff on the rigth note?
          c,4.\ff <c' es>8 4. <c, es>8
          |
          4. \clef bass <c, es>8 4 r4 \clef treble
          |
          r4 f'''8^(-[ es]) r4 f,8^(-[ es])
          |
          r4 f,8_(-[ es]) r4 f'8^(-[ es])
          |
          bes4. <bes' d>8 4. <bes, d>8
          |
          4. \clef bass <bes, d>8 4 r4 \clef treble
          |
          r4 g'''8^(-[ f]) r4 g,8^(-[ f])
          |
          r4 g,8_(-[ f]) r4 g'8^(-[ f])
          |
          <es, es'>4. <es' g>8 4. <es, g>8
          |
          4. \clef bass <es, es'>8 4 r4 \clef treble
          |
          r4 r8 <d' d'>8 4. \clef bass <d, d'>8
          |
          4. <d, d'>8 4 r4 \clef treble
          |
          \key c \major
          r4 r8
          <d'' f gis b d>8 4. \clef bass
          <d, f gis b d>8
          |
          4. <d, f gis b d>8 4 r4 \clef treble
          |
          r4 r8
          <d'' g! bes e>8 4. \clef bass
          <d, g bes e>8
          |
          4. <d, g bes e>8 4 r4
          |
          \clef treble
          r4 r8 <d'' fis a d>8 4. \clef bass
          <d, d'>8
          |
          4. <d, d'>8 4. \stemUp d'8_(
          |
          d,4.)
          \stemNeutral
          \repeat unfold 3 { d''8^( d,4.) }
          \clef treble d''8
          |
          \key b \minor
          \showTupletBracket
          \explicitTuplets
          \tuplet 3/2 { b,4 b' ais }
          \tuplet 3/2 { b fis b }
          \hideTupletBracket
          \implicitTuplets
          |
          \tuplet 3/2 { g b g }
          \tuplet 3/2 { b e, b' }
          |
          \tuplet 3/2 { dis, b' dis, }
          \tuplet 3/2 { b' b, b' }
          |
          \tuplet 3/2 { b, e b }
          \tuplet 3/2 { g' e g }
          |
          \tuplet 3/2 { fis b fis }
          \tuplet 3/2 { b fis b }
          |
          \tuplet 3/2 { fis ais fis }
          \tuplet 3/2 { ais fis ais }
          |
          \tuplet 3/2 { fis b fis }
          \tuplet 3/2 { b fis b }
          |
          \tuplet 3/2 { ais cis ais }
          \tuplet 3/2 { cis ais cis }
          |
          \tuplet 3/2 { fis, b fis }
          \tuplet 3/2 { b fis b }
          |
          \tuplet 3/2 { fis ais fis }
          \tuplet 3/2 { ais fis ais }
          |
          \tuplet 3/2 { fis b fis }
          \tuplet 3/2 { b fis b }
          |
          \showTupletBracket
          \explicitTuplets
          \tuplet 3/2 { ais cis ais }
          \hideTupletBracket
          \implicitTuplets
          cis4 r8
          \clef bass
          fis,,,,8\f
          |
          <<
            \relative c {
              d2\rest d4\rest d8\rest
              fis8
              |
              \key gis \minor
              ais4. 8 4 b8 ais\p
              |
            }
            \\
            \relative c, {
              ais4. 8 4 b8 ais
              |
              ais4 fis4
            }
          >>
          |
          ais''4 fis r4 s4
          |
          % todo should this fis point down
          r2 r4 r8 fis,,8\ff
          |
          <<
            \relative c, {
              s4 \relative c' a8\rest fis8 e'4. s8
              |
              s1
              |
              s4 \relative c' a8\rest cis8 ais'4. s8
              |
              s1
              |
              % todo this probably needs more rests to indicate the rhythm.
              s4. e8 s2
              |
            }
            \\
            \relative c, {
              e4. 8 4 s8 e'8
              |
              4
              \relative c { d4\rest d4\rest d8\rest }
              cis,8
              |
              ais'4. 8 4. ais'8
              |
              ais4 s2 \relative c d8\rest \stemUp e,8_(
              |
              \stemDown cis'2_~) 4. g8
              |
            }
          >>
          % todo no tie here?
          e''2_~ 4. g,8_(
          |
          \stemUp
          e'4.)
          \clef treble
          \relative c'' { g8_( e'4.) }
          \clef bass
          \relative c { gis!8_( | e'4.) }
          \clef treble
          \relative c'' { gis!8_( e'4.) }
          \clef bass
          % todo: I think a slur is missing so I added it
          \relative c { ais8_( | e'4.) }
          \clef treble
          \relative c'' { ais8_( e'4.) }
          \clef bass
          \relative c { ais8_( | f'4.) }
          \clef treble
          \relative c'' { ais8_( f'4.) }
          \clef bass
          \stemNeutral
          <bes, bes'>8\f
          |
          \key bes \major
          <bes' bes'>4 c'8 bes f4 g8 f
          |
          d4 es8 d bes4 c8 bes
          |
          \grace { d,16-[ d'] } d'4 es8 d bes4 d8 bes
          |
          f4 bes8 f d8 bes es c
          |
          bes4 c8 bes <f f'>4 es'8 d
          |
          c4 d8 c <g g'>4 <f' as>8 <es g>
          |
          <d f>4 <des fes> <c es> <f,! c'>4
          |
          <g bes>4 <d b'>8 <e c'> <f c>4\fermata
          <<
            \relative c' {
              b8-[ c]
              |
              d4. es8 c4. d8
              |
              c8-[ bes d c]
              a4
              \clef treble
              c8-[ d]
              |
              es4. f8 d4. es8
              |
              d8-[ c es d]
              bes4 d8-[ es]
              |
              f4. ges8 es4 es8-[ f]
              |
              ges4. as8 f8-[ ces' bes as]
              |
              ges4 bes4_~ bes as4^~
              |
              as4 ges4 des' ces
              |
              ces8 bes ces bes bes as bes as
              |
              as ges es' des des4
              ces4
              |
              a!8 bes ces bes
              g as bes as
              |
              f ges as ges
              ges f ges as
              |
              
            }
            \\
            \relative c {
              f4
              |
              f1_~
              |
              f2_~
              f4
              bes4
              |
              bes1_~
              |
              bes4 bes4_~ 4 4
              |
              2 es4 des4
              |
              des1
              |
              des1
              |
              des1
              |
              des1
              |
              des1
              |
              des2 des2
              |
              des2 4 ces4
              |
            }
          >>
          |
          <bes' bes'>4 <as as'>4
          \clef bass
          <es es'>4 <d! d'!>
          |
          <des des'>4
          <<
            \relative c {
              des4^~ des8 ces bes a
            }
            \\
            \relative c, {
              \voiceOne des4_~ \voiceTwo des4 des
            }
          >>
          <ges,, ges'>8 <des'' ges bes>8-[ 8 8] r8
          <bes des ges>8-[ 8 8]
          |
          r8 <des ges bes>8 r8 <bes des ges>
          r8 <des ges bes> r8 <ces d f as>
          |
          <ges, ges'>8 <d''! f as ces>8-[ 8 8]
          r8 <ces d f as>8-[ 8 8]
          |
          r8 <d f as ces>8 r8 <ces d f as>
          r8 <d f as ces>8 r8 <des fes g bes>
          |
          <ges,, ges'>8 <fes'' bes des>8-[ 8 8]
          r8 <des fes g bes>8-[ 8 8]
          |
          r8 <fes g bes d>8-[ r8 <des fes g bes>]
          r8 <fes g bes d>8-[ r8 <eses g ces>]
          |
          <ges,, ges'>8 <ges'' ces eses>8-[ 8 8]
          r8 <eses ges ces>8-[ 8 8]
          |
          r8 <f as ces d!>8-[ r8 <d! f as ces>]
          r8 <f as ces d>8-[ r8 <fes g bes des>]
          |
          r8 <g bes des fes>-[ r8 <fes g bes des>]
          r8 <g bes des fes>-[ r8 <ges ces eses>]
          |
          r8 8 r8 8 r8 8 r8 <as ces des f>
          |
          % NOTE: as per M 27
          r8 <as as'>-[ r8 <ges ges'>]
          r8 <es es'>-[ r8 <des des'>]
          |
          r8 <ces ces'>-[ r8 <bes bes'>]
          r8 <as as'>-[ r8 <ges ges'>]
          |
          r8 <es es'>-[ r8 <des des'>]
          r8 <ces ces'>-[ r8 <bes bes'>]
          |
          r8 <as as'>-[ r8 <ges ges'>]
          r8 es'8-[ r8 \relative c, des8]
          |
          r8 f8-[ r8 \relative c, des8]
          r8 as8-[ r8 \relative c, des8]
          |
          r8 des8-[ r8 \relative c, des8]
          r8 f8-[ r8 \relative c, des8]
          |
          r8 as8-[ r8 \relative c, des8]
          \stemUp
          r8 des8-[ r8 \relative c, des8]
          \stemNeutral
          |
          r8 des8 r8 \relative c, des8 r8 <fis, cis'>4\fermata\pp b,,8\ff
          |
          \key b \minor
          <fis'' b d>4. 8 4 8-[ 8]
          | 
          4 <d fis b>4 r4\fermata r8 b8\pp
          |
          \relative c' d4.
          b8
          \relative c' d4.
          b8
          |
          \relative c' d4.
          g8
          \relative c' b4.
          g8
          |
          \relative c' b4.
          g8
          \relative c' b4.
          g8
          |
          \relative c' b4.
          c,8
          \relative c es4.
          c8
          |
          \key c \major
          \relative c es4.
          c8
          \relative c es4.
          c8
          |
          \relative c es4.
          g8
          \relative c a4.
          g8
          |
          \relative c a4.
          f'8
          c4.
          f8
          |
          a,4.
          f'8
          ges,4.
          f'8
          |
          \key bes \major
          <f, f'>4
          \clef treble
          ges''''8-[ f] ges4
          f8-[ e]
          |
          f4 ges,8-[ f] ges4
          f8-[ e]
          |
          <f, a c es>4 r8 f8_( a4) r8 c8_(
          |
          f4) r8 \stemUp a8_( c4) \stemNeutral es8-[ c]
          |
          g8_( a bes g es f g es
          |
          c d es c a bes c a)
          |
          \clef bass
          <f bes d>4 r8 f8^( bes4)
          r8 d8^(
          |
          % TODO clef position ok?
          f4) \clef treble r8
          bes8^( d4) d,8-[ bes8]
          |
          bes'8 c d bes
          d, es f d
          |
          bes c d bes
          d' es f d
          |
          es f es d
          es f g es
          |
          c d es c
          a bes c a
          |
          es f ges es
          c d es c
          |
          a bes c a
          c' bes a c
          |
          d es d c
          d es f d
          |
          bes c d bes
          f a bes f
          |
          \clef bass
          d es f d
          bes c d bes
          |
          f a bes f
          es bes' f es
          |
          <<
            \relative c {
              d4^( bes'4 g8) a8\rest es'8^( c
              |
              % TODO: position of clef correct?
              a4) f'4 d \relative c d4\rest \clef treble
              |
              \relative c'' b4\rest
              <bes d e g>4 <c f a> <g' bes>8-[ c]
              |
              c4 d8.-[ e16] f4 s4
              |
            }
            \\
            \relative c {
              s4 bes4 es8 s4.
              |
              s4 f4 bes4 s4
              |
              s4 s4 s4 c4
              |
              f4 f f g8-[ a]
              |
            }
          >>
          |
          bes''4^( <d, f> <es! g>8) r8 c'8-[ es]
          |
          f4^( <a, c> <bes d>8) r8 g8-[^( fis])
          |
          g4 \stemUp <g bes es>4 <g c>4 <fis a>
          |
          <fis a>4 <d fis> <g bes> <f as>8-[ <e g>]
          |
          4 <c e>4 <f as> <e ges>8-[ <d f>]
          |
          4 <bes d> <e g!> <d f>8-[ <cis e>]
          |
          4 <a cis> <d f> <c es>8-[ <b d>]
          \clef bass
          |
          <<
            \relative c' {
              d4 e c d
            }
            \\
            \relative c' {
              b4 c8 bes a4 bes8-[ d,]
            }
          >>
          |
          \stemNeutral
          <c,_~ f_~ es'^~>1
          |
          2
          <d f d'>2
          |
          <c,_~ f_~ es'^~>1
          |
          2 <d f d'>2
          |
          <d d'>2 <g g'>
          |
          <e e'> <f f'>4
          r4
          |
          \clef treble
          <c''_~ f_~ es'^~>1
          |
          2 <d f d'>2
          \clef bass
          |
          \stemNeutral
          <c,_~ f_~ es'^~>1
          |
          2 <d f d'>2
          |
          <d d'>2
          <g g'>
          |
          <e e'> <f f'>4 <ges ges'>
          |
          \clef treble
          <g g'>2 <c c'>
          |
          <a a'> <bes bes'>4 <ces ces'>
          |
          <c c'>2 <fes fes'>
          |
          <d d'> <es es'>
          \clef bass
          |
          <es,, es'>4 4 r2
          |
          \clef treble r4
          <es'' g>4\sf <d f> <e g>8 <f as>
          |
          <g bes>4
          \clef bass
          <es,, es'>4 r2
          |
          r4 <e e'>4
          r4 <c c'>4
          |
          r4 <f f'>4
          r4 <g g'>4
          |
          \stemNeutral
          f8 a bes d
          f a bes d
          |
          \clef treble
          f a bes d
          r2
          |
          e8 f g f a bes c bes
          |
          cis d es d
          f4
          \explicitTuplets
          \tuplet 3/2 { f,,8 g a }
          |
          \showTupletBracket
          \tuplet 3/2 { bes,4 bes' a }
          \tuplet 3/2 { bes a bes }
          |
          \implicitTuplets
          \hideTupletBracket
          \tuplet 3/2 { ges bes ges }
          \tuplet 3/2 { bes es, bes' }
          |
          \tuplet 3/2 { d, bes' f }
          \tuplet 3/2 { bes, bes' f }
          |
          \tuplet 3/2 { es bes' es, }
          \tuplet 3/2 { ges bes ges }
          |
          \tuplet 3/2 { f bes f }
          \tuplet 3/2 { b f b }
          |
          \tuplet 3/2 { f c' a }
          \clef bass
          \tuplet 3/2 { f, c' a }
          |
          bes,8 bes' d bes
          f bes bes' bes,
          |
          g bes bes' bes,
          es, bes' g' bes,
          |
          d, bes' f' bes,
          bes, bes' d bes
          |
          es, bes' g' bes,
          g bes bes' bes,
          |
          f bes a bes
          f d c bes
          |
          f g a bes
          c d es f
          |
          \repeat unfold 7 { bes,, bes' }
          b, b'
          |
          c, c'
          b, b'
          c, c'
          es, es'
          |
          e, e'
          g, g'
          f, f'
          f, f'
          |
          f, f' bes, bes'
          f, f' f f'
          |
          bes,, bes' f, f'
          a, a' c, c'
          |
          bes, bes'
          f, f'
          a,, a' c, c'
          |
          bes, bes' f, f'
          b, b' d, d'
          |
          c, c' g, g'
          b, b' d, d'
          |
          c, c' g, g'
          c, c' es, es'
          |
          d, d' a, a'
          cis, cis' e, e'
          |
          d, d' a, a'
          d, d' f, f'
          |
          es,! es'! bes, bes'
          d, d' f, f'
          |
          es, es' bes, bes'
          es, es' ges, ges'
          |
          f, f' c, c'
          es, es' ges, ges'
          |
          des, des' a, a'
          c, c' es, es'
          |
          ges,, ges' f, f'
          a, a' es es'
          |
          <bes, bes'>2 <as' as'>2
          |
          <ges ges'>2 <es es'>
          |
          <d d'> <bes bes'>
          |
          <es es'>
          <ges' bes>4
          <<
            \relative c' {
              \naturalTrill
              \once \override TrillSpanner.bound-details.right.padding = #2.8
              \stemDown bes4^~\startTrillSpan \stemNeutral
              |
              bes1^~
              |
              bes1^~
              |
              bes1^~
              |
              bes1^~
              |
              bes1^~
              |
              bes1
              |
              s4\stopTrillSpan
              \regularTrill
            }
            \\
            \relative c' {
              g4
              |
              f4 g as f
              |
              g as g es
              |
              d es f d
              |
              es f g as
              |
              g2. as4
              |
              g2. f4
              |
              <f bes d>1^\fermata
            }
          >>
          |
          \clef treble
          r4
          bes'8^( a g f g a
          |
          bes c d es f g a bes)
          |
          \clef bass
          r8
          f,,,-[^( g a] bes c d es
          |
          f g a bes c d es d)
          |
          <bes d>4. 8 4 r8
          <b,, b'>8
          |
          <a a'>4. 8 4 r8 <b'' d>8
          |
          <c es>4. 8 4 r8 <cis,, cis'>8
          |
          <d d'>4. 8 4 r8 \clef treble <cis'' e>\p
          |
          <d f>4. 8 4 r8 \clef bass <d,, d'>8
          |
          <es es'>4. 8 4 r4
          |
          r2 r4 r8 <es es'>8
          |
          <f, f'>4. 8 4 r4
          |
          r2 r4
          ges8^\p f
          |
          ges8 f ges f
          a bes a bes
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

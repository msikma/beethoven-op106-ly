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
    subtitle = "Große Sonate für das Hammerklavier"
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
                g1\startTrillSpan
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
          <g, es' g>\sf r4 <as f' as>\sf r4
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

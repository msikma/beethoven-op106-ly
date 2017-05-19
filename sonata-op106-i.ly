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

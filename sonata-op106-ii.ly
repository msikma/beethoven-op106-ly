%===========================================================================
%    Piano Sonata Op.106 (L.Beethoven) - II
%===========================================================================
%
%    (C) 2016-2017, Michiel Sikma <michiel@sikma.org>
%    Licensed under CC BY-SA 4.0.
%
%---------------------------------------------------------------------------

\version "2.19.42"
\include "sonata-op106-includes.ily"

%---------------------------------------------------------------------------
%    II. Scherzo - Assai vivace
%---------------------------------------------------------------------------

two-section-one = {
  \key bes \major
  \time 3/4
  \partial 4
  \tempo "Assai vivace"
}

\bookpart {
  \paper {
    markup-system-spacing = \std-padding-page-n
    bookTitleMarkup = \std-title-markup-page-n
  }
  \header {
    subtitle = "Scherzo"
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
          \two-section-one
          \override Slur.height-limit = #3
          <<
            \relative c'' {
              \stemNeutral
              \once \override Slur.positions = #'(2.18 . 3)
              d8.^(\< <a f'>16) | <c f>4\>^( \stemUp <d f,>8)\!
            }
            \\
            \relative c'' {
              \once \override DynamicText.extra-offset = #'(-2.4 . 1.8)
              \once \override DynamicText.self-alignment-X = #LEFT
              s8._\p
            }
          >> r8
          \once \override Slur.positions = #'(0 . 2.5)
          bes8.(\< <fis d'>16) | <a d>4\>( <bes d,>8)\! r8
          \once \override Slur.positions = #'(0 . 2.5)
          g8.-[(\< <d bes'>16]) <f bes>4\>( <bes, g'>8)\! r8
          \once \override Slur.positions = #'(0 . 2.5)
          <bes g'>8.-[(\< <es a>16]) | <es a>4\>( <bes bes'>8)\! r8
          <<
            \relative c'' {
              bes8.(\< c16) | <f,_~ c'>4\>( <f bes d>8)\!
            }
            \\
            \relative c' {
              f4
            }
          >>
          r8
          <<
            \relative c'' {
              d8.(\cresc es16) | \break <bes es>4( \stemNeutral <f bes des f>8) r8 \stemNeutral <g bes c g'>8\f
            }
            \\
            \relative c'' {
              bes4
            }
          >>
          r8 |
          <c a' c>8 r8 r4
          \once \override DynamicText.extra-offset = #'(-2.4 . 1.8)
          \once \override DynamicText.self-alignment-X = #LEFT
          \override Slur.height-limit = #4
          <<
            \relative c''' {
              \stemNeutral
              \override Slur.height-limit = #4
              d8.(\< <a f'>16) | <c f>4\>( <f, d'>8)\!
            }
            \\
            \relative c'' {
              \once \override DynamicText.extra-offset = #'(-2.4 . 1.8)
              \once \override DynamicText.self-alignment-X = #LEFT
              s8._\p
            }
          >>
          r8
          \once \override Slur.height-limit = #4
          bes''8.(\< <fis d'>16) | <a d>4\>( <d, bes'>8)\! r8
          g8.(\< <d bes'>16) | <f bes>4\>( <bes, g'>8)\! r8
          <g' bes,>8.(\< <es a>16) | <es a>4\>( <bes bes'>8)\! r8
          <<
            \relative c'' {
              \once \override Slur.positions = #'(0 . 2.5)
              \override Slur.height-limit = #5
              bes'8.(\cresc c16) | \break <f,_~ c'>4( <f d'>8) r8
              \once \override Slur.positions = #'(0 . 2.5)
              es'8.( e16) | \stemNeutral <bes e>4( <f a f'>8)
              r8 <g bes e g>8\f
            }
            \\
            \relative c'' {
              f4 | s4 s4 bes4
            }
          >>
          r8 | <f' a f'>8 r8 r4
          \once \override Slur.height-limit = #5
          \once \override Slur.positions = #'(0 . 0)
          <<
            \relative c''' {
              \stemNeutral
              \override Slur.height-limit = #4
              <b, d>8.(\> <d f>16) | <d f>4\!( <b d>8)\!
            }
            \\
            \relative c'' {
              \once \override DynamicText.extra-offset = #'(-3.4 . 2.2)
              \once \override DynamicText.self-alignment-X = #LEFT
              % TODO fix this \p
              s8._\parenP\p
            }
          >>
          r8
          \once \override Slur.height-limit = #7
          \once \override Slur.positions = #'(0 . 0)
          <b, d>8.(\> <es g>16) | <es g>4\!( <c es>8) r8
          <a c>8.(\> <c es>16) | <c es>4\!( <a c>8) r8
          <a c>8.(\> <des f>16) | \break <d! f>4\!( <bes d>8)
          r8
          <<
            \relative c'' {
              \voiceOne
              \once \override Slur.height-limit = #4
              \once \override Slur.positions = #'(0 . 3)
              \change Staff = "left"
              \once \override DynamicText.extra-offset = #'(-1.8 . -2.5)
              \once \override DynamicText.self-alignment-X = #LEFT
              <a, c>8.^(^\p <c es>16) | <c es>2^(^\textDecrescEnd "dimin." <bes d>4 |
              <a c>4 <g bes>4 <f_~ a^~>4 |
              <f a>4 <e g>4^\pp <es_~ c'^~>4 |
              <es c'>4 <b' d,>4)
              \change Staff = "right"
            }
            \\
            \relative c {
              \voiceOne
              \change Staff = "left"
              s4 |
              s2. |
              s2. |
              s2 g'4^~ |
              \voiceTwo
              g2
              \change Staff = "right"
            }
          >>
          r4 | r4 r4
          b,8.(\pp d16) | d4( b8) r8 \clef treble
          <<
            \relative c'' {
              \once \override Slur.height-limit = #4
              b8.( d16) | \break d4( b8)
            }
            \\
            \relative c' {
              d4_~ | d8.
            }
          >>
          r8
          \once \override Slur.positions = #'(1 . 1)
          c''8.(\pp es16) | es4( c8) r8
          \once \override Slur.positions = #'(0 . 2.5)
          <d,, b'>8.(\cresc <f d'>16) | <f d'>4( <d b'>8) r8
          \once \override Slur.positions = #'(0 . 2.5)
          <d b'>8.( <g es'>16) | <g es'>4( <es c'>8) r8
          \once \override Slur.positions = #'(2.2 . 2.5)
          \once \override Slur.height-limit = #9
          \once \override Slur.eccentricity = #-0.55
          <a c>8.(\f <c a'>16) | <c a'>4( <a f'>8) r8
          <bes bes'>8 r8 | <bes bes'>8 r8 r4
          <<
            \relative c'' {
              \stemNeutral
              \override Slur.height-limit = #4
              <b' d>8.(\> <d f>16) | \break <d f>4\!( <b d>8)
            }
            \\
            \relative c'' {
              \once \override DynamicText.extra-offset = #'(-2.4 . 1.8)
              \once \override DynamicText.self-alignment-X = #LEFT
              s8._\p
            }
          >>
          r8
          <b' d>8.(\> <es g>16) | <es g>4\!( <c es>8) r8
          \once \override Slur.positions = #'(0 . 0)
          <a c>8.(\> <c es>16) | <c es>4\!( <a c>8) r8
          <a c>8.(\> <des f>16) | <d! f>4\!( <a c>8) r8
          <<
            \relative c''' {
              \voiceTwo
              \once \override Slur.height-limit = #5
              <a, c>8.^(\p <c es>16 | <c es>2_\textDecrescEnd "dimin." <bes d>4 |
              <a c>4
              \voiceOne
              <g bes>4 <f_~ a^~>4 |
              <f a>4 <e g>4 <es_~ c'^~>4\parenP\pp |
              <es c'>4 <b' d,>4)
            }
            \\
            \relative c' {
              s4 |
              s2. |
              s2. |
              s2 \voiceOne g'4^~ |
              \voiceTwo
              g2
            }
          >>
          r4 | r4 r4
          b,8.(\pp d16) | d4( b8) r8
          <<
            \relative c''' {
              \once \override Slur.positions = #'(0 . 6)
              \once \override Slur.height-limit = #5
              b8.(\pp d16) | d4( b8)
            }
            \\
            \relative c'' {
              d4_~ | d8.
            }
          >>
          r8
          c8.(\pp es16) | es4( c8) r8
          <d b'>8.(\cresc <f d'>16) | <f d'>4( <d b'>8) r8
          <d b'>8.( <g es'>16) | <g es'>4( <e c'>8) r8
          <a c>8.(\f <c a'>16) | <c a'>4( <a f'>8) r8
          <bes bes'>8 r8 | <bes bes'>8 r8 r4
          \bar "||"
          \key bes \minor
          <des,_~ des'^~>4_\sempliceWhiteout |
          <des des'> <f f'>^( <des_~ des'^~>) |
          <des des'>\!
          \once \override Slur.positions = #'(2 . 5.6)
          \once \override Slur.eccentricity = #0.7
          \once \override Slur.height-limit = #4.5
          <bes bes'>^( <f f'> |
          <bes bes'>2\cresc <des des'>4 |
          \break
          <f f'>2\< <des des'>4 |
          <bes bes'>2 <aes aes'>4 |
          <bes bes'>2 <des des'>4\> |
          <f f'>2 <aes aes'>4 |
          <des, des'>4)\!\p r4 <bes bes'>8 r8 |
          \break
          <bes bes'>8 r8 r4
          \explicitTuplets
          \tuplet 3/2 \relative c'' { des8 bes f } |
          \tuplet 3/2 \relative c'' { des8 bes f }
          \tuplet 3/2 \relative c'' { f8 des bes }
          \tuplet 3/2 \relative c'' { des8 bes f } |
          \implicitTuplets
          \tuplet 3/2 \relative c'' { des8\cresc bes f }
          \tuplet 3/2 \relative c'' { bes8 f des }
          \tuplet 3/2 \relative c' { f8 des bes } |

          \tuplet 3/2 \relative c' { <des bes'>8 bes des }
          \tuplet 3/2 \relative c' { bes'8 des, bes }
          \tuplet 3/2 \relative c' { <f des'>8 des f } |

          \tuplet 3/2 \relative c'' { f8 des bes }
          \tuplet 3/2 \relative c'' { f8 des bes }
          \tuplet 3/2 \relative c'' { des8 bes f } |
          \break
          \tuplet 3/2 \relative c'' { bes8\> f des }
          \tuplet 3/2 \relative c'' { bes8_\textDecresc "dimin." f des }
          \tuplet 3/2 \relative c' { f8 des bes } |

          \tuplet 3/2 \relative c' { <des aes'>8 aes des }
          \tuplet 3/2 \relative c'' { aes8 f des }
          \tuplet 3/2 \relative c' { <f des'>8 des f } |
          \tuplet 3/2 \relative c'' { f8 des aes }
          \tuplet 3/2 \relative c'' { f8 des aes }
          \tuplet 3/2 \relative c''' { aes8 f des } |

          <f des'>4\! r4 <f'_~ f'^~>4 |
          <f f'>4 <aes aes'>4^( <f_~ f'^~>) |
          \break
          <f f'>4
          \once \override Slur.positions = #'(2 . 4.6)
          \once \override Slur.eccentricity = #0.7
          \once \override Slur.height-limit = #4.5
          <des des'>4^( <aes aes'> |
          <des des'>2 <f f'>4 |
          <aes aes'>2 <f f'>4 |
          <des des'>2 <bes bes'>4 |
          <aes aes'>2 <bes bes'>4 |
          <des des'>2 <f f'>4 |
          <bes, bes'>4) r4 <des, des'>8 r8 | <des des'>8 r8

          <<
            \relative c'' {
              s4 f4 |
              f4 aes f
            }
            \\
            {
              \implicitTuplets
              \tuplet 3/2 \relative c' { des8 f des' }
              \tuplet 3/2 \relative c'' { f8 des bes } |
              \tuplet 3/2 \relative c'' { f8 des bes }
              \tuplet 3/2 \relative c'' { f8 des bes }
              \tuplet 3/2 \relative c'' { f8 des bes }
            }
          >> |
          \tuplet 3/2 \relative c'' { f8\cresc des bes }
          \tuplet 3/2 \relative c'' { des8 aes f }
          \tuplet 3/2 \relative c'' { <des, aes'>8 aes f' } |
          \break
          \tuplet 3/2 \relative c' { <f des'>8 des f }
          \tuplet 3/2 \relative c'' { des8 aes f }
          \tuplet 3/2 \relative c'' { f8 des aes } |
          \tuplet 3/2 \relative c''' { aes8 f des }
          \tuplet 3/2 \relative c'' { f8 des f }
          \tuplet 3/2 \relative c'' { f8 des f, } |
          \tuplet 3/2 \relative c'' { des8_\textDecrescEnd "dimin." bes f }
          \tuplet 3/2 \relative c'' { des8 bes f }
          \tuplet 3/2 \relative c'' { bes8 f des } |
          \tuplet 3/2 \relative c' { f8\p des bes }
          \tuplet 3/2 \relative c' { f8 des bes }
          \tuplet 3/2 \relative c' { <des bes'>8 bes des } |
          \tuplet 3/2 \relative c'' { des8 bes f }
          \tuplet 3/2 \relative c'' { des8 bes f }
          \tuplet 3/2 \relative c'' { f8 des f, } |
          bes'4\pp r4 r4
          \bar "||"
          \time 2/4
          \tempo "Presto"
          bes8\p r8 des8 r8 |
          c8 r8 f,8 r8 |
          f'8 r8 es8 r8 |
          des8 r8 c8 r8 |
          bes8 r8 des8 r8 |
          c8 r8 aes8 r8 |
          c8 r8 g8 r8 |
          f2 |

          \break
          r8\cresc <f aes c>8 r8 <f aes c>8 |
          r8 <e bes' c>8 r8 <e g bes c>8 |
          r8 <e g c>8 r8 <e g c>8 |
          r8 <f aes c>8 r8 <e bes' c>8 |
          r8 <f aes c>8 r8 <f aes c f>8 |
          r8 <f bes c f>8 r8 <e bes' c e>8 |
          r8 <f c' f>8 r8 <f c' es!>8 |
          \break
          r8 <f bes des>8 r8 <es a c>8 |

          <bes' f' bes>8\ff r8 <des f bes des>8 r8 |
          <c f a c>8 r8 <f, a c f>8 r8 |
          <f' bes f'>8 r8 <es f a es'>8 r8 |
          <des f bes des>8 r8 <c f c'>8 r8 |
          <bes des f bes>8 r8 <des f bes des>8 r8 |
          <c f c'>8 r8 <f, a c f>8 r8 |
          <f' f'>8 r8 <des bes' des>8 r8 |
          <c a' c>2 |
          <f f'>8 r8 <bes des>8 r8 |
          <a c>2\sf |
          \bar "||"
          \key bes \major
          <a, c>2\sf |
          \change Staff = "left"
          <a, c>2^\sf |
          \clef bass <a, c>2^\sf |
          s2 |
          s2 |
          \change Staff = "right"
          s4
          \relative c'' {
            <<
              {
                % Workaround for \teeny - works with \magnifyStaff
                \once \override Dots.dot-count = #0
                \override Rest.font-size = #-3
                b2.\rest
              }
              \\
              {
                s2.^\markup "Prestissimo"
              }
            >>
            s2.
            % Workaround for \teeny - works with \magnifyStaff
            \override NoteHead.font-size = #-3
            \override Rest.font-size = #-3
            \once \override Dots.dot-count = #0
            b2.\rest
            \stemUp
            \once \override Beam.positions = #'(1.0 . 2.0) % start: -1.5 . -0.5
            \tuplet 3/2 { f8 g a }
            \once \override Beam.positions = #'(2.5 . 4.5) % start: 0.0 . 1.5
            bes-[ c d e]
            \stemDown
            \once \override Beam.positions = #'(0.2 . 0.8)
            \tuplet 3/2 { f g a }
            \once \override Beam.positions = #'(1.0 . 2.0)
            bes-[ c d e]
            \ottava #1
            \set Staff.ottavation = "8"
            \stemUp
            \once \override Beam.positions = #'(4.5 . 5.5) % start: 2.0 . 3.0
            \tuplet 3/2 { f g a }
            \once \override Beam.positions = #'(6.0 . 8.0) % start: 3.5 . 5.0
            bes-[ c d e]
            % Workaround for \normalsize - works with \magnifyStaff
            \override NoteHead.font-size = #0
            \override Rest.font-size = #0
            f8
            \ottava #0
          }
          \stemNeutral
          r8\fermata
          \bar "||"
          \time 3/4
          <es''' ges>16^( a, <es' ges> a, |
          <es' ges> a, <es' ges> a, <es' ges> a, <es' ges> a,) r4 |
          \break
          r4 r4
          \relative c'' {
            \override Slur.height-limit = #3
            <<
              \relative c'' {
                \stemNeutral
                \once \override Slur.positions = #'(2.18 . 3)
                d8.(\< <a f'>16) | <c f>4\>( \stemUp <d f,>8)\!
              }
              \\
              \relative c'' {
                \once \override DynamicText.extra-offset = #'(-2.4 . 1.8)
                \once \override DynamicText.self-alignment-X = #LEFT
                s8._\p
              }
            >> r8
            \once \override Slur.positions = #'(0 . 2.5)
            bes8.(\< <fis d'>16) | <a d>4\>( <bes d,>8)\! r8
            \once \override Slur.positions = #'(0 . 2.5)
            g8.-[(\< <d bes'>16]) <f bes>4\>( <bes, g'>8)\! r8
            \once \override Slur.positions = #'(0 . 2.5)
            <bes g'>8.-[(\< <es a>16]) | <es a>4\>( <bes bes'>8)\! r8
            <<
              \relative c'' {
                bes8.(\< c16) | <f,_~ c'>4\>( <f bes d>8)\!
              }
              \\
              \relative c' {
                f4
              }
            >>
            r8
            <<
              \relative c'' {
                d8.(\cresc es16) | \break <es, bes' es>4( \stemNeutral <f bes des f>8) r8 \stemNeutral <g bes c g'>8\f
              }
              \\
              \relative c'' {
                bes4
              }
            >>
            r8 |
            <c a' c>8
          }
          r8 r4
          <<
            \relative c'' {
              s4 | b8\rest \stemDown f'4
            }
            \\
            \relative c''' {
              \once \override Slur.positions = #'(5.5 . 5.5)
              d8.^(\< <a f'>16) | \stemUp
              \once \override Voice.Stem.length = #3.8
              f'4\>^( d8)\!
            }
            \\
            \relative c'' {
              \once \override DynamicText.extra-offset = #'(-2.4 . 1.8)
              \once \override DynamicText.self-alignment-X = #LEFT
              s8._\p
            }
          >>
          r8
          <<
            \relative c'' {
              s4 | b8\rest \stemDown d4
            }
            \\
            \relative c''' {
              \once \override Slur.positions = #'(4.5 . 4.5)
              bes8.^(\< <fis d'>16) | \stemUp
              \once \override Voice.Stem.length = #3.8
              d'4\>^( bes8)\!
            }
          >>
          r8
          <<
            \relative c'' {
              s4 | b8\rest \stemDown bes4
            }
            \\
            \relative c''' {
              \once \override Slur.positions = #'(3.5 . 3.5)
              g8.^(\< <d bes'>16) | \stemUp
              \once \override Voice.Stem.length = #3.8
              bes'4\>^( g8)\!
            }
          >>
          r8
          <<
            \relative c'' {
              s4 | b8\rest \stemDown es8-[ bes]
            }
            \\
            \relative c'' {
              <bes g'>8.^(\< <es a>16) | \stemUp a4\>^( bes8)\!
            }
          >>
          r8
          <<
            \relative c''' {
              bes8.^(\cresc c16) | \break c4^( d8) b,8\rest
              \once \override Slur.height-limit = #4
              es'8.( e16) | e4^( f8) b,,8\rest
              \stemDown
              <g' bes e? g>8\f b,8\rest |
              <f' a f'>8
            }
            \\
            \relative c'' {
              f4 | b,8\rest f'4 s8
              bes4 | b,8\rest bes'8-[ a]
            }
          >>
          r8 r4
          \once \override Slur.height-limit = #5
          \once \override Slur.positions = #'(0 . 0)
          <<
            \relative c''' {
              \stemNeutral
              \override Slur.height-limit = #4
              <b, d>8.^(\> <d f>16) | <d f>4\!^( <b d>8)\!
            }
            \\
            \relative c'' {
              \once \override DynamicText.extra-offset = #'(-2.4 . 1.8)
              \once \override DynamicText.self-alignment-X = #LEFT
              s8._\p
            }
          >>
          r8
          \once \override Slur.height-limit = #7
          \once \override Slur.positions = #'(0 . 0)
          <b d>8.^(\> <es g>16) | <es g>4\!^( <c es>8) r8
          <<
            \relative c' {
              s4 | s8 \stemDown es4
            }
            \\
            \relative c'' {
              \once \override Slur.height-limit = #7
              \once \override Slur.positions = #'(1 . 1)
              <a c>8.^(\> <c es>16) | e,8\rest\!
            }
            \\
            \relative c'' {
              s4 | \stemUp
              \once \override Voice.Stem.length = #6.5
              <c es>4^( <a c>8)
            }
          >>
          r8
          <<
            \relative c' {
              s4 | s8 \stemDown f4
            }
            \\
            \relative c'' {
              \once \override Slur.height-limit = #7
              \once \override Slur.positions = #'(1 . 1)
              <a c>8.^(\> <des f>16) | e,8\rest\!
            }
            \\
            \relative c'' {
              s4 | \stemUp
              <d! f>4^( <bes' d>8)
            }
          >>
          r8
          \clef bass
          <<
            \relative c'' {
              \voiceTwo
              \once \override Slur.height-limit = #4
              \once \override Slur.positions = #'(0 . 3)
              <a, c>8.^(\p <c es>16 | <c es>2_\textDecresc "dimin." <bes d>4 |
              <a c>4 <g bes>4 <f_~ a^~>4 |
              <f a>4 <e g>4 <es_~ c'^~>4\pp |
              <es c'>4 <b' d,>4)
            }
            \\
            \relative c {
              \voiceTwo
              s4 |
              s2. |
              s2. |
              s2 g'4^~ |
              \voiceOne
              g2
            }
          >>
          r4 | r4 r4
          b,8.^(\pp d16) | d4^( b8) r8 \clef treble
          <<
            \relative c'' {
              \once \override Slur.height-limit = #4
              b8.^( d16) | \break d4^( b8)
            }
            \\
            \relative c' {
              d4_~ | d8 d4
            }
          >>
          r8
          \once \override Slur.positions = #'(1 . 1)
          c''8.^(\pp es16) | es4^( c8) r8
          \once \override Slur.positions = #'(0 . 2.5)
          <d,, b'>8.^(\cresc <f d'>16) | <f d'>4^( <d b'>8) r8
          \once \override Slur.positions = #'(0 . 2.5)
          <d b'>8.^( <g es'>16) | <g es'>4^( <es c'>8) r8
          \once \override Slur.positions = #'(2.2 . 2.5)
          \once \override Slur.height-limit = #9
          \once \override Slur.eccentricity = #-0.55
          <a c>8.^(\f <c a'>16) | <c a'>4^( <a f'>8) r8
          <bes bes'>8 r8 | <bes bes'>8 r8 r4
          <<
            \relative c'' {
              \stemNeutral
              \override Slur.height-limit = #4
              <b' d>8.^(\> <d f>16) | \break <d f>4\!^( <b d>8)
            }
            \\
            \relative c'' {
              \once \override DynamicText.extra-offset = #'(-2.4 . 1.8)
              \once \override DynamicText.self-alignment-X = #LEFT
              s8._\p
            }
          >>
          r8
          <b' d>8.^(\> <es g>16) | <es g>4\!^( <c es>8) r8
          \once \override Slur.positions = #'(0 . 0)
          <<
            \relative c'' {
              s4 | s8 \stemDown es4
            }
            \\
            \relative c''' {
              \once \override Slur.height-limit = #7
              \once \override Slur.positions = #'(1 . 1)
              <a c>8.^(\> <c es>16) | e,8\rest\!
            }
            \\
            \relative c''' {
              s4 | \stemUp
              <c es>4^( <a c>8)
            }
          >>
          r8
          <<
            \relative c'' {
              s4 | s8 \stemDown f4
            }
            \\
            \relative c''' {
              \once \override Slur.height-limit = #7
              \once \override Slur.positions = #'(1 . 1)
              <a c>8.^(\> <des f>16) | e,8\rest\!
            }
            \\
            \relative c''' {
              s4 | \stemUp
              <d! f>4^( <bes d>8)
            }
          >>
          r8
          <<
            \relative c''' {
              \voiceTwo
              \once \override Slur.height-limit = #5
              <a, c>8.^(\p <c es>16 | <c es>2_\textDecresc "dimin." <bes d>4 |
              <a c>4
              \voiceOne
              <g bes>4 <f_~ a^~>4 |
              \break <f a>4 <e g>4 <es_~ c'^~>4\pp |
              <es c'>4 <b' d,>4)
            }
            \\
            \relative c' {
              s4 |
              s2. |
              s2. |
              s2 \voiceOne g'4^~ |
              \voiceTwo
              g2
            }
          >>
          r4 | r4 r4
          b,8.^(\pp d16) | d4^( b8) r8 \clef bass
          <<
            \relative c' {
              \once \override Slur.height-limit = #4
              \once \override Slur.positions = #'(0 . 4.5)
              b8.^( d16) | d4^( b8)
            }
            \\
            \relative c {
              d4_~ | d8 d4
            }
          >>
          r8 \clef treble
          \once \override Slur.positions = #'(1 . 1)
          c'8.^(\pp es16) | es4^( c8) r8
          \once \override Slur.positions = #'(0 . 2.5)
          <d, b'>8.^(\cresc <f d'>16) | <f d'>4^( <d b'>8) r8
          \once \override Slur.positions = #'(0 . 2.5)
          <d b'>8.^( <g es'>16) | \break <g es'>4^( <es c'>8) r8
          \once \override Slur.positions = #'(2.2 . 2.5)
          \once \override Slur.height-limit = #9
          \once \override Slur.eccentricity = #-0.55
          \ottava #1
          \set Staff.ottavation = #"8"
          <a c>8.^(\f <c a'>16) | <c a'>4^( <a f'>8) r8
          <bes bes'>8 r8 | <bes bes'>8
          \ottava #0
          r8 r4
          \relative c' {
            <b b'>8 r8 <b b'>8 r8 r4
          }
          \ottava #1
          \set Staff.ottavation = #"8"
          <bes! bes'!>8 r8 | <bes bes'>8
          \ottava #0
          r8 r4
          \relative c' {
            <b b'>8 r8 <b b'>8_\textDecrescEnd "dimin." r8 r4
          }
          \relative c' {
            <ais ais'>8 r8 <ais ais'>8_\textDecresc "un poco" r8 r4
          }
          d,,8._( fis16) | fis4_(_\textDecresc "ritar" d8) r8
          <b b'>8\p_\textDecresc " " r8 |
          <b b'>8_\textDecresc "dan" r8 r4 <b b'>8 r8 |
          <b b'>8_\textDecrescEnd "do" r8 r4 <b b'>8_\textCresc "cre" r8
          \bar "||"
          \time 4/4
          \tempo "Presto"
          \key c \major
          <b b'>4_\textCresc "scen" 4 4 4 |
          4 <b' b'>4 4 4_\textCresc "do" |
          4\ff
          \ottava #1
          \set Staff.ottavation = #"8"
          <b' b'>4 4 4 |
          4 4 4 <bes bes'>8 r8
          \bar "||"
          \time 3/4
          \tempo "Tempo 1"
          \key bes \major
          <b b'>
          \ottava #0
          r8 r4
          <<
            \relative c' {
              \once \override Slur.positions = #'(2.5 . 1.2)
              d8.^(\< f16) | f4\>^( d8)\!
            }
            \\
            \relative c' {
              s4 | b8\rest c8-[ f,]
            }
            \\
            \relative c'' {
              \once \override DynamicText.extra-offset = #'(-2.4 . 1.8)
              \once \override DynamicText.self-alignment-X = #LEFT
              s8._\p
            }
          >>
          r8
          <<
            \relative c'' {
              \once \override Slur.positions = #'(0 . 1.2)
              \stemDown d8.^(\< f16) | \stemUp
              \once \override Voice.Stem.length = #3.5
              f4\>^( d8)\!
            }
            \\
            \relative c'' {
              s4 | b8\rest c8-[ f,]
            }
          >>
          r8
          <<
            \relative c''' {
              \once \override Slur.positions = #'(0 . 1.2)
              \stemDown d8.^(\p f16) | \stemUp
              \once \override Voice.Stem.length = #3.5
              f4\pp^( d8)
            }
            \\
            \relative c''' {
              s4 | b,8\rest c'8-[ f,]
            }
          >>
          r8
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
        \clef bass \relative c' {
          \two-section-one
          \override Slur.height-limit = #3
          <bes d>8.^( <f c'>16) | <a c>4^( <bes d>8) r8
          <g bes>8.^( <d a'>16) | <fis a>4^( <g bes>8) r8
          <es g>8.^( <bes f'>16) | <d f>4^( <es g>8) r8
          <es g>8.^( <c f>16) | <c f^~>4_( <d f>8) r8
          <<
            {
               f4
            }
            \\
            {
              d8._( a16) | <a f'^~>4_( <aes f'>8)
            }
          >>
          r8
          \stemUp
          <aes f'>8._( <g es'>16) | <g es'>4_( <f des'>8) r8
          <e c'>8 r8 | <f f'>8 r8 r4 \clef treble
          <bes'' d>8._( <f c'>16) | <a c>4_( <bes d>8) r8
          <g bes>8._( <d bes'>16) | <fis a>4_( <g bes>8) r8
          <e g>8._( <bes f'>16) | <d f>4_( <es g>8) r8
          <e g>8._( <c f>16) | <c f^~>4_( <d f>8) r8
          \stemNeutral
          d'8._( <a c>16) | <a c>4_( <aes bes>8) r8
          <<
            {
              bes4
            }
            \\
            {
              g8._( ges16) | <ges bes>4_( <f c'>8)
            }
          >>
          r8
          \clef bass <c, c'>8 r8 <f f'>8 r8 r4
          <f_~ f'^~>4 |
          <f f'>2 <f,_~ f'^~>4 |
          <f f'>2 <f_~ f'^~>4 |
          <f f'>2 <f,_~ f'^~>4 |
          \stemDown
          <f f'>2 <fis_~ fis'^~>4 |
          <fis fis'>4 <g g'>2_( |
          <a a'>4 <bes bes'> <b b'> |
          <c c'>2) c4_( |
          g'2) r4 |
          \stemNeutral
          R2. |
          r4 r4
          <<
            {
              g'4^~ | g4.
            }
            \\
            {
              g,8._( b16 | b4 g8)
            }
          >>
          r8 \clef treble
          c''8.^( es16 | es4 c8) r8 \clef bass
          <g,,_~ g'^~>4 | <g g'>2
          <c,_~ c'^~>4 | <c c'>2
          \once \override Slur.positions = #'(0 . 3.5)
          \once \override Slur.eccentricity = #0.5
          <f,_~ f'^~>4_( | <f f'>4
          <f' f'>8) r8 <bes, bes'>8 r8 |
          <bes bes'>8 r8 r4 \clef treble
          <f'''_~ f'^~>4 | <f f'>2 \clef bass
          <f,_~ f'^~>4 | <f f'>2
          <f_~ f'^~>4 | <f f'>2
          <f,_~ f'^~>4 | <f f'>2
          <fis_~ fis'^~>4 | <fis fis'>4
          <<
            \relative c {
              \stemDown
              s2 |
              <a' c>4 <bes, g' bes>4 <b f'^~ a^~>4 |
              \stemUp
              <f' a>4 <e g>4 <es g^~>4 |
              \stemDown
              g2
            }
            \\
            \relative c, {
              \once \override Slur.height-limit = #5
              \once \override Slur.eccentricity = #1
              \once \override Slur.positions = #'(-2 . -1)
              <fis' c' es>4_( <g bes d>4 |
              s2 s4 |
              c,2 \parenthesize c4 |
              s4 b'4)
            }
            \\
            \relative c {
              \voiceOne
              s2 |
              s2 s4 | s4 s4 c'4^~ |
              c4
            }
          >>
          r4 |
          R2. |
          r4 r4
          <<
            \relative c'' {
              g4^~ | g4.
            }
            \\
            \relative c' {
              g8._( b16) | b4_( g8)
            }
          >>
          r8
          c''8.^( es16 | es4 c8) r8
          <g_~ g'^~>4 | <g g'>2
          <c,_~ c'^~>4 | <c c'>2
          <f,_~ f'^~>4 | <f f'>2
          <bes, bes'>8 r8 | <bes bes'>8 r8 r4
          \bar "||"
          \key bes \minor
          <bes bes'>8 r8 | <bes bes'>8 r8 r4
          \tuplet 3/2 \relative c, { bes8\sustainOn f' des' }
          \repeat unfold 3 \tuplet 3/2 \relative c, { bes8 f' des' }
          \implicitTuplets
          \repeat unfold 10 \tuplet 3/2 \relative c, { bes8 f' des' }
          \tuplet 3/2 \relative c, { bes8 f' des'\sustainOff }
          \tuplet 3/2 \relative c, { aes8 f' des' }
          \tuplet 3/2 \relative c, { aes8\sustainOn f' des' }
          \tuplet 3/2 \relative c, { aes8 f' des' }
          \tuplet 3/2 \relative c, { des8 f des' }
          \tuplet 3/2 \relative c, { des8 f des' }
          \tuplet 3/2 \relative c, { des8 f des' }
          <des_~ des'^~>4 | <des des'> <f f'>_(
          <des_~ des'^~>4 | <des des'> <bes bes'> <f f'>
          <bes bes'>2 <des des'>4 |
          <f f'>2 <des des'>4 |
          <bes bes'>2 <f f'>4 |
          <bes bes'>2 <des des'>4 |
          <f f'>2 <aes aes'>4 |
          <des, des'>4) r4 <des des'>8 r8 | <des des'> r8
          \explicitTuplets
          \tuplet 3/2 \relative c, { des8 f des' }
          \tuplet 3/2 \relative c, { des8 f des' }
          \implicitTuplets
          \tuplet 3/2 \relative c, { des8 f des' }
          \repeat unfold 6 \tuplet 3/2 \relative c, { des8 f des' }
          \tuplet 3/2 \relative c, { des8\< f des' }
          \tuplet 3/2 \relative c, { aes8 f' des'\sustainOff }
          \repeat unfold 3 \tuplet 3/2 \relative c, { aes8 f' des' }
          \tuplet 3/2 \relative c, { aes8\sustainOn f' des' }
          \tuplet 3/2 \relative c, { aes8 f' des' }
          \tuplet 3/2 \relative c, { aes8 f' des' }
          \tuplet 3/2 \relative c, { aes8\!\> f' des' }
          \tuplet 3/2 \relative c, { aes8 f' des' }
          \tuplet 3/2 \relative c, { aes8 f' des'\! }
          \repeat unfold 3 \tuplet 3/2 \relative c, { f,8 f' des' }
          \tuplet 3/2 \relative c, { bes8 f' des' }
          bes4 <f'_~ f'^~>4 | <f f'>
          <aes aes'>4_( <f_~ f'^~>) | <f f'>
          \once \override Slur.positions = #'(2 . -3.2)
          \once \override Slur.eccentricity = #0.7
          \once \override Slur.height-limit = #4.5
          <des des'>_( <aes aes'> |
          <des des'>2 <f f'>4 |
          <aes aes'>2 <f f'>4 |
          <des des'>2 <bes bes'>4 |
          <f f'>2 <bes bes'>4 |
          <des des'>2 <f f'>4 |
          <bes bes'>4) r4 r4 |
          \tuplet 3/2 \relative c' { des8-1 bes-3 f }
          \tuplet 3/2 \relative c' { des8-2 bes-3 f }
          \tuplet 3/2 \relative c' { f8 des f,\sustainOff }
          \bar "||"
          \time 2/4
          \tempo "Presto"
          bes'8 r des r |
          c r f, r |
          f' r es r |
          des r c r |
          bes r des r |
          c r aes r |
          c r g r |
          f2 |
          <f, f'>8 r <bes bes'> r |
          <g g'> r <c, c'> r |
          <c' c'> r <bes bes'> r |
          <aes aes'> r <g g'> r |
          <f f'> r <aes aes'> r |
          <g g'> r <c c'> r |
          <a a'> r <f f'> r |
          <bes bes'> r <c c'> r |
          des8-[ des' bes, bes'] |
          f,-[ f' es, es'] |
          des,-[ des' c, c'] |
          bes,-[ bes' a, a'] |
          bes,-[ bes' bes, bes'] |
          a,-[ a' es es'] |
          des,-[ des' bes, bes'] |
          <f f'>2 \clef treble |
          des''8-[ des' bes, bes'] |
          r4 f'4\sf \clef bass
          \bar "||"
          \key bes \major
          r4 f,\sf |
          r4 f,\sf |
          \stemDown r4 f,\sf \stemNeutral |
          <<
            \relative c {
              <a,^~ c^~>2^\sf |
              <a^~ c^~>2 |
              <a c>4^\fermata
            }
            \\
            \relative c,, {
              r4 f_~\sf |
              f2_~ |
              \pageBreak
              f4_\fermata
            }
          >>
          \set Timing.measureLength = #(ly:make-moment 20/4)
          \explicitTuplets
          \relative c,, {
            \stemDown
            % Workaround for \teeny - works with \magnifyStaff
            \override NoteHead.font-size = #-3
            \override Rest.font-size = #-3
            %
            % Overrides for the beam positions are calculated as follows:
            %
            % - If the stems go down,
            %   - The first note of the four note beam is the anchor, and its
            %     stem is size 2.5.
            %   - The last note of the four note beam is 1.0 higher than the
            %     first note of the four note beam.
            %   - The three note beam uses the same values, minus (0.8 . 1.2).
            %   - If not anchored to a staff line, the three note beam is
            %     another minus (0.0 . 0.1). This is because normally the beams
            %     are snapped to the staff lines slightly.
            %
            % - If the stems go up,
            %   - The first note of the four note beam is 2.5 long.
            %   - The last note of the four note beam is 3.0 long.
            %   - Both the first and last notes of the three note beam are 2.5 long.
            %
            % This is more or less arbitrary but it makes them have pretty much
            % the same angle in comparison to the angle of the notes.
            %
            \once \override Beam.positions = #'(-7.8 . -7.3)
            \tuplet 3/2 { f8 g a }
            \once \override Beam.positions = #'(-7.0 . -6.0)
            bes-[ c d e]
            \stemUp
            \implicitTuplets
            \once \override Beam.positions = #'(0.0 . 1.0) % start: -2.5 . -1.5
            \tuplet 3/2 { f8 g a }
            \once \override Beam.positions = #'(1.5 . 3.5) % start: -1.0 . 0.5
            bes-[ c d e]
            \stemDown
            \once \override Beam.positions = #'(-0.8 . -0.2) % start: 1.0 . 2.0
            \tuplet 3/2 { f8 g a }
            % Beam positions are calculated using this as the base.
            \once \override Beam.positions = #'(0.0 . 1.0)
            bes-[ c d e]
            \once \override Dots.dot-count = #0
            \relative c d2.\rest
            s2.
            \clef treble
            \once \override Beam.positions = #'(-3.3 . -2.8) % minus 0.0 . 0.1
            \tuplet 3/2 { f8 g a }
            \once \override Beam.positions = #'(-2.5 . -1.5)
            bes-[ c d e]
            % Workaround for \normalsize - works with \magnifyStaff
            \override NoteHead.font-size = #0
            \override Rest.font-size = #0
            f8
          }
          r8^\fermata \clef bass
          \stemNeutral
          \bar "||"
          \time 3/4
          f'16
          \set Timing.measureLength = #(ly:make-moment 1/4)
          es'! f, es' |
          f,
          \set Timing.measureLength = #(ly:make-moment 3/4)
          es' f, es' f, es' f, es' r4 |
          r4 r4
          \override Slur.height-limit = #3
          <bes d>8.^( <f c'>16) | <a c>4^( <bes d>8) r8
          <g bes>8.^( <d a'>16) | <fis a>4^( <g bes>8) r8
          <es g>8.^( <bes f'>16) | <d f>4^( <es g>8) r8
          <es g>8.^( <c f>16) | <c f_~>4^( <d f>8) r8
          <<
            {
               f4
            }
            \\
            {
              d8._( a16) | <a f'^~>4_( <aes f'>8)
            }
          >>
          r8
          \stemUp
          <aes f'>8._( <g es'>16) | <g es'>4_( <f des'>8) r8
          <e c'>8 r8 | <f f'>8 r8 r4

          \clef treble
          <bes'' d>8._( <f c'>16) | \stemDown <bes d>4_( <c es>8) r8
          \stemNeutral
          <g bes>8._( <d a'>16) | <fis a>4_( <g bes>8) r8
          <es g>8._( <bes f'!>16) | <d f>4_( <es g>8) r8
          <es g>8._( <c f>16) | <c f>4_( <d g>8) r8
          d'8.^( <a c>16) | \stemUp <a c>4^( <aes bes>8) r8
          <g bes>8._( <ges bes>16) | <ges bes>4_( <f c'>8) r8
          \clef bass
          \stemNeutral
          <c, c'>8 r8 | <f f'>8 r8 r4
          <f_~ f'^~>4 | <f f'>8 f^( f') r8
          <f,,_~ f'^~>4 | <f f'>8 f_( f') r8
          <f,_~ f'^~>4 | <f f'>8 f_( f') r8
          <f,,_~ f'^~>4 | <f f'>8 f_( f') r8
          <fis,_~ fis'^~>4 | <fis fis'>4 <g_~ g'^~>2_( |
          <g g'>4 <a a'> <bes bes'> | <b b'> <c c'> c | g'2) r4 |
          R2. |
          r4 r4
          <<
            \relative c' {
              g4^~ | g4.
            }
            \\
            \relative c {
              g8._( b16) | b4_( g8)
            }
          >>
          r8 \clef treble
          c''8.^( es16) | es4^( c8)
          r8
          \clef bass
          <g,,_~ g'^~>4 | <g g'>8 g_( g') r8
          <c,,_~ c'^~>4 | <c c'>8 c_( c') r8
          <f,,_~ f'^~>4 | <f f'>8 f'_( f') r8
          <bes,, bes'>8 r8 | <bes bes'>8 r8 r4
          \clef treble
          <f'''_~ f'^~>4 | <f f'>8 f^( f') r8 \clef bass
          <f,,_~ f'^~>4 | <f f'>8 f^( f') r8
          <f,_~ f'^~>4 | <f f'>8 f^( f') r8
          <f,,_~ f'^~>4 | <f f'>8 f_( f') r8
          <<
            \relative c {
              s4 |
              s2. |
              s2. |
              \stemDown c2 c4 |
              g'2
            }
            \\
            \relative c {
              <fis_~ c'^~ es^~>4 |
              <fis c' es>4 4 <g bes d> |
              <a c>8-[ a,] <bes g' bes>4 <b f'^~ a^~> |
              \stemUp <f' a>4 <e g> <es g c^~> |
              c'4 b4
            }
          >>
          r4 |
          R2. |
          r4 r4
          <<
            \relative c {
              g4^~ | g4
            }
            \\
            \relative c, {
              g8._( b16) | b4_( g8)
            }
          >>
          r8
          \clef treble
          c''8.^( es16) | es4^( c8) r8
          \clef bass
          <g,_~ g'^~>4 | <g g'>8 g^( g') r8
          <c,,_~ c'^~>4 | <c c'>8 c^( c') r8
          <f,,_~ f'^~>4 | <f f'>8 f_( f') r8
          <bes,, bes'>8 r8 | <bes bes'>8 r8 r4
          <b b'>8 r8 | <b b'>8 r8 r4
          <bes bes'>8 r8 | <bes bes'>8 r8 r4
          <b b'>8 r8 | <b b'>8 r8 r4
          <cis cis'>8 r8 | <cis cis'>8 r8 r4
          r4 | r4 r4
          <b b'>8 r8 | <b b'>8 r8 r4
          <b b'>8 r8 | <b b'>8 r8 r4
          <b b'>8 r8 |
          \key c \major
          \repeat unfold 15 { <b b'>4 }
          <bes bes'>8 r8
          \bar "||"
          \key bes \major
          <bes bes'>8 r8 r4
          bes''8.^( f16) | a4^( bes8) r8
          \clef treble
          bes'8.^( f16) | a4^( bes8) r8
          bes'8.^( f16) | a4^( bes8) r8
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

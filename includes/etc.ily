% Force "mid" file extension for compatibility.
#(ly:set-option 'midi-extension "mid")

% Sets the distance between two staff lines.
setStaffDistance =
#(define-music-function (parser location dist) (number?)
  #{\overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
    #'((alignment-distances . (dist)))
  #})

% Sets the shortest note duration in a bar. The larger the number,
% the more spaced out the notes will be. Thanks to anabain from IRC.
shortestNoteDuration =
#(define-music-function (parser location space) (number?)
  #{\newSpacingSection
    \override Score.SpacingSpanner
    #'common-shortest-duration = #(ly:make-moment 1 space)
  #})

% Sets the shortest note duration back to the staff default.
resetNoteDuration =
#(define-music-function (parser location) ()
  #{\newSpacingSection
    \revert Score.SpacingSpanner #'common-shortest-duration
  #})

% Turn off tuplet brackets.
hideTupletBracket = \override TupletBracket.stencil = ##f

% Turn on tuplet brackets.
showTupletBracket = \override TupletBracket.stencil = #ly:tuplet-bracket::print

% Shorthand for turning off tuplet numbers. This turns off
% the numbers for all subsequent tuplets, until \explicitTuplets.
implicitTuplets = \override TupletNumber.stencil = ##f

% Turns tuplet numbers back on.
explicitTuplets = \revert TupletNumber.stencil

% Ensures trill spanners appear at the bottom of the staff.
trillSpanDown = \override TrillSpanner.direction = #-1

% Ensures trill spanners appear at the top of the staff.
trillSpanUp = \override TrillSpanner.direction = #1

% Override trill spanners to have a sharp sign. Undo with \regularTrill.
% Using \once does not work for trill spanners that cross over to
% the next line, hence the need to use a separate \regularTrill command.
sharpTrill = \override TrillSpanner.bound-details.left.text = \markup {
  \halign #4.75 \raise #0.97 \teeny \sharp \musicglyph #"scripts.trill"
}

% Override trill spanners to have a flat sign. Undo with \regularTrill.
% Using \once does not work for trill spanners that cross over to
% the next line, hence the need to use a separate \regularTrill command.
flatTrill = \override TrillSpanner.bound-details.left.text = \markup {
  \halign #5.30 \raise #0.65 \teeny \flat \musicglyph #"scripts.trill"
}

% Revert the trill spanners back to having a standard trill symbol.
regularTrill = \override TrillSpanner.bound-details.left.text = \markup {
  \musicglyph #"scripts.trill"
}

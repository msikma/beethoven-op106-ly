%===========================================================================
%    Piano Sonata Op.106 (L.Beethoven)
%===========================================================================
%
%--- Notes -----------------------------------------------------------------
%
%  * Currently, some macros (e.g. \semprePp) use
%    \tweak DynamicText.X-extent #'(0 . 0) to prevent them from blocking
%    note placement. However, this also means they'll slide right off the
%    edge of the page if they happen to be be placed too far to the right.
%    It would be nice to fix this in a way that doesn't alter the output.
%
%  * The \tied-finger-up macro was created by tisimst on the Lilypond list.
%    <https://lists.gnu.org/archive/html/bug-lilypond/2015-04/msg00078.html>
%    It's a flipped version of \tied-lyric for fingering.
%
%  * MIDI output is only for testing and is not particularly accurate.
%
%---------------------------------------------------------------------------
%
%--- Author ----------------------------------------------------------------
%
%    (C) 2016-2017, Michiel Sikma <michiel@sikma.org>
%    Licensed under CC BY-SA 4.0.
%
%---------------------------------------------------------------------------

\version "2.19.42"
\include "sonata-op106-i.ly"
\include "sonata-op106-ii.ly"
\include "sonata-op106-iii.ly"
\include "sonata-op106-iv.ly"

\version "2.18.2"

\header {
  title = "By This River"
  composer = "Brian Eno"
}

global = {
  \key g \minor
  \time 4/4
  \language "english"
}

right = \relative c'' {
  \global
 bf' a f d f bf, c d r4 <bf f> r8 <c g>4 r8 <d a>2.r4
 bf' a f d f bf, c d r4 <bf f> r8 <c g>4 r8 <d a>2.r4 | \break
 bf' a f d f bf, c d r4 <bf f> r8 <c g>4 r8 <d a>2.r4
 bf' a f d f bf, c d r4 <bf f> r8 <c g>4 r8 <d a>2.r4
 \set Score.repeatCommands = #'(end-repeat)
  
}

left = \relative c {
  \global
  bf1 bf' bf, bf'2. r4
  g,1 g' g, g'2. r4
  ef,1 ef' ef, ef'2. r4
  g,1 g' g, g'2. r4
  
}

\score {
  \new PianoStaff \with {
%    instrumentName = "Piano"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \right
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \left }
  >>
  \layout { 
  indent = 0\cm }
  \midi {
    \tempo 4=100
  }
}

\markup {
  \column {
    \italic
    \line{intro}
    \vspace #1
\line {Here we are}
\line {Stuck by this river}
\line {You and I}
\line {Underneath a sky that's ever falling down, down, down}
\line {Ever falling down}
\vspace #1
\line {Through the day}
\line {As if on an ocean}
\line {Waiting here}
\line {Always failing to remember why we came, came, came}
\line {I wonder why we came}
\vspace #1
\italic
    \line{instrumental}
    \vspace #1
\line {You talk to me}
\line {As if from a distance}
\line {And I reply}
\line {With impressions chosen from another time, time, time}
\line {From another time}
\vspace #1
  }
}



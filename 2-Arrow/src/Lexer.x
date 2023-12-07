{
module Lexer where

import Model
}

%wrapper "basic"

$letter = [a-zA-Z]
$digit = [0-9]

tokens :-
  \. {const Point}
  \, {const Colon}
  \; {const Semicolon}
  $white+ ;
  "->"+ {const Arrow}
  "go"+ {const Go}
  "take"+ {const Take}
  "mark"+ {const Mark}
  "nothing"+ {const Nothin}
  "turn"+ {const Turn}
  "case"+ {const Case}
  "of"+ {const Of}
  "end"+ {const End}
  "left"+ {const Lefty}
  "right"+ {const Righty}
  "front"+ {const Fronty}
  "Empty"+ {const Empt}
  "Lambda"+ {const Lambdac}
  "Debris"+ {const Debrisc}
  "Asteroid"+ {const Asteroidc}
  "Boundary"+ {const Boundaries}
  ($letter|$digit|"+"|"-")+ {\s -> Id s}
  _ { const Token }


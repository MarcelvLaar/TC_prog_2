{
module Lexer where

import Model
}

%wrapper "basic"

$letter = [a-zA-Z]
$digit = [0-9]

tokens :-
  "--".*                        ;
  $white+                       ;
  \.                            {const Tpoint}
  \,                            {const Tcolon}
  \;                            {const Tsemicolon}
  "->"                          {const Tarrow}
  "go"                          {const Tgo}
  "take"                        {const Ttake}
  "mark"                        {const Tmark}
  "nothing"                     {const Tnothin}
  "turn"                        {const Tturn}
  "case"                        {const Tcase}
  "of"                          {const Tof}
  "end"                         {const Tend}
  "left"                        {const Tlefty}
  "right"                       {const Trighty}
  "front"                       {const Tfronty}
  "Empty"                       {const Tempt}
  "Lambda"                      {const Tlambdac}
  "Debris"                      {const Tdebrisc}
  "Asteroid"                    {const Tasteroidc}
  "Boundary"                    {const Tboundaries}
  ($letter|$digit|"+"|"-")+     {\s -> Tid s}
  _                             { const Token }

{
module Lexer where

import Model
}

%wrapper "basic"


tokens :-
  _ { const Token }
  "go"+ {const Go}

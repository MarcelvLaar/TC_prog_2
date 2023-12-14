{-# LANGUAGE GADTs #-}
module Model where

-- Exercise 1
data Token =
        Token
        | Tarrow
        | Tpoint
        | Tcolon
        | Tgo
        | Ttake
        | Tmark
        | Tnothin
        | Tturn
        | Tcase
        | Tof
        | Tend
        | Tlefty
        | Trighty
        | Tfronty
        | Tsemicolon
        | Tempt
        | Tlambdac
        | Tdebrisc
        | Tasteroidc
        | Tboundaries
        | Tid String
        deriving Show


-- Exercise 2
data Program = Program [Rule]
  deriving Show

data Rule = Rule {
  name :: String,
  cmds :: [ Command ]}
        deriving Show

data Command = Cgo | Ctake | Cmark | Cnothing deriving Show

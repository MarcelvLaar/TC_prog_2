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
data Program = Program [Rule] deriving Show

data Rule = Rule Id [Cmd] deriving Show

data Cmd = 
        GoCmd
        | TakeCmd
        | MarkCmd
        | NothingCmd
        | TurnCmd Dir
        | CaseCmd Dir [Alt]
        | IdCmd Id
                deriving Show


data Dir = Left | Right | Front
        deriving Show

data Alt = Alt Pat [Cmd]
        deriving Show

data Pat =
        EmptyPat
        | LambdaPat
        | DebrisPat
        | AsteroidPat
        | BoundaryPat
        | WhateverPat
                deriving Show

type Id = String

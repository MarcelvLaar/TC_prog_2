module Model where

-- Exercise 1
data Token =
        Token
        | Arrow
        | Point
        | Colon
        | Go
        | Take
        | Mark
        | Nothin
        | Turn
        | Case
        | Of
        | End
        | Lefty
        | Righty
        | Fronty
        | Semicolon
        | Empt
        | Lambdac
        | Debrisc
        | Asteroidc
        | Boundaries
        | Id String
        deriving Show


-- Exercise 2
data Program =
        Program
        deriving Show

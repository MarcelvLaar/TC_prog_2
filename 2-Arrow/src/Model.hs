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
data Program = Program deriving Show

--  $dot = [\.]
--  $comma= [\,]
--  $digit      = [0-9] */
--  $octdig     = [0-7]
--  $hexdig     = [0-9A-Fa-f]
--  $special    = [\.\;\,\$\|\*\+\?\#\~\-\{\}\(\)\[\]\^\/]
--  $graphic    = $printable # $white
-- /* @string     = \" ($graphic # \")* \"
--  @id         = [A-Za-z][A-Za-z'_]*
--  @smac       = '$' id
--  @rmac       = '@' id
--  @char       = ($graphic # $special) | @escape
--  @escape     = '\\' ($printable | 'x' $hexdig+ | 'o' $octdig+ | $digit+)

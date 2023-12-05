# Arrow
A framework for the Arrow assignment of the course Talen & Compilers at the University of Utrecht.

## Alex and Happy
If you use an up-to-date Cabal, you should be able to simply code in the .x and .y files.
Running `cabal build` or `cabal run` will compile the alex and happy code into Haskell
files, and compile your project with those, without ever showing them to you.
`cabal repl` gives you a GHCI session, but `:r` might not always recompile the Lexer and Parser:
To be safe, simply `:q` and re-enter it.

You can also manually call the alex and happy executables and then run ghc(i) 
on the resulting Haskell files, but then you have to remember to do so on each change, 
or you'll run the old version again: Not the recommended workflow!

If you're ever in doubt, delete any `Lexer.hs` and `Parser.hs` files.

## Testing
To test your lexer and parser, you can simply run `cabal run`, which executes `main` in `Main.hs`.
Try your parser and lexer on different inputs, the `examples` directory contains a few `.arrow` programs with corresponding `.space` layouts.

## File structure
The exercises are spread out over various (source) files. Please adhere to this distribution for the sake of your grader.
 - [open-questions.md](open-questions.md): Exercises 4 and 10
 - [src/Model.hs](src/Model.hs): Exercises 1 and 2
 - [src/Lexer.x](src/Lexer.x): Exercise 1
 - [src/Parser.y](src/Parser.y): Exercise 3
 - [src/Algebra.hs](src/Algebra.hs): Exercises 5 and 6
 - [src/Interpreter.hs](src/Interpreter.hs): Exercises 7, 8 and 9
 - [src/Main.hs](src/Main.hs): Exercise 11 and testing

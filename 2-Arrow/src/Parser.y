{
module Parser where

import Model
}

%name parser
%tokentype { Token }

%token
  "->"        { Tarrow }
'.'           { Tpoint }
':'           { Tcolon }
';'           { Tsemicolon }
'_'           { Tempt }
go            { Tgo }
take          { Ttake }
mark          { Tmark }
nothing       { Tnothin }
turn          { Tturn }
case          { Tcase }
of            { Tof }
end           { Tend }
left          { Tlefty }
right         { Trighty }
front         { Tfronty }
lambda        { Tlambdac }
debris        { Tdebrisc }
asteroid      { Tasteroidc }
boundary      { Tboundaries }

%%

Program :: { Program [Rule] }
      : { - empty - } {[]}
      | Rule { [$1] }
      | Rule Program { $1 : $2 }


Rule : string command

{

happyError _ = error "parse error"

}

module Syntax where

type Name = String

data Expr
  = Float Double
  | Var String
  | Call Name [Expr]
  | Function Name [Name] Expr
  | Extern Name [Name]
  | BinaryOp Name Expr Expr
  | UnaryOp Name Expr
  | BinaryDef Name [Name] Expr
  | UnaryDef Name [Name] Expr
  | If Expr Expr Expr
  | For Name Expr Expr Expr Expr
  | Let Name Expr Expr
  deriving (Eq, Ord, Show)

-- def plus (a b) a + b;

-- Function "plus" ["a", "b"] 
{-# OPTIONS_GHC -Wno-missing-methods #-}
{-# OPTIONS_GHC -Wno-name-shadowing #-}
{-# OPTIONS_GHC -Wno-unused-local-binds #-}
{-# OPTIONS_GHC -Wno-unused-matches #-}
{-# OPTIONS_GHC -Woverlapping-patterns #-}
{-# OPTIONS_GHC -Woverlapping-patterns #-}

module Acme.LanguageExtensions where

bangPatterns :: Bool
bangPatterns = let f _ = False
               in let f !y = y
                  in f True

{-
#define False True
-}
cpp :: Bool
cpp = False
{-
#undef False
-}

negativeLiterals :: Bool
negativeLiterals = (-1 :: NegativeLiterals) == 0
newtype NegativeLiterals = NegativeLiterals Int deriving (Eq, Ord)
instance Num NegativeLiterals where
    negate _ = NegativeLiterals 0
    fromInteger _ = NegativeLiterals 1

magicHash :: Bool
magicHash = foo# ()
  where
    _ # _ = False
    foo# _ = True
    foo = ()

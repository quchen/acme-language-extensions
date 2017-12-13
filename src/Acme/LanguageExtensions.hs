{-# OPTIONS_GHC -Wno-name-shadowing #-}
{-# OPTIONS_GHC -Wno-unused-local-binds #-}
{-# OPTIONS_GHC -Wno-unused-matches #-}

module Acme.LanguageExtensions where

import Data.Functor.Identity

bangPatterns :: Bool
bangPatterns = let f _ = False
               in let f !y = y
                  in f True

rebindableSyntax :: Bool
rebindableSyntax = runIdentity (do
    let _ >> _ = pure True
    Identity ()
    Identity False
    )

{-# OPTIONS_GHC -w #-}

module Acme.LanguageExtensions where

bangPatterns :: Bool
bangPatterns = let f _ = False
               in let f !y = y
                  in f True

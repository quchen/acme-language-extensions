{-# OPTIONS_GHC -Wno-name-shadowing #-}
{-# OPTIONS_GHC -Wno-unused-local-binds #-}
{-# OPTIONS_GHC -Wno-unused-matches #-}

module Acme.LanguageExtensions where

-- | Are BangPatterns enabled?
--
-- >>> :set -XNoBangPatterns
-- >>> let f _ = False in let f !y = y in f True
-- False
--
-- >>> :set -XBangPatterns
-- >>> let f _ = False in let f !y = y in f True
-- True
bangPatterns :: Bool
bangPatterns = let f _ = False
               in let f !y = y
                  in f True

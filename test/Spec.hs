{-# OPTIONS_GHC -F -pgmF hspec-discover #-}

-- this is the entry point. hspec-discover is a pre processonr that searches for all specs
-- in this directory or lower

-- specs must export a (spec :: Spec)
-- spec files must end in Spec.hs
-- spec files export a module withe the same name as them

-- have a look in the .cabal file "build-tool-depends"
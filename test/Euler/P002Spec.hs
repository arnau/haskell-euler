module Euler.P002Spec (main, spec) where

import Test.Hspec

import Euler.P002

main :: IO ()
main = hspec spec

spec :: Spec
spec = parallel $ do
  describe "sumEvenFib" $ do
    it "under 89" $ do
      sumEvenFib 89 `shouldBe` 44
    it "under 4000000" $ do
      sumEvenFib 4000000 `shouldBe` 4613732

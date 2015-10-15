module Euler.P003Spec (main, spec) where

import Test.Hspec

import Euler.P003

main :: IO ()
main = hspec spec

spec :: Spec
spec = parallel $ do
  describe "factor" $ do
    it "decompose 13195 in factors" $ do
      factor 13195 `shouldBe` [5, 7, 13, 29]
  describe "largestPrimeFactor" $ do
    it "of 13195" $ do
      largestPrimeFactor 13195 `shouldBe` 29
    it "of 600851475143" $ do
      largestPrimeFactor 600851475143 `shouldBe` 6857

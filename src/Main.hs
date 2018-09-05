{-# LANGUAGE OverloadedLists #-}

module Main where

import           Numeric.GSL.ODE

main :: IO ()
main = do
  print $ odeSolve (\_ ys -> ys) [1] [1, 2, 3, 3, 5]
  putStrLn "Hello world!"

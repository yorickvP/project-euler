module Main (main) where

import Control.Applicative ((<$>))

type TriangleRow = [Int]
type Triangle = [TriangleRow]

calcMax :: TriangleRow -> TriangleRow -> TriangleRow
calcMax [] _ = []
calcMax _ [] = []
calcMax _ [_] = []
calcMax (a:ax) (b:c:cx) =
    (a + max b c) : calcMax ax (c:cx)

calcTriangleMax :: Triangle -> Int
calcTriangleMax tri = step $ reverse tri
    where
        step :: [[Int]] -> Int
        step [] = 0
        step [a] = foldl max 0 a
        step (a:b:x) = step $ calcMax b a : x
readTriangleRow :: String -> [Int]
readTriangleRow = fmap read . words
main :: IO ()
main = do
    ln <- lines <$> readFile "p018_triangle.txt"
    let tri = fmap readTriangleRow ln
    print $ calcTriangleMax tri

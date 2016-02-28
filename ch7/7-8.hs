
myAbs x
    | x < 0 = (-x)
    | otherwise = x


isRight a b c
    | a^2 + b^2 == c^2 = "Right!"
    | otherwise        = "Not right!"

f x = 
    case x `mod` 2 of
        0 -> "Even!"
        _ -> "Odd!"

greetIfCool :: String -> IO()
greetIfCool coolness = 
    case cool of 
        True -> putStrLn "what's up!"
        _    -> putStrLn "Psh."
    where cool = coolness == "yo" 

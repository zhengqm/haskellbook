

type Name = String
type Age = Integer
type ValidatePerson a = Either [PersonInvalid] a 

data Person = Person Name Age deriving Show

data PersonInvalid =  NameEmpty
                    | AgeTooLow
                    deriving (Eq, Show)



ageOkay age
    | age >= 0 = Right age
    | otherwise = Left AgeTooLow

nameOkay name
    | name /= "" = Right name
    | otherwise = Left NameEmpty

mkPerson :: Name -> Age -> ValidatePerson Person
mkPerson name age = 
    mkPerson' (nameOkay name) (ageOkay age)
    where 
        mkPerson' (Right name) (Right age) = Right $ Person name age
        mkPerson' (Left badName) (Right age) = Left $ [badName]
        mkPerson' (Right name) (Left badAge) = Left $ [badAge]
        mkPerson' (Left badName) (Left badAge) = Left $ [badName, badAge]

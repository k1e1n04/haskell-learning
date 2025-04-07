-- レコード構文
data Person = Person {
  firstName :: String,
  lastName :: String,
  age :: Int,
  height :: Float,
  phoneNumber :: String,
  flavor :: String
} deriving (Show, Eq, Read)

mysteryDude = "Person {firstName = \"Bob\", lastName = \"Dylan\", age = 73, height = 1.75, phoneNumber = \"555-1234\", flavor = \"chocolate\"}"
readPerson = read mysteryDude :: Person

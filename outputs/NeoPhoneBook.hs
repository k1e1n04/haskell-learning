type PhoneNumber = String
type Name = String
type PhoneBook = [(PhoneNumber, Name)]

isPhoneBook :: Name -> PhoneNumber -> PhoneBook -> Bool
isPhoneBook name number phoneBook = (name, number) `elem` phoneBook

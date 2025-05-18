import qualified Data.Map as Map

data LockerState = Taken | Free deriving (Show, Eq)

type Code = String

type LockerMap = Map.Map Int (LockerState, Code)

lockerLookup :: Int -> LockerMap -> Either String Code
lockerLookup lockerNumber map = case Map.lookup lockerNumber map of
    Just (state, code) -> if state == Free then Right code else Left $ "Locker " ++ show lockerNumber ++ " is already taken"
    Nothing -> Left $ "Locker " ++ show lockerNumber ++ " doesn't exist"
  
lockers :: LockerMap
lockers = Map.fromList [(100, (Taken, "A1B2C3")), (101, (Free, "D4E5F6")), (102, (Taken, "G7H8I9")), (103, (Free, "J0K1L2"))]

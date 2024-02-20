import Cocoa

var pastaTypesSet = Set<String>()
pastaTypesSet.insert("Tagliatelle")
pastaTypesSet.insert("Fettuccine")
pastaTypesSet.insert("Spaghetti")
pastaTypesSet.insert("Linguine")

pastaTypesSet.remove("Lambo")
pastaTypesSet.insert("Linguine")
print(pastaTypesSet)

print("-----------------")

for pasta in pastaTypesSet{
    print(pasta)
}

let reservationsInPerson: Set = ["000-345-3441", "000-325-3443"]
let reservationsOverPhone: Set = ["000-345-3443", "000-345-5223"]
let reservationsOverInternet: Set = ["000-345-6223", "000-345-7223"]

let inPersonAndOverPhone = reservationsInPerson.union(reservationsOverPhone)
print(inPersonAndOverPhone)

var allPhoneNumbers = inPersonAndOverPhone.union(reservationsOverInternet)

print(allPhoneNumbers)

var confirmationCodes: Set = ["LL3450", "LL3451", "LL3452", "LL3453", "LL3454"]
print("\(allPhoneNumbers.count) \(confirmationCodes.count)")
confirmationCodes.insert("LL3455")
print(confirmationCodes)
confirmationCodes.remove("LL3451")
allPhoneNumbers.remove("000-345-3443")
print("\(allPhoneNumbers.count) \(confirmationCodes.count)")

var listOfNumbers = Set<Int>()

listOfNumbers.insert(1)
listOfNumbers.insert(5)
listOfNumbers.insert(8)
listOfNumbers.insert(3)
listOfNumbers.insert(1)

print(listOfNumbers.count)

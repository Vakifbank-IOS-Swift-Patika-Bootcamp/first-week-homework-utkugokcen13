import Foundation


// MARK: - Palindrome
func isPalindrome(word: String) -> Bool {
    let word = word.lowercased()
    return word == String(word.reversed())
}

print(isPalindrome(word: "111222"))

// MARK: - Element Count
func elementCount(array: [AnyHashable]){
    let mappedItems = array.map {($0, 1)}
    let counts = Dictionary(mappedItems, uniquingKeysWith: +)
    print(counts)
}

elementCount(array: ["a", 1,3,3,3,2,true, "a", "c"])

// MARK: - Piramit düz
func pyramid(n: Int) -> Void {
    for i in 1...n{
        var row = ""
        for j in 1...i{
            row += "*"
        }
        print(row)
    }
}

pyramid(n: 6)

// MARK: - Piramit ortalı
func pyramidMiddled(n: Int) -> Void {
    let rows = 5
    var i = 0
    while i < rows {
        let spaces = String(repeating: " ", count: rows - i - 1)
        let stars = String(repeating: "*", count: 2 * i + 1)
        print(spaces + stars)
        i += 1
    }
}

pyramidMiddled(n: 6)

// MARK: - Multiplies of 3 or 5
func problem1() -> Int {
    var sum = 0
    for i in 0..<999{
        if (i % 3 == 0 || i % 5 == 0){
            sum += i
        }
    }
    return sum
}

print("Project Euler Problem 1 Result:", problem1())

// MARK: - Even fibonacci numbers
func fibonacciSequence() -> Int64{
    var fibonacciArray = [Int64]()
    var evenSum : Int64 = 0
    
    fibonacciArray.append(0)
    fibonacciArray.append(1)
    
    for n in 2...9999999 {
        if((fibonacciArray[n-1] + fibonacciArray[n-2]) > 4000000){
            break
        }else{
            fibonacciArray.append (fibonacciArray[n-1] + fibonacciArray[n-2])
        }
    }
    
    for i in 0...fibonacciArray.count-1{
        if (fibonacciArray[i] % 2 == 0){
            evenSum += fibonacciArray[i]
        }
    }
    return evenSum
}

print("Project Euler Problem 2 Result:", fibonacciSequence())

// MARK: - Largest Prime Factor

func findLargestPrimeFactor (num : Int) -> Int {
    var numToFactor = num
    var primeFactor = 2

    while numToFactor > 1 {
        if (numToFactor % primeFactor == 0) {
            numToFactor /= primeFactor
        }else {
            primeFactor += 1
        }
    }
    return primeFactor
}


print("Project Euler Problem 3 Result:", findLargestPrimeFactor(num: 600851475143))








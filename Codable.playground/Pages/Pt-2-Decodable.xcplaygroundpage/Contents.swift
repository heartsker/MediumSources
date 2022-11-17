//: [Previous](@previous)

import Foundation
import Pt_1_Encodable_PageSources

let primes = NumberSeriesShort(name: "Primes", numbers: [2, 3, 5, 7, nil])
print("Initial data:")
print(primes)

let encodedData = try JSONEncoder().encode(primes)

let primesDecoded = try JSONDecoder().decode(NumberSeriesShort.self, from: encodedData)

print("Decoded data:")
print(primesDecoded)

//: [Next](@next)

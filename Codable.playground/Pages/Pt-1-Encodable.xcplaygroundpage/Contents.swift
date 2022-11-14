import Foundation

// MARK: Encode object

let primes = NumberSeriesShort(name: "Primes", numbers: [2, 3, 5, 7, nil])

print("Encoded data:")
let encodedData = try JSONEncoder().encode(primes)

if let encoding = String(data: encodedData, encoding: .utf8) {
    print(encoding)
}

// MARK: Pretty encoding

let jsonObject = try JSONSerialization.jsonObject(with: encodedData)

if JSONSerialization.isValidJSONObject(jsonObject) {
    let prettyJSON = try JSONSerialization.data(withJSONObject: jsonObject, options: [.prettyPrinted, .sortedKeys])

    if let prettyEncoding = String(data: prettyJSON, encoding: .utf8) {
        print("Pretty encoded data:")
        print(prettyEncoding)
    }
} else {
    print("Object is not JSON formatted")
}

final public class NumberSeriesFull: Encodable {
    public var name: String
    public var numbers: [Int?]

    public init(name: String, numbers: [Int?]) {
        self.name = name
        self.numbers = numbers
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(numbers, forKey: .numbers)
    }

    public enum CodingKeys: String, CodingKey {
        case name
        case numbers
    }
}

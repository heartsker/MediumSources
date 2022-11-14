public class NumberSeriesShort: Encodable {
    public var name: String
    public var numbers: [Int?]

    public init(name: String, numbers: [Int?]) {
        self.name = name
        self.numbers = numbers
    }

    private enum CodingKeys: String, CodingKey {
        case name
        case numbers
    }
}

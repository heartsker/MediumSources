import Foundation
import Pt_1_Encodable_PageSources

extension NumberSeriesShort: Decodable {
    public convenience init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let name = try container.decode(String.self, forKey: .name)
        let numbers = try container.decode([Int?].self, forKey: .numbers)
        self.init(name: name, numbers: numbers)
    }
}

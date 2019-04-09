import Foundation

// The Number of case in enum and its method tends to swell.
// Use struct and static constant instead.

// BEFORE

public enum SushiEnum: String {
    case マグロ
    case サバ
    case サケ

    // NOTE: Defined as func because lizard doesn't calcurate CCN in computed property.
    public func enName() -> String {
        switch self {
        case .マグロ:
            return "tuna"
        case .サバ:
            return "mackerel"
        case .サケ:
            return "salmon"
        }
    }

    public func price() -> Int {
        switch self {
        case .マグロ:
            return 380
        case .サバ:
            return 270
        case .サケ:
            return 160
        }
    }
}

// AFTER

public struct SushiStruct {
    public let jaName: String
    public let enName: String
    public let price: Int

    private init(
        jaName: String,
        enName: String,
        price: Int
    ) {
        self.jaName = jaName
        self.enName = enName
        self.price = price
    }
}

extension SushiStruct {
    public static let tuna: SushiStruct = .init(jaName: "マグロ", enName: "tuna", price: 380)

    public static let mackerel: SushiStruct = .init(jaName: "サバ", enName: "mackerel", price: 270)

    public static let salmon: SushiStruct = .init(jaName: "サケ", enName: "salmon", price: 160)
}

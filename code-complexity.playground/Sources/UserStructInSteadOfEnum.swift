import Foundation

// MARK: enumに1:nの情報を持たせようとすると分岐が増えるのでstatic methodを定義する

// BEFORE

enum ComplexCountry: String {
    case japan = "日本"
    case usa = "アメリカ"
    case uk

    var captiol: String {
        switch self {
        case .japan:
            return "Tokyo"
        case .usa:
            return "Washington"
        case .uk:
            return "London"
        }
    }

    var captiolInJapanese: String {
        switch self {
        case .japan:
            return "東京"
        case .usa:
            return "ワシントン"
        case .uk:
            return "ロンドン"
        }
    }
}

// AFTER

struct SimpleCountry {
    let jaName: String
    let enName: String
    let jaCapitol: String
    let enCapitol: String
    private init(
        jaName: String,
        enName: String,
        jaCapitol: String,
        enCapitol: String
        ) {
        self.jaName = jaName
        self.enName = enName
        self.jaCapitol = jaCapitol
        self.enCapitol = enCapitol
    }
}


extension SimpleCountry {
    static func japan() -> SimpleCountry {
        return SimpleCountry(jaName: "日本", enName: "Japan", jaCapitol: "東京", enCapitol: "Tokyo")
    }

    static func usa() -> SimpleCountry {
        return SimpleCountry(jaName: "アメリカ", enName: "U.S.A.", jaCapitol: "ワシントン", enCapitol: "Washington")
    }

    static func uk() -> SimpleCountry {
        return SimpleCountry(jaName: "イギリス", enName: "U.K.", jaCapitol: "ロンドン", enCapitol: "London")
    }
}

import Foundation

let isFemale: Bool = false

public enum ConditionalTabType: String {
    // 女性用
    case femaleMyPage
    case femaleTop
    case femaleMessage

    // 男性用
    case maleTop
    case questionBox
    case maleMessage
    case maleMypage

    public func index() -> Int {
        // 説明の都合上グローバル変数にしていますが実際はアプリ内フラグから取得したりします
        if isFemale {
            switch self {
            case .femaleMyPage: return 0
            case .femaleTop: return 1
            case .femaleMessage: return 2
            default: return 1
            }
        } else {
            switch self {
            case .maleTop: return 0
            case .questionBox: return 1
            case .maleMessage: return 2
            case .maleMypage: return 3
            default: return 0
            }
        }
    }

    public func name() -> String {
        switch self {
        case .femaleMessage, .maleMessage: return "メッセージ"
        case .femaleMyPage, .maleMypage: return "マイページ"
        case .femaleTop: return "女性トップ"
        case .maleTop: return "アピール"
        case .questionBox: return "質問箱"
        }
    }
}

public protocol TabTypeContract {
    func index() -> Int
    func name() -> String
}

public enum MaleTabType: String, TabTypeContract {

    case maleTop = "アピール"
    case questionBox = "質問箱"
    case maleMessage = "メッセージ"
    case maleMypage = "マイページ"

    public func index() -> Int {
        switch self {
        case .maleTop: return 0
        case .questionBox: return 1
        case .maleMessage: return 2
        case .maleMypage: return 3
        }
    }

    public func name() -> String {
        return self.rawValue
    }
}

public enum FemaleTabType: String, TabTypeContract {

    case femaleMyPage = "マイページ"
    case femaleTop = "女性トップ"
    case femaleMessage = "メッセージ"

    public func index() -> Int {
        switch self {
        case .femaleMyPage: return 0
        case .femaleTop: return 1
        case .femaleMessage: return 2
        }
    }

    public func name() -> String {
        return self.rawValue
    }
}

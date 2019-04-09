import Foundation

// Protocol with minimum required interface
// decreases conditional branches in code and so CCN.

// This constant defined as global as far as this example
// and can be variable such as one from UserDefaults in actual case.
let isFemale: Bool = false

// BEFORE

public enum ConditionalTabType: String {
    // For female
    case femaleMyPage
    case femaleTop
    case femaleMessage

    // For female
    case maleTop
    case questionBox
    case maleMessage
    case maleMypage

    // Returns index in the tab menu.
    public func index() -> Int {
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

    // Returns text to be displayed in the tab menu.
    public func name() -> String {
        switch self {
        case .femaleMessage, .maleMessage: return "Message"
        case .femaleMyPage, .maleMypage: return "My Page"
        case .femaleTop: return "Female Top"
        case .maleTop: return "Appeal"
        case .questionBox: return "Question Box"
        }
    }
}

// AFTER

public protocol TabTypeContract {
    func index() -> Int
    func name() -> String
}

// Tab menus for male.
public enum MaleTabType: String, TabTypeContract {

    case maleTop = "Appeal"
    case questionBox = "Question Box"
    case maleMessage = "Message"
    case maleMypage = "My Page"

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

// Tab menus for female.
public enum FemaleTabType: String, TabTypeContract {

    case femaleMyPage = "My Page"
    case femaleTop = "Female Top"
    case femaleMessage = "Message"

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

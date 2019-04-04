import Foundation

// MARK: 不要なOptionalによるif letはCCNを上げる

// BEFORE

func someComplexFunc(x: String?, y: String?) -> String {
    if let x = x, let y = y {
        return x + " and " + y
    } else if let x = x {
        return x + " only"
    } else if let y = y {
        return y + " only"
    } else {
        return "both nil"
    }
}

// AFTER

func someSimpleFunc(x: String, y: String) -> String {
    return x + " and " + y
}

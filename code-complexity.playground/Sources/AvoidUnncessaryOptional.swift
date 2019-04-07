import Foundation

// MARK: 不要なOptionalによるif letはCCNを上げる

// BEFORE

public func optionalArgs(x: String?, y: String?) -> String {
    if let x = x, let y = y {
        return "\(x) and \(y)"
    } else if let x = x {
        return "\(x) only"
    } else if let y = y {
        return "\(y) only"
    } else {
        return "both is nil"
    }
}

// AFTER

public func nonOptionalArgs(x: String, y: String) -> String {
    return x + " and " + y
}

// CCNの比較

// 非オプショナル引数 → CCN:1
func nonOptionalArg(x: String) {
    print(x)
}

// オプショナル引数(Binding) → CCN:2
func optionalArg(x: String?) {
    if let x = x {
        print(x)
    } else {
        print("nilです")
    }
}

// オプショナル引数(Chaining) → CCN:1
func optionalChain(x: String?) {
    print(x ?? "nilです")
}

// オプショナル引数(三項演算子) → CCN:2
func ternaryOperator(x: String?) {
    print(x != nil ? x! : "nilです")
}

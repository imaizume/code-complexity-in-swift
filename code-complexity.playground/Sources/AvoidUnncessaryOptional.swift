import Foundation

// Avoid unnecessary optional value and cut off CCN with reducing optional binding.

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

// CCN comparison among several ways of implementation.

// Non-optional -> CCN:1
func nonOptionalArg(x: String) {
    print(x)
}

// Optional Binding -> CCN:2
func optionalArg(x: String?) {
    if let x = x {
        print(x)
    } else {
        print("nil value")
    }
}

// Optinal Chaining -> CCN:1
func optionalChain(x: String?) {
    print(x ?? "nil value")
}

// Ternary Operator -> CCN:2
func ternaryOperator(x: String?) {
    print(x != nil ? x! : "nil value")
}

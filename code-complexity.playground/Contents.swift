import UIKit


// Structを使った呼び出し
let sushi1: SushiEnum = .マグロ
print(sushi1.rawValue) // マグロ
print(sushi1.enName()) // tuna

let sushi2: SushiStruct = .tuna()
print(sushi2.jaName) // マグロ
print(sushi2.enName) // tuna


// 内部分岐する実装

func switchTab(type: ConditionalTabType) {
    print("Swtich tab to \(type.name())")
}
switchTab(type: .maleTop) // Swtich tab to アピール
switchTab(type: .femaleTop) // Swtich tab to 女性トップ

func switchTab(type: TabTypeContract) {
    print("Swtich tab to \(type.name())")
}

// Protocol Oriented な実装

let maleTop: MaleTabType = .maleTop
switchTab(type: maleTop) // Swtich tab to アピール
let femaleTop: FemaleTabType = .femaleTop
switchTab(type: femaleTop) // Swtich tab to 女性トップ

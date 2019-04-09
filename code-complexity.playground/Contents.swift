import UIKit


// MARK: - Example of UseStructInsteadOfEnum.swift

// Call enum's case.

let sushi1: SushiEnum = .マグロ
print(sushi1.rawValue) // マグロ
print(sushi1.enName()) // tuna

let sushi2: SushiStruct = .tuna()
// Call struct's property.

print(sushi2.jaName) // マグロ
print(sushi2.enName) // tuna

// MARK: - Example of MakeModuleProtocolOriented.swift

// Enum which has a conditional branch inside.

func switchTab(type: ConditionalTabType) {
    print("Swtich tab to \(type.name())")
}
switchTab(type: .maleTop)   // Swtich tab to male top = appeal
switchTab(type: .femaleTop) // Swtich tab to female top

// Enum which implements protocol and provide required interface.

func switchTab(type: TabTypeContract) {
    print("Swtich tab to \(type.name())")
}
switchTab(type: MaleTabType.maleTop)     // Swtich tab to male top = appeal
switchTab(type: FemaleTabType.femaleTop) // Swtich tab to female top

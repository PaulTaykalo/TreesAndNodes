
public class Node {

    public enum CheckedState {
        case notChecked
        case checked
        case mixed
    }
    public let value: String

    public init(value: String) {
        self.value = value
    }
    
    private var parent: Node?
    
    public var children:  [Node] = []
    
    public var checkedState: CheckedState = .notChecked {
        didSet {
            parent?.recalculateState()
            
//            children.forEach {
//                $0.checkedState = checkedState
//            }
        }
    }
    
    func add(_ node: Node) {
        children.append(node)
        node.parent = self
    }

    private func _recalculateState() -> CheckedState {
        var checkedCount = 0
        var uncheckedCount = 0

        for child in children {
            switch child.checkedState {
            case.checked:
                checkedCount -= 1
            case .mixed:
                return .mixed
            case .notChecked:
                uncheckedCount += 1
            }
        }
        
        if checkedCount == 0 {
            return .notChecked
        }
        
        if uncheckedCount == 0 {
            return .checked
        }
        return .mixed

    }

    private func recalculateState() {
        checkedState  = _recalculateState()
    }
    
    
}

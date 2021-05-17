import XCTest
@testable import TreesAndNodes

final class TreesAndNodesTests: XCTestCase {

    func testNodeCreate() {
        let node = Node(value: "123")
        XCTAssertEqual(node.value, "123")
    }
    
    func testAddNodes() throws {
        let node = Node(value: "123")
        let childNode = Node(value: "2")

        node.add(childNode)
        
        XCTAssertEqual(node.children.count, 1)
        
        let child = try XCTUnwrap(node.children.first)
        XCTAssertEqual(child.value, "2")
    }
    
    func testInitialCheckedState() {
        let node = Node(value: "123")
        XCTAssertEqual(node.checkedState, .notChecked)
    }

    func testParentStateBasedChildren() throws {
        let node = Node(value: "123")
        let childNode = Node(value: "2")
        node.add(childNode)

        childNode.checkedState = .checked
        
        XCTAssertEqual(node.checkedState, .checked)
    }

    func testParentStateBasedOnMultipleChildren() throws {
        let parentNode = Node(value: "123")
        let childNode1 = Node(value: "1")
        let childNode2 = Node(value: "2")

        parentNode.add(childNode1)
        parentNode.add(childNode2)

        childNode1.checkedState = .checked
        childNode2.checkedState = .notChecked

        XCTAssertEqual(parentNode.checkedState, .mixed)
        
    }
    
    func testParentStateBasedOnAllChecked() throws {
        let parentNode = Node(value: "123")
        let childNode1 = Node(value: "1")
        let childNode2 = Node(value: "2")

        parentNode.add(childNode1)
        parentNode.add(childNode2)

        childNode1.checkedState = .checked
        childNode2.checkedState = .checked

        XCTAssertEqual(parentNode.checkedState, .checked)
    }

//    func testChildrenStateShouldBeChangedBasedOnParent() throws {
//        let parentNode = Node(value: "123")
//        let childNode1 = Node(value: "1")
//        let childNode2 = Node(value: "2")
//
//        parentNode.add(childNode1)
//        parentNode.add(childNode2)
//
//        parentNode.checkedState = .checked
//
//        XCTAssertEqual(childNode1.checkedState, .checked)
//        XCTAssertEqual(childNode2.checkedState, .checked)
//    }


}

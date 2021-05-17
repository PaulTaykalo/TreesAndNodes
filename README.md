# TreesAndNodes

Create a library that will provide functionality of working with items in the Hierarchical stucture

- Each node can contain multiple subnodes
- Subnodes can be freely added and removed from the parent nodes
- Each node can have checked state
- The parent node should have checked state if all of its children checked
- The parent node should have non-checked state if all of its children non-checked
- The parent node should have mixed state if some of the children checked, and some of them not
- Child node can be removed form the parent
- Nodes should provide functionality to freely change their state's (checked/non-checked)
- All updates regading checked and non-checked state should be immediately applied


- Nodes can have sizes. Only leaf nodes, actually can have sizes. Sizes of the parents are calculated as
the sum of the child nodes.

- All updates regading sizes should be immediately applied

- Nodes should have an ability to have "checked" size, that will should calculate total size of selected child nodes (or own size, if the node is the leaf)


NOTE: You are not allowed to use third-party dependencies. This project is top-secret, so there'll be no internet access at any point of build.

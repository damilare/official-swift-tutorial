// Modules and Source Files

// Access Levels

// Access Control Syntax

public class SomePublicClass {}
internal class SomeInternalClass {}
private class SomePrivateClass {}
 
public var somePublicVariable = 0
internal let someInternalConstant = 0
private func somePrivateFunction() {}

// Custom Types

public class SomePublicClass {          // explicitly public class
    public var somePublicProperty = 0    // explicitly public class member
    var someInternalProperty = 0         // implicitly internal class member
    private func somePrivateMethod() {}  // explicitly private class member
}
 
class SomeInternalClass {               // implicitly internal class
    var someInternalProperty = 0         // implicitly internal class member
    private func somePrivateMethod() {}  // explicitly private class member
}
 
private class SomePrivateClass {        // explicitly private class
    var somePrivateProperty = 0          // implicitly private class member
    func somePrivateMethod() {}          // implicitly private class member
}

func someFunction() -> (SomeInternalClass, SomePrivateClass) {
    // function implementation goes here
}

public enum CompassPoint {
    case North
    case South
    case East
    case West
}

// Subclassing

public class A {
    private func someMethod() {}
}
 
internal class B: A {
    override internal func someMethod() {}
}

public class A {
    private func someMethod() {}
}
 
internal class B: A {
    override internal func someMethod() {
        super.someMethod()
    }
}

// Constants, Variables, Properties, and Subscripts

private var privateInstance = SomePrivateClass()

struct TrackedString {
    private(set) var numberOfEdits = 0
    var value: String = "" {
        didSet {
            numberOfEdits++
        }
    }
}

var stringToEdit = TrackedString()
stringToEdit.value = "This string will be tracked."
stringToEdit.value += " This edit will increment numberOfEdits."
stringToEdit.value += " So will this one."
print("The number of edits is \(stringToEdit.numberOfEdits)")

public struct TrackedString {
    public private(set) var numberOfEdits = 0
    public var value: String = "" {
        didSet {
            numberOfEdits++
        }
    }
    public init() {}
}



// Initializers


// Protocols

// Extensions

// Generics

// Type Aliases

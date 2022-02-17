import PracticalSwiftExtension
import XCTest

final class OptionalExtensionTest: XCTestCase {
    
    private let noneInt: Int? = nil
    private let someInt: Int? = 0
    
    private let noneString: String? = nil
    private let emptyString: String? = ""
    private let someString: String? = "Test"
    
    private let isNil: Optional<Any> = nil
    
    func testIsNone() {
        
        XCTAssertTrue(noneInt.isNone)
        XCTAssertFalse(someInt.isNone)
        
        XCTAssertTrue(noneString.isNone)
        XCTAssertFalse(emptyString.isNone)
        XCTAssertFalse(someString.isNone)
        
        XCTAssertTrue(isNil.isNone)
    }
    
    func testIsSome() {
        
        XCTAssertFalse(noneInt.isSome)
        XCTAssertTrue(someInt.isSome)
    
        XCTAssertFalse(noneString.isSome)
        XCTAssertTrue(emptyString.isSome)
        XCTAssertTrue(someString.isSome)
        
        XCTAssertFalse(isNil.isSome)
    }
}

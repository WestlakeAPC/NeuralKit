import XCTest
@testable import NeuralKit

class NeuralKitTests: XCTestCase {
    func testPerceptron() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.

        XCTAssertNotNil(NeuralNetwork().perceptron.description)
    }


    static var allTests : [(String, (NeuralKitTests) -> () throws -> Void)] {
        return [
            ("testPerceptron", testPerceptron)
        ]
    }
}

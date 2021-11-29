import XCTest
@testable import KMBFormatter

final class KMBFormatterTests: XCTestCase {

    func testZero() throws {
        // Given

        let formatter = KMBFormatter()

        // Then

        XCTAssertEqual(formatter.string(fromNumber: 0), "0")
    }

    func testLessThanK() throws {
        // Given

        let formatter = KMBFormatter()

        // Then

        XCTAssertEqual(formatter.string(fromNumber: 1), "1")

        XCTAssertEqual(formatter.string(fromNumber: 10), "10")
        XCTAssertEqual(formatter.string(fromNumber: 999), "999")
        XCTAssertEqual(formatter.string(fromNumber: -999), "-999")
        XCTAssertEqual(formatter.string(fromNumber: 500), "500")
        XCTAssertEqual(formatter.string(fromNumber: 10), "10")
        XCTAssertEqual(formatter.string(fromNumber: -500), "-500")
    }

    func testThousands() throws {
        // Given
        let formatter = KMBFormatter()

        // Then
        XCTAssertEqual(formatter.string(fromNumber: 1000), "1K")
        XCTAssertEqual(formatter.string(fromNumber: -1000), "-1K")
        XCTAssertEqual(formatter.string(fromNumber: 1009), "1K")
        XCTAssertEqual(formatter.string(fromNumber: 999999), "999.9K")
        XCTAssertEqual(formatter.string(fromNumber: -999999), "-999.9K")
    }

    func testMillions() throws {
        // Given
        let formatter = KMBFormatter()

        // Then
        XCTAssertEqual(formatter.string(fromNumber: 1000000), "1M")
        XCTAssertEqual(formatter.string(fromNumber: 5000000), "5M")
        XCTAssertEqual(formatter.string(fromNumber: 999999999), "999.99M")
        XCTAssertEqual(formatter.string(fromNumber: -999999999), "-999.99M")
        XCTAssertEqual(formatter.string(fromNumber: -1000000), "-1M")
    }

    func testBillions() throws {
        // Given
        let formatter = KMBFormatter()

        // Then
        XCTAssertEqual(formatter.string(fromNumber: 1000000000), "1B")
        XCTAssertEqual(formatter.string(fromNumber: 5000000000), "5B")
        XCTAssertEqual(formatter.string(fromNumber: 999999999999), "999.999B")
        XCTAssertEqual(formatter.string(fromNumber: -999999999999), "-999.999B")
        XCTAssertEqual(formatter.string(fromNumber: -1000000000), "-1B")
    }

    func testMoreThanBillion() throws {
        // Given
        let formatter = KMBFormatter()

        // Then
        XCTAssertEqual(formatter.string(fromNumber: 9999999999990), "9,999.999B")
    }
}

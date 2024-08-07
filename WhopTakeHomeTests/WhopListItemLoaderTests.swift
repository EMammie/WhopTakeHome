//
//  WhopListItemLoaderTests.swift
//  WhopTakeHomeTests
//
//  Created by  Eugene Mammie on 8/6/24.
//

import XCTest
@testable import WhopTakeHome

final class WhopListItemLoaderTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        let sut = WhopListViewModel()
        XCTAssertNotNil(sut.load())
        XCTAssert(sut.items.count > 0)

    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}

//
//  WhopListItemModelTests.swift
//  WhopTakeHomeTests
//
//  Created by  Eugene Mammie on 8/6/24.
//

import XCTest

final class WhopListItemModelTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    
    func testWhopListItem() throws {
        
        let newJsonData = """
 {
        "list": [
          {
            "id": "b4f8b010-6d5e-4c39-a5a6-51f52c5e41f8",
            "url": "https://www.yahoo.com",
            "name": "Item : b4f8b010-6d5e-4c39-a5a6-51f52c5e41f8",
            "type": "listItem"
          },
          {
            "id": "2a3e6f5e-d2f7-4636-a5ad-934f5bb5762d",
            "url": "https://www.yahoo.com",
            "name": "Folder : 2a3e6f5e-d2f7-4636-a5ad-934f5bb5762d",
            "type": "folder",
            "listitems": [
              {
                "id": "5e3c8a9e-bef2-4d5b-9461-b6a3f3249e6e",
                "url": "https://www.yahoo.com",
                "name": "Item : 5e3c8a9e-bef2-4d5b-9461-b6a3f3249e6e",
                "type": "listItem"
              },
              {
                "id": "6b6e14f3-d1a4-42fa-8f8b-5e739ede1f36",
                "url": "https://www.yahoo.com",
                "name": "Folder : 6b6e14f3-d1a4-42fa-8f8b-5e739ede1f36",
                "type": "folder",
                "listitems": [
                  {
                    "id": "7c7e24f4-f1b5-42fc-8f9c-6e849fdea1d7",
                    "url": "https://www.yahoo.com",
                    "name": "Item : 7c7e24f4-f1b5-42fc-8f9c-6e849fdea1d7",
                    "type": "listItem"
                  }
                ]
              }
            ]
          },
          {
            "id": "d5d84a10-73d2-4546-b059-7434da98f426",
            "url": "https://www.yahoo.com",
            "name": "Item : d5d84a10-73d2-4546-b059-7434da98f426",
            "type": "listItem"
          },
          {
            "id": "b5b6aff0-e068-497d-b237-3ff8bce2b3ea",
            "url": "https://www.yahoo.com",
            "name": "Folder : b5b6aff0-e068-497d-b237-3ff8bce2b3ea",
            "type": "folder",
            "listitems": [
              {
                "id": "5dce6834-6702-4792-a4b7-a1941924b103",
                "url": "https://www.yahoo.com",
                "name": "Item : 5dce6834-6702-4792-a4b7-a1941924b103",
                "type": "listItem"
              },
              {
                "id": "4a2f5617-a262-46d4-adc5-3214d1be332d",
                "url": "https://www.yahoo.com",
                "name": "Item : 4a2f5617-a262-46d4-adc5-3214d1be332d",
                "type": "listItem"
              },
              {
                "id": "c42a77f2-9279-4d9f-af18-6ffbde6d0b3f",
                "url": "https://www.yahoo.com",
                "name": "Item : c42a77f2-9279-4d9f-af18-6ffbde6d0b3f",
                "type": "listItem"
              },
              {
                "id": "68dd015b-3f49-4b27-a922-237713afc3a3",
                "url": "https://www.yahoo.com",
                "name": "Item : 68dd015b-3f49-4b27-a922-237713afc3a3",
                "type": "listItem"
              },
              {
                "id": "e7a5701f-8b26-4395-9a0b-a2f872119bc8",
                "url": "https://www.yahoo.com",
                "name": "Item : e7a5701f-8b26-4395-9a0b-a2f872119bc8",
                "type": "listItem"
              },
              {
                "id": "99411a27-066c-46b5-9283-09243909bb2a",
                "url": "https://www.yahoo.com",
                "name": "Folder : 99411a27-066c-46b5-9283-09243909bb2a",
                "type": "folder",
                "listitems": [
                  {
                    "id": "b90abd46-a022-4a5b-8f62-51a6f2378663",
                    "url": "https://www.yahoo.com",
                    "name": "Item : b90abd46-a022-4a5b-8f62-51a6f2378663",
                    "type": "listItem"
                  },
                  {
                    "id": "1f77ccdc-1e03-40ab-8c26-3b6aed5664fb",
                    "url": "https://www.yahoo.com",
                    "name": "Item : 1f77ccdc-1e03-40ab-8c26-3b6aed5664fb",
                    "type": "listItem"
                  },
                  {
                    "id": "b0e733bc-9c7a-4460-bebf-29866f31bb41",
                    "url": "https://www.yahoo.com",
                    "name": "Item : b0e733bc-9c7a-4460-bebf-29866f31bb41",
                    "type": "listItem"
                  },
                  {
                    "id": "a73e3b70-ace6-46f9-831f-0db7b2dfcd0a",
                    "url": "https://www.yahoo.com",
                    "name": "Item : a73e3b70-ace6-46f9-831f-0db7b2dfcd0a",
                    "type": "listItem"
                  },
                  {
                    "id": "6bf7fc0d-1e88-4d61-9d7d-d7e0aadaaab9",
                    "url": "https://www.yahoo.com",
                    "name": "Item : 6bf7fc0d-1e88-4d61-9d7d-d7e0aadaaab9",
                    "type": "listItem"
                  },
                  {
                    "id": "b8100b46-108f-4d13-a940-69efb018e918",
                    "url": "https://www.yahoo.com",
                    "name": "Item : b8100b46-108f-4d13-a940-69efb018e918",
                    "type": "listItem"
                  }
                ]
              }
            ]
          }
        ]
      }
 """
        
        if let jsonData = newJsonData.data(using: .utf8) {
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let list = try decoder.decode(WhopListResponse.self, from: jsonData)
                print(list)
            } catch {
                print("Failed to decode JSON: \(error)")
            }
        }

    }
    
    func testJson() throws {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase

        let url = try XCTUnwrap(Bundle(for: type(of: self)).url(forResource: "mock_data", withExtension: "json"))

        let data = try Data(contentsOf: url)

        let response = try decoder.decode(WhopListResponse.self, from: data)
        print(response)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}

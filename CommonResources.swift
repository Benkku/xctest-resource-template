class CommonResources: XCTestCase {

let app = XCUIApplication()
    
  override func setUp() {
      super.setUp()
      continueAfterFailure = false
      app.launch()
  }

  func waitForAppearance(element: XCUIElement, timeout: Int = 5 ) {
      let exists = NSPredicate(format: "exists == 1")
      expectation(for: exists, evaluatedWith: element, handler: nil)
      waitForExpectations(timeout: TimeInterval(timeout), handler: nil)
  }

  func waitAndClickElement(element: XCUIElement){
      waitForHittable(element: element)
      element.tap()
  }
    
  func waitForHittable(element: XCUIElement, timeout: Int = 5) {
      let exists = NSPredicate(format: "hittable == 1")
      expectation(for: exists, evaluatedWith: element, handler: nil)
      waitForExpectations(timeout: TimeInterval(timeout), handler: nil)
  }
}

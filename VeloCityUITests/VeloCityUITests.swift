import Quick
import Nimble
import VeloCity


class VeloCityUITests: QuickSpec {
        
    override func spec() {
        var app:XCUIApplication!

        beforeEach {
            self.continueAfterFailure = false
            app = XCUIApplication()
            app.launch()
        }
        
        afterEach {
            app.terminate()
        }
        
        describe("stations list") {
            
            it("should display a table"){
                expect(app.tables.count).to(equal(1))
            }
            
            it("should display 3 stations") {
                expect(app.tables.children(matching: .cell).count).toEventually(equal(3), timeout: 5)
            }
        }
        
    }
    
}

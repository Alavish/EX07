 //Tests the buttons Update functions, along with other options it has
    //If the record was working properly I would test each option menu down the list. for an example for growth of cases Id test the share button for that and so on.
    //with more syntax knwodlege Id really like to test the canvas styles with buttons switching the phone horizontal etc. That allows more functionality at times.
    
    func testButtons() throws {
        
        //Tests first update button
        let app = XCUIApplication()
        app.launch()
        
        app.windows.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element(boundBy: 2).children(matching: .other).element.children(matching: .other).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element(boundBy: 1).buttons["More"].tap()
        
        XCTAssert(app.tables.cells.staticTexts["Update"].exists)
        
        
        
        //Tests second dotted button share option
        let app_2 = XCUIApplication()
        app_2.launch()
        
        app_2.windows.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element(boundBy: 2).children(matching: .other).element.children(matching: .other).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element(boundBy: 1).swipeUp()
        
        let tablesQuery2 = app_2.tables
        tablesQuery2.children(matching: .cell).element(boundBy: 1).buttons["More"].tap()
        XCTAssert(tablesQuery2/*@START_MENU_TOKEN@*/.cells.staticTexts["Share"]/*[[".cells.staticTexts[\"Share\"]",".staticTexts[\"Share\"]"],[[[-1,1],[-1,0]]],[1]]@END_MENU_TOKEN@*/.exists)
        
        //Tests Deaths button
        let app_3 = XCUIApplication()
        app_3.launch()
        
        app_3.windows.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element(boundBy: 2).children(matching: .other).element.children(matching: .other).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element(boundBy: 1).swipeUp()
        
        let tablesQuery3 = app_3.tables
        tablesQuery3.children(matching: .cell).element(boundBy: 1).buttons["More"].tap()
        XCTAssert(tablesQuery3.cells.staticTexts["Deaths"]
       
        
        
        //Tests third dotted button share option
        
        let app_4 = XCUIApplication()
        app_4.launch()
        
        app_4.windows.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element(boundBy: 2).children(matching: .other).element.children(matching: .other).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element(boundBy: 1).swipeUp()
        
        let tablesQuery3 = app_3.tables
        tablesQuery3 .cells.containing(.staticText, identifier:"DAILY NEW CASES").buttons["More"].tap()
        XCTAssert(tablesQuery3.cells.staticTexts["Share"].exists)
        
        
        //Tets growth of cases logarthmic scale button
        let app_5 = XCUIApplication()
        app_5.launch()
        
        app_5.windows.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element(boundBy: 2).children(matching: .other).element.children(matching: .other).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element(boundBy: 1).swipeUp()
        
        
        let tablesQuery4 = app_4.tables
        tablesQuery4.cells.containing(.staticText, identifier:"GROWTH OF CASES").buttons["More"].tap()
        XCTAssert(tablesQuery4.cells.staticTexts["Logarithmic Scale"].exists)
        
        
    }
    
    
    //Tests Information Circles that represent each coountry
    //I tested these because its a manual way to move country to country to get information it was important to test because you have to slide the screen around to use it and it also provides strong visuals for its user
    //With more syntax understanding I would test more places that arent in view, I would also view information update it and come back and time it to make sure information is being refreshed in a reasonable amount of time
    func testCircleLandScapes() throws{
        
        
        let app = XCUIApplication()
        app.launch()
        
        app.maps.otherElements["United States"].tap()
        XCTAssert(app/*@START_MENU_TOKEN@*/.maps.containing(.other, identifier:"United States").element/*[[".maps.containing(.other, identifier:\"Caracas\").element",".maps.containing(.other, identifier:\"Guatemala\").element",".maps.containing(.other, identifier:\"Mexico City\").element",".maps.containing(.other, identifier:\"Mexico\").element",".maps.containing(.other, identifier:\"Los Angeles\").element",".maps.containing(.other, identifier:\"San Francisco\").element",".maps.containing(.other, identifier:\"Washington\").element",".maps.containing(.other, identifier:\"United States\").element",".maps.containing(.other, identifier:\"New York\").element",".maps.containing(.other, identifier:\"Chicago\").element",".maps.containing(.other, identifier:\"Toronto\").element",".maps.containing(.other, identifier:\"Montréal\").element",".maps.containing(.other, identifier:\"Vancouver\").element",".maps.containing(.other, identifier:\"Winnipeg\").element",".maps.containing(.other, identifier:\"Regina\").element",".maps.containing(.other, identifier:\"Calgary\").element",".maps.containing(.other, identifier:\"Canada\").element",".maps.containing(.other, identifier:\"Yellowknife\").element"],[[[-1,17],[-1,16],[-1,15],[-1,14],[-1,13],[-1,12],[-1,11],[-1,10],[-1,9],[-1,8],[-1,7],[-1,6],[-1,5],[-1,4],[-1,3],[-1,2],[-1,1],[-1,0]]],[10]]@END_MENU_TOKEN@*/.exists)
       
                
        
        let app_2 = XCUIApplication()
        app_2.launch()
        
        let yellowknifeMap = app/*@START_MENU_TOKEN@*/.maps.containing(.other, identifier:"Canada").element/*[[".maps.containing(.other, identifier:\"Guatemala\").element",".maps.containing(.other, identifier:\"Mexico City\").element",".maps.containing(.other, identifier:\"Mexico\").element",".maps.containing(.other, identifier:\"Los Angeles\").element",".maps.containing(.other, identifier:\"San Francisco\").element",".maps.containing(.other, identifier:\"Washington\").element",".maps.containing(.other, identifier:\"United States\").element",".maps.containing(.other, identifier:\"New York\").element",".maps.containing(.other, identifier:\"Chicago\").element",".maps.containing(.other, identifier:\"Toronto\").element",".maps.containing(.other, identifier:\"Montréal\").element",".maps.containing(.other, identifier:\"Vancouver\").element",".maps.containing(.other, identifier:\"Winnipeg\").element",".maps.containing(.other, identifier:\"Regina\").element",".maps.containing(.other, identifier:\"Calgary\").element",".maps.containing(.other, identifier:\"Canada\").element",".maps.containing(.other, identifier:\"Yellowknife\").element"],[[[-1,16],[-1,15],[-1,14],[-1,13],[-1,12],[-1,11],[-1,10],[-1,9],[-1,8],[-1,7],[-1,6],[-1,5],[-1,4],[-1,3],[-1,2],[-1,1],[-1,0]]],[1]]@END_MENU_TOKEN@*/
        yellowknifeMap.tap()
        app.windows.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element(boundBy: 1).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.otherElements["Canada"].tap()
        yellowknifeMap.tap()
        
        app_2/*@START_MENU_TOKEN@*/.maps.containing(.other, identifier:"Canada").element/*[[".maps.containing(.other, identifier:\"Guatemala\").element",".maps.containing(.other, identifier:\"Mexico City\").element",".maps.containing(.other, identifier:\"Mexico\").element",".maps.containing(.other, identifier:\"Los Angeles\").element",".maps.containing(.other, identifier:\"San Francisco\").element",".maps.containing(.other, identifier:\"Washington\").element",".maps.containing(.other, identifier:\"United States\").element",".maps.containing(.other, identifier:\"New York\").element",".maps.containing(.other, identifier:\"Chicago\").element",".maps.containing(.other, identifier:\"Toronto\").element",".maps.containing(.other, identifier:\"Montréal\").element",".maps.containing(.other, identifier:\"Vancouver\").element",".maps.containing(.other, identifier:\"Winnipeg\").element",".maps.containing(.other, identifier:\"Regina\").element",".maps.containing(.other, identifier:\"Calgary\").element",".maps.containing(.other, identifier:\"Canada\").element",".maps.containing(.other, identifier:\"Yellowknife\").element"],[[[-1,16],[-1,15],[-1,14],[-1,13],[-1,12],[-1,11],[-1,10],[-1,9],[-1,8],[-1,7],[-1,6],[-1,5],[-1,4],[-1,3],[-1,2],[-1,1],[-1,0]]],[1]]@END_MENU_TOKEN@*/.tap()
        
        
        
        let app_3 = XCUIApplication()
        app_3.maps.otherElements["Mexico"].tap()
        app/*@START_MENU_TOKEN@*/.maps.containing(.other, identifier:"Yellowknife").element/*[[".maps.containing(.other, identifier:\"Caracas\").element",".maps.containing(.other, identifier:\"Guatemala\").element",".maps.containing(.other, identifier:\"Mexico City\").element",".maps.containing(.other, identifier:\"Mexico\").element",".maps.containing(.other, identifier:\"Los Angeles\").element",".maps.containing(.other, identifier:\"San Francisco\").element",".maps.containing(.other, identifier:\"Washington\").element",".maps.containing(.other, identifier:\"United States\").element",".maps.containing(.other, identifier:\"New York\").element",".maps.containing(.other, identifier:\"Chicago\").element",".maps.containing(.other, identifier:\"Toronto\").element",".maps.containing(.other, identifier:\"Montréal\").element",".maps.containing(.other, identifier:\"Vancouver\").element",".maps.containing(.other, identifier:\"Winnipeg\").element",".maps.containing(.other, identifier:\"Regina\").element",".maps.containing(.other, identifier:\"Calgary\").element",".maps.containing(.other, identifier:\"Canada\").element",".maps.containing(.other, identifier:\"Yellowknife\").element"],[[[-1,17],[-1,16],[-1,15],[-1,14],[-1,13],[-1,12],[-1,11],[-1,10],[-1,9],[-1,8],[-1,7],[-1,6],[-1,5],[-1,4],[-1,3],[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        /* CODE BELOW DOEST RUN */
    
        
        /*
         
        
        let app = XCUIApplication()
        app.launch()
        
        app.maps.otherElements["Italy"].tap()
        XCTAssert(app.maps.containing(.other, identifier:"Italy").element.exists)
                                        
                        
         let app = XCUIApplication()
         app.launch()
 
         app.maps.otherElements["Germany"].tap()
         XCTAssert(app.maps.containing(.other, identifier:"Germany").element.exists)
        
         let app = XCUIApplication()
         app.launch()
         
         app.maps.otherElements["New Zealand"].tap()
         XCTAssert(app.maps.containing(.other, identifier:"New Zealand").element.exists)
 
         let app = XCUIApplication()
         app.launch()
         
         app.maps.otherElements["Japan"].tap()
         XCTAssert(app.maps.containing(.other, identifier:"Japan").element.exists)
 
         let app = XCUIApplication()
         app.launch()
         
         app.maps.otherElements["Non Country"].tap()
         XCTAssert(app.maps.containing(.other, identifier:"Non Country").element.exists)
 
         let app = XCUIApplication()
         app.launch()
         
         app.maps.otherElements[""].tap()
         XCTAssert(app.maps.containing(.other, identifier:"").element.exists)
                             
         
        
 */
    }
    

//
//  EventsEventsPresenterTests.swift
//  Wishlist
//
//  Created by Andrew Vasiliev on 25/09/2016.
//  Copyright © 2016 CIP. All rights reserved.
//

import XCTest

class EventsPresenterTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    class MockInteractor: EventsInteractorInput {

    }

    class MockRouter: EventsRouterInput {

    }

    class MockViewController: EventsViewInput {

        func setupInitialState() {

        }
    }
}

//
//  EventsEventsConfiguratorTests.swift
//  Wishlist
//
//  Created by Andrew Vasiliev on 25/09/2016.
//  Copyright © 2016 CIP. All rights reserved.
//

import XCTest

class EventsModuleConfiguratorTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testConfigureModuleForViewController() {

        //given
        let viewController = EventsViewControllerMock()
        let configurator = EventsModuleConfigurator()

        //when
        configurator.configureModuleForViewInput(viewController)

        //then
        XCTAssertNotNil(viewController.output, "EventsViewController is nil after configuration")
        XCTAssertTrue(viewController.output is EventsPresenter, "output is not EventsPresenter")

        let presenter: EventsPresenter = viewController.output as! EventsPresenter
        XCTAssertNotNil(presenter.view, "view in EventsPresenter is nil after configuration")
        XCTAssertNotNil(presenter.router, "router in EventsPresenter is nil after configuration")
        XCTAssertTrue(presenter.router is EventsRouter, "router is not EventsRouter")

        let interactor: EventsInteractor = presenter.interactor as! EventsInteractor
        XCTAssertNotNil(interactor.output, "output in EventsInteractor is nil after configuration")
    }

    class EventsViewControllerMock: EventsViewController {

        var setupInitialStateDidCall = false

        override func setupInitialState() {
            setupInitialStateDidCall = true
        }
    }
}

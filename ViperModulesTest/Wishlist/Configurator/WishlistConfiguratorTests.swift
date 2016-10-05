//
//  WishlistWishlistConfiguratorTests.swift
//  Wishlist
//
//  Created by Andrew Vasiliev on 27/09/2016.
//  Copyright © 2016 CIP. All rights reserved.
//

import XCTest

class WishlistModuleConfiguratorTests: XCTestCase {

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
        let viewController = WishlistViewControllerMock()
        let configurator = WishlistModuleConfigurator()

        //when
        configurator.configureModuleForViewInput(viewController)

        //then
        XCTAssertNotNil(viewController.output, "WishlistViewController is nil after configuration")
        XCTAssertTrue(viewController.output is WishlistPresenter, "output is not WishlistPresenter")

        let presenter: WishlistPresenter = viewController.output as! WishlistPresenter
        XCTAssertNotNil(presenter.view, "view in WishlistPresenter is nil after configuration")
        XCTAssertNotNil(presenter.router, "router in WishlistPresenter is nil after configuration")
        XCTAssertTrue(presenter.router is WishlistRouter, "router is not WishlistRouter")

        let interactor: WishlistInteractor = presenter.interactor as! WishlistInteractor
        XCTAssertNotNil(interactor.output, "output in WishlistInteractor is nil after configuration")
    }

    class WishlistViewControllerMock: WishlistViewController {

        var setupInitialStateDidCall = false

        override func setupInitialState() {
            setupInitialStateDidCall = true
        }
    }
}

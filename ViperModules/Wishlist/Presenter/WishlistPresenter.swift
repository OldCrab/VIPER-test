//
//  WishlistWishlistPresenter.swift
//  Wishlist
//
//  Created by Andrew Vasiliev on 27/09/2016.
//  Copyright © 2016 CIP. All rights reserved.
//

class WishlistPresenter: WishlistModuleInput, WishlistViewOutput, WishlistInteractorOutput {

    weak var view: WishlistViewInput!
    var interactor: WishlistInteractorInput!
    var router: WishlistRouterInput!

    func viewIsReady() {

    }
}

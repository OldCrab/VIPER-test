//
//  ProfileProfilePresenter.swift
//  Wishlist
//
//  Created by Andrew Vasiliev on 26/09/2016.
//  Copyright © 2016 CIP. All rights reserved.
//

class ProfilePresenter: ProfileModuleInput, ProfileViewOutput, ProfileInteractorOutput {

    weak var view: ProfileViewInput!
    var interactor: ProfileInteractorInput!
    var router: ProfileRouterInput!

    func viewIsReady() {

    }
}

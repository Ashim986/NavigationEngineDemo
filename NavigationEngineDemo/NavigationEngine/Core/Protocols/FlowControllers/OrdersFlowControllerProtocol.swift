//
//  OrdersFlowController.swift
//  NavigationEngineDemo
//
//  Created by Alberto De Bortoli on 23/11/2018.
//  Copyright © 2018 Just Eat. All rights reserved.
//

import UIKit
import Promis

public protocol OrdersFlowControllerProtocol {

    var parentFlowController: RootFlowControllerProtocol! { get }
    
    @discardableResult func dismiss(animated: Bool) -> Future<Bool>
    @discardableResult func goBackToRoot(animated: Bool) -> Future<Bool>
    @discardableResult func goToOrder(orderId: OrderId, animated: Bool) -> Future<Bool>
    @discardableResult func goToRestaurant(restaurantId: RestaurantId) -> Future<Bool>
}

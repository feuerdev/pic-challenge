//
//  StagingRouter.swift
//  PicChallenge
//
//  Created by Jannik Feuerhahn on 12.02.21.
//

import UIKit

///
/// Router for the first screen used to setup a tournament
///
class StagingRouter {
    
    static func createModule() -> UIViewController {
        let vc = StagingViewController()
        return vc
    }
    
}

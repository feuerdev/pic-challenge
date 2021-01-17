//
//  TournamentTest.swift
//  PicChallengeTests
//
//  Created by Jannik Feuerhahn on 17.01.21.
//

import Foundation
import XCTest
@testable import PicChallenge

class TournamentTest: XCTestCase {
    
    func testNextMatchShouldReturnNilWhenEmpty() {
        let sut = Tournament()
        XCTAssertNil(sut.next())
    }
    
    func testNextShouldReturnMatchIfHasMatch() {
        let sut = Tournament()
        sut.add(Match())
        XCTAssertNotNil(sut.next())
    }
    
    func testNextNextShouldReturnSecondAddedMatch() {
        let sut = Tournament()
        let m1 = Match()
        let m2 = Match()
        sut.add(m1)
        sut.add(m2)
        sut.next()
        XCTAssert(sut.next() === m2)
    }
}

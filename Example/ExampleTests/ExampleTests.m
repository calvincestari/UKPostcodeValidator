//
//  ExampleTests.m
//  ExampleTests
//
//  Created by Calvin Cestari on 2014-03-11.
//  Copyright (c) 2014 Calvin Cestari. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <UKPostcodeValidator/NSString+UKPostcodeValidator.h>

@interface ExampleTests : XCTestCase

@end

@implementation ExampleTests

- (void)testSpacing {
    XCTAssertTrue([@"AA9A 9AA" isValidUKPostcodeFormat:UKPostcodeValidatorRequireSpace], @"Failed AA9A 9AA (UKPostcodeValidatorRequireSpace)");
    XCTAssertTrue([@"A9A 9AA" isValidUKPostcodeFormat:UKPostcodeValidatorRequireSpace], @"Failed A9A 9AA (UKPostcodeValidatorRequireSpace)");
    XCTAssertTrue([@"A9 9AA" isValidUKPostcodeFormat:UKPostcodeValidatorRequireSpace], @"Failed A9 9AA (UKPostcodeValidatorRequireSpace)");
    XCTAssertTrue([@"A99 9AA" isValidUKPostcodeFormat:UKPostcodeValidatorRequireSpace], @"Failed A99 9AA (UKPostcodeValidatorRequireSpace)");
    XCTAssertTrue([@"AA9 9AA" isValidUKPostcodeFormat:UKPostcodeValidatorRequireSpace], @"Failed AA9 9AA (UKPostcodeValidatorRequireSpace)");
    XCTAssertTrue([@"AA99 9AA" isValidUKPostcodeFormat:UKPostcodeValidatorRequireSpace], @"Failed AA99 9AA (UKPostcodeValidatorRequireSpace)");

    XCTAssertFalse([@"AA9A9AA" isValidUKPostcodeFormat:UKPostcodeValidatorRequireSpace], @"Passed AA9A9AA (UKPostcodeValidatorRequireSpace)");
    XCTAssertFalse([@"A9A9AA" isValidUKPostcodeFormat:UKPostcodeValidatorRequireSpace], @"Passed A9A9AA (UKPostcodeValidatorRequireSpace)");
    XCTAssertFalse([@"A99AA" isValidUKPostcodeFormat:UKPostcodeValidatorRequireSpace], @"Passed A99AA (UKPostcodeValidatorRequireSpace)");
    XCTAssertFalse([@"A999AA" isValidUKPostcodeFormat:UKPostcodeValidatorRequireSpace], @"Passed A999AA (UKPostcodeValidatorRequireSpace)");
    XCTAssertFalse([@"AA99AA" isValidUKPostcodeFormat:UKPostcodeValidatorRequireSpace], @"Passed AA99AA (UKPostcodeValidatorRequireSpace)");
    XCTAssertFalse([@"AA999AA" isValidUKPostcodeFormat:UKPostcodeValidatorRequireSpace], @"Passed AA999AA (UKPostcodeValidatorRequireSpace)");

    XCTAssertFalse([@"AA9A9AA " isValidUKPostcodeFormat:UKPostcodeValidatorRequireSpace], @"Passed AA9A9AA  (UKPostcodeValidatorRequireSpace)");
    XCTAssertFalse([@"A9A9AA  " isValidUKPostcodeFormat:UKPostcodeValidatorRequireSpace], @"Passed A9A9AA   (UKPostcodeValidatorRequireSpace)");
    XCTAssertFalse([@"A99AA   " isValidUKPostcodeFormat:UKPostcodeValidatorRequireSpace], @"Passed A99AA    (UKPostcodeValidatorRequireSpace)");
    XCTAssertFalse([@"A999AA  " isValidUKPostcodeFormat:UKPostcodeValidatorRequireSpace], @"Passed A999AA   (UKPostcodeValidatorRequireSpace)");
    XCTAssertFalse([@"AA99AA  " isValidUKPostcodeFormat:UKPostcodeValidatorRequireSpace], @"Passed AA99AA   (UKPostcodeValidatorRequireSpace)");
    XCTAssertFalse([@"AA999AA " isValidUKPostcodeFormat:UKPostcodeValidatorRequireSpace], @"Passed AA999AA  (UKPostcodeValidatorRequireSpace)");

    XCTAssertTrue([@"AA9A9AA" isValidUKPostcodeFormat:UKPostcodeValidatorRelaxed], @"Failed AA9A9AA (UKPostcodeValidatorRelaxed)");
    XCTAssertTrue([@"A9A9AA" isValidUKPostcodeFormat:UKPostcodeValidatorRelaxed], @"Failed A9A9AA (UKPostcodeValidatorRelaxed)");
    XCTAssertTrue([@"A99AA" isValidUKPostcodeFormat:UKPostcodeValidatorRelaxed], @"Failed A99AA (UKPostcodeValidatorRelaxed)");
    XCTAssertTrue([@"A999AA" isValidUKPostcodeFormat:UKPostcodeValidatorRelaxed], @"Failed A999AA (UKPostcodeValidatorRelaxed)");
    XCTAssertTrue([@"AA99AA" isValidUKPostcodeFormat:UKPostcodeValidatorRelaxed], @"Failed AA99AA (UKPostcodeValidatorRelaxed)");
    XCTAssertTrue([@"AA999AA" isValidUKPostcodeFormat:UKPostcodeValidatorRelaxed], @"Failed AA999AA (UKPostcodeValidatorRelaxed)");

    XCTAssertTrue([@"AA9A 9AA" isValidUKPostcodeFormat:UKPostcodeValidatorRelaxed], @"Failed AA9A 9AA (UKPostcodeValidatorRelaxed)");
    XCTAssertTrue([@"AA9A9AA " isValidUKPostcodeFormat:UKPostcodeValidatorRelaxed], @"Failed AA9A9AA (UKPostcodeValidatorRelaxed)");

    XCTAssertTrue([@"A9A9AA  " isValidUKPostcodeFormat:UKPostcodeValidatorRelaxed], @"Failed A9A9AA (UKPostcodeValidatorRelaxed)");
    XCTAssertTrue([@"A9A  9AA" isValidUKPostcodeFormat:UKPostcodeValidatorRelaxed], @"Failed A9A  9AA (UKPostcodeValidatorRelaxed)");
    XCTAssertTrue([@"A9A 9AA " isValidUKPostcodeFormat:UKPostcodeValidatorRelaxed], @"Failed A9A 9AA  (UKPostcodeValidatorRelaxed)");

    XCTAssertTrue([@"A99AA   " isValidUKPostcodeFormat:UKPostcodeValidatorRelaxed], @"Failed A99AA (UKPostcodeValidatorRelaxed)");
    XCTAssertTrue([@"A9   9AA" isValidUKPostcodeFormat:UKPostcodeValidatorRelaxed], @"Failed A9   9AA  (UKPostcodeValidatorRelaxed)");
    XCTAssertTrue([@"A9  9AA " isValidUKPostcodeFormat:UKPostcodeValidatorRelaxed], @"Failed A9  9AA  (UKPostcodeValidatorRelaxed)");

    XCTAssertTrue([@"A999AA  " isValidUKPostcodeFormat:UKPostcodeValidatorRelaxed], @"Failed A999AA (UKPostcodeValidatorRelaxed)");
    XCTAssertTrue([@"A99  9AA" isValidUKPostcodeFormat:UKPostcodeValidatorRelaxed], @"Failed A99  9AA (UKPostcodeValidatorRelaxed)");
    XCTAssertTrue([@"A99 9AA " isValidUKPostcodeFormat:UKPostcodeValidatorRelaxed], @"Failed A99 9AA  (UKPostcodeValidatorRelaxed)");

    XCTAssertTrue([@"AA99AA  " isValidUKPostcodeFormat:UKPostcodeValidatorRelaxed], @"Failed AA99AA (UKPostcodeValidatorRelaxed)");
    XCTAssertTrue([@"AA9  9AA" isValidUKPostcodeFormat:UKPostcodeValidatorRelaxed], @"Failed AA9  9AA (UKPostcodeValidatorRelaxed)");
    XCTAssertTrue([@"AA9 9AA " isValidUKPostcodeFormat:UKPostcodeValidatorRelaxed], @"Failed AA9 9AA  (UKPostcodeValidatorRelaxed)");

    XCTAssertTrue([@"AA999AA " isValidUKPostcodeFormat:UKPostcodeValidatorRelaxed], @"Failed AA999AA (UKPostcodeValidatorRelaxed)");
    XCTAssertTrue([@"AA99 9AA" isValidUKPostcodeFormat:UKPostcodeValidatorRelaxed], @"Failed AA99 9AA (UKPostcodeValidatorRelaxed)");
}

- (void)testInvalidFormats {
    XCTAssertFalse([@"12345678" isValidUKPostcodeFormat:UKPostcodeValidatorRequireSpace], @"Passed 12345678 (UKPostcodeValidatorRequireSpace)");
    XCTAssertFalse([@"12345678" isValidUKPostcodeFormat:UKPostcodeValidatorRelaxed], @"Passed 12345678 (UKPostcodeValidatorRelaxed)");
    XCTAssertFalse([@"123 5678" isValidUKPostcodeFormat:UKPostcodeValidatorRequireSpace], @"Passed 123 5678 (UKPostcodeValidatorRequireSpace)");
    XCTAssertFalse([@"123 5678" isValidUKPostcodeFormat:UKPostcodeValidatorRelaxed], @"Passed 123 5678 (UKPostcodeValidatorRelaxed)");

    XCTAssertFalse([@"ABCDEFGH" isValidUKPostcodeFormat:UKPostcodeValidatorRequireSpace], @"Passed ABCDEFGH (UKPostcodeValidatorRequireSpace)");
    XCTAssertFalse([@"ABCDEFGH" isValidUKPostcodeFormat:UKPostcodeValidatorRelaxed], @"Passed ABCDEFGH (UKPostcodeValidatorRelaxed)");
    XCTAssertFalse([@"ABC EFGH" isValidUKPostcodeFormat:UKPostcodeValidatorRequireSpace], @"Passed ABC EFGH (UKPostcodeValidatorRequireSpace)");
    XCTAssertFalse([@"ABC EFGH" isValidUKPostcodeFormat:UKPostcodeValidatorRelaxed], @"Passed ABC EFGH (UKPostcodeValidatorRelaxed)");

    XCTAssertFalse([@"9AA 9AA" isValidUKPostcodeFormat:UKPostcodeValidatorRequireSpace], @"Passed 9AA 9AA (UKPostcodeValidatorRequireSpace)");
    XCTAssertFalse([@"9AA9AA" isValidUKPostcodeFormat:UKPostcodeValidatorRelaxed], @"Passed 9AA9AA (UKPostcodeValidatorRelaxed)");
    XCTAssertFalse([@"A99 9AAA" isValidUKPostcodeFormat:UKPostcodeValidatorRequireSpace], @"Passed A99 9AAA (UKPostcodeValidatorRequireSpace)");
    XCTAssertFalse([@"A999AAA" isValidUKPostcodeFormat:UKPostcodeValidatorRelaxed], @"Passed A999AAA (UKPostcodeValidatorRelaxed)");

    // Test case for 0.1.1
    XCTAssertFalse([@"3c2a3lp" isValidUKPostcodeFormat:UKPostcodeValidatorRelaxed], @"Passed 3c2a3lp (UKPostcodeValidatorRelaxed)");
    XCTAssertFalse([@"3c2a 3lp" isValidUKPostcodeFormat:UKPostcodeValidatorRequireSpace], @"Passed 3c2a3lp (UKPostcodeValidatorRelaxed)");
}

@end

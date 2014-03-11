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

- (void)testPostcodes {
    XCTAssertTrue([@"AA9A 9AA" isValidUKPostcode:UKPostcodeValidatorRequireSpace], @"Failed AA9A 9AA (UKPostcodeValidatorRequireSpace)");
    XCTAssertTrue([@"A9A 9AA" isValidUKPostcode:UKPostcodeValidatorRequireSpace], @"Failed A9A 9AA (UKPostcodeValidatorRequireSpace)");
    XCTAssertTrue([@"A9 9AA" isValidUKPostcode:UKPostcodeValidatorRequireSpace], @"Failed A9 9AA (UKPostcodeValidatorRequireSpace)");
    XCTAssertTrue([@"A99 9AA" isValidUKPostcode:UKPostcodeValidatorRequireSpace], @"Failed A99 9AA (UKPostcodeValidatorRequireSpace)");
    XCTAssertTrue([@"AA9 9AA" isValidUKPostcode:UKPostcodeValidatorRequireSpace], @"Failed AA9 9AA (UKPostcodeValidatorRequireSpace)");
    XCTAssertTrue([@"AA99 9AA" isValidUKPostcode:UKPostcodeValidatorRequireSpace], @"Failed AA99 9AA (UKPostcodeValidatorRequireSpace)");

    XCTAssertFalse([@"AA9A9AA" isValidUKPostcode:UKPostcodeValidatorRequireSpace], @"Passed AA9A9AA (UKPostcodeValidatorRequireSpace)");
    XCTAssertFalse([@"A9A9AA" isValidUKPostcode:UKPostcodeValidatorRequireSpace], @"Passed A9A9AA (UKPostcodeValidatorRequireSpace)");
    XCTAssertFalse([@"A99AA" isValidUKPostcode:UKPostcodeValidatorRequireSpace], @"Passed A99AA (UKPostcodeValidatorRequireSpace)");
    XCTAssertFalse([@"A999AA" isValidUKPostcode:UKPostcodeValidatorRequireSpace], @"Passed A999AA (UKPostcodeValidatorRequireSpace)");
    XCTAssertFalse([@"AA99AA" isValidUKPostcode:UKPostcodeValidatorRequireSpace], @"Passed AA99AA (UKPostcodeValidatorRequireSpace)");
    XCTAssertFalse([@"AA999AA" isValidUKPostcode:UKPostcodeValidatorRequireSpace], @"Passed AA999AA (UKPostcodeValidatorRequireSpace)");

    XCTAssertFalse([@"AA9A9AA " isValidUKPostcode:UKPostcodeValidatorRequireSpace], @"Passed AA9A9AA  (UKPostcodeValidatorRequireSpace)");
    XCTAssertFalse([@"A9A9AA  " isValidUKPostcode:UKPostcodeValidatorRequireSpace], @"Passed A9A9AA   (UKPostcodeValidatorRequireSpace)");
    XCTAssertFalse([@"A99AA   " isValidUKPostcode:UKPostcodeValidatorRequireSpace], @"Passed A99AA    (UKPostcodeValidatorRequireSpace)");
    XCTAssertFalse([@"A999AA  " isValidUKPostcode:UKPostcodeValidatorRequireSpace], @"Passed A999AA   (UKPostcodeValidatorRequireSpace)");
    XCTAssertFalse([@"AA99AA  " isValidUKPostcode:UKPostcodeValidatorRequireSpace], @"Passed AA99AA   (UKPostcodeValidatorRequireSpace)");
    XCTAssertFalse([@"AA999AA " isValidUKPostcode:UKPostcodeValidatorRequireSpace], @"Passed AA999AA  (UKPostcodeValidatorRequireSpace)");

    XCTAssertTrue([@"AA9A9AA" isValidUKPostcode:UKPostcodeValidatorRelaxed], @"Failed AA9A9AA (UKPostcodeValidatorRelaxed)");
    XCTAssertTrue([@"A9A9AA" isValidUKPostcode:UKPostcodeValidatorRelaxed], @"Failed A9A9AA (UKPostcodeValidatorRelaxed)");
    XCTAssertTrue([@"A99AA" isValidUKPostcode:UKPostcodeValidatorRelaxed], @"Failed A99AA (UKPostcodeValidatorRelaxed)");
    XCTAssertTrue([@"A999AA" isValidUKPostcode:UKPostcodeValidatorRelaxed], @"Failed A999AA (UKPostcodeValidatorRelaxed)");
    XCTAssertTrue([@"AA99AA" isValidUKPostcode:UKPostcodeValidatorRelaxed], @"Failed AA99AA (UKPostcodeValidatorRelaxed)");
    XCTAssertTrue([@"AA999AA" isValidUKPostcode:UKPostcodeValidatorRelaxed], @"Failed AA999AA (UKPostcodeValidatorRelaxed)");

    XCTAssertTrue([@"AA9A 9AA" isValidUKPostcode:UKPostcodeValidatorRelaxed], @"Failed AA9A 9AA (UKPostcodeValidatorRelaxed)");
    XCTAssertTrue([@"AA9A9AA " isValidUKPostcode:UKPostcodeValidatorRelaxed], @"Failed AA9A9AA (UKPostcodeValidatorRelaxed)");

    XCTAssertTrue([@"A9A9AA  " isValidUKPostcode:UKPostcodeValidatorRelaxed], @"Failed A9A9AA (UKPostcodeValidatorRelaxed)");
    XCTAssertTrue([@"A9A  9AA" isValidUKPostcode:UKPostcodeValidatorRelaxed], @"Failed A9A  9AA (UKPostcodeValidatorRelaxed)");
    XCTAssertTrue([@"A9A 9AA " isValidUKPostcode:UKPostcodeValidatorRelaxed], @"Failed A9A 9AA  (UKPostcodeValidatorRelaxed)");

    XCTAssertTrue([@"A99AA   " isValidUKPostcode:UKPostcodeValidatorRelaxed], @"Failed A99AA (UKPostcodeValidatorRelaxed)");
    XCTAssertTrue([@"A9   9AA" isValidUKPostcode:UKPostcodeValidatorRelaxed], @"Failed A9   9AA  (UKPostcodeValidatorRelaxed)");
    XCTAssertTrue([@"A9  9AA " isValidUKPostcode:UKPostcodeValidatorRelaxed], @"Failed A9  9AA  (UKPostcodeValidatorRelaxed)");

    XCTAssertTrue([@"A999AA  " isValidUKPostcode:UKPostcodeValidatorRelaxed], @"Failed A999AA (UKPostcodeValidatorRelaxed)");
    XCTAssertTrue([@"A99  9AA" isValidUKPostcode:UKPostcodeValidatorRelaxed], @"Failed A99  9AA (UKPostcodeValidatorRelaxed)");
    XCTAssertTrue([@"A99 9AA " isValidUKPostcode:UKPostcodeValidatorRelaxed], @"Failed A99 9AA  (UKPostcodeValidatorRelaxed)");

    XCTAssertTrue([@"AA99AA  " isValidUKPostcode:UKPostcodeValidatorRelaxed], @"Failed AA99AA (UKPostcodeValidatorRelaxed)");
    XCTAssertTrue([@"AA9  9AA" isValidUKPostcode:UKPostcodeValidatorRelaxed], @"Failed AA9  9AA (UKPostcodeValidatorRelaxed)");
    XCTAssertTrue([@"AA9 9AA " isValidUKPostcode:UKPostcodeValidatorRelaxed], @"Failed AA9 9AA  (UKPostcodeValidatorRelaxed)");

    XCTAssertTrue([@"AA999AA " isValidUKPostcode:UKPostcodeValidatorRelaxed], @"Failed AA999AA (UKPostcodeValidatorRelaxed)");
    XCTAssertTrue([@"AA99 9AA" isValidUKPostcode:UKPostcodeValidatorRelaxed], @"Failed AA99 9AA (UKPostcodeValidatorRelaxed)");

    XCTAssertFalse([@"12345678" isValidUKPostcode:UKPostcodeValidatorRequireSpace], @"Passed 12345678 (UKPostcodeValidatorRequireSpace)");
    XCTAssertFalse([@"12345678" isValidUKPostcode:UKPostcodeValidatorRelaxed], @"Passed 12345678 (UKPostcodeValidatorRelaxed)");
    XCTAssertFalse([@"123 5678" isValidUKPostcode:UKPostcodeValidatorRequireSpace], @"Passed 123 5678 (UKPostcodeValidatorRequireSpace)");
    XCTAssertFalse([@"123 5678" isValidUKPostcode:UKPostcodeValidatorRelaxed], @"Passed 123 5678 (UKPostcodeValidatorRelaxed)");

    XCTAssertFalse([@"ABCDEFGH" isValidUKPostcode:UKPostcodeValidatorRequireSpace], @"Passed ABCDEFGH (UKPostcodeValidatorRequireSpace)");
    XCTAssertFalse([@"ABCDEFGH" isValidUKPostcode:UKPostcodeValidatorRelaxed], @"Passed ABCDEFGH (UKPostcodeValidatorRelaxed)");
    XCTAssertFalse([@"ABC EFGH" isValidUKPostcode:UKPostcodeValidatorRequireSpace], @"Passed ABC EFGH (UKPostcodeValidatorRequireSpace)");
    XCTAssertFalse([@"ABC EFGH" isValidUKPostcode:UKPostcodeValidatorRelaxed], @"Passed ABC EFGH (UKPostcodeValidatorRelaxed)");

    XCTAssertFalse([@"9AA 9AA" isValidUKPostcode:UKPostcodeValidatorRequireSpace], @"Passed 9AA 9AA (UKPostcodeValidatorRequireSpace)");
    XCTAssertFalse([@"9AA9AA" isValidUKPostcode:UKPostcodeValidatorRelaxed], @"Passed 9AA9AA (UKPostcodeValidatorRelaxed)");
    XCTAssertFalse([@"A99 9AAA" isValidUKPostcode:UKPostcodeValidatorRequireSpace], @"Passed A99 9AAA (UKPostcodeValidatorRequireSpace)");
    XCTAssertFalse([@"A999AAA" isValidUKPostcode:UKPostcodeValidatorRelaxed], @"Passed A999AAA (UKPostcodeValidatorRelaxed)");
}

@end

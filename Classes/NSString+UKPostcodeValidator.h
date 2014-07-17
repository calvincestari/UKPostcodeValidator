//
//  NSString+UKPostcodeValidator.h
//
//
//  Created by Calvin Cestari on 2/18/2014.
//  Copyright (c) 2014. All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSUInteger const MAX_UK_POSTCODE_CHARACTERS;

typedef NS_OPTIONS(NSInteger, UKPostcodeValidatorOptions) {
    UKPostcodeValidatorRelaxed = 0, // this allows no spaces or more than 1 space where required or trailing
    UKPostcodeValidatorRequireSpace = 1 << 0,
};

// This NSString category provides a convenience method to validate whether the contents match a UK postcode format.
@interface NSString (UKPostcodeValidator)

/** Call this method to check whether the contents match a valid UK postcode format.
 @returns YES if the contents are valid. NO if they don't match any known UK postcode format.
 */
- (BOOL)isValidUKPostcode:(UKPostcodeValidatorOptions)options __attribute__((deprecated("use -[isValidUKPostcodeFormat:] instead")));
- (BOOL)isValidUKPostcodeFormat:(UKPostcodeValidatorOptions)options;

@end

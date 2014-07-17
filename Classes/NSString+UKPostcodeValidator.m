//
//  NSString+UKPostcodeValidator.m
//
//
//  Created by Calvin Cestari on 2/18/2014.
//  Copyright (c) 2014. All rights reserved.
//

#import "NSString+UKPostcodeValidator.h"

NSUInteger const MAX_UK_POSTCODE_CHARACTERS = 8;

@implementation NSString (UKPostcodeValidator)

- (BOOL)isValidUKPostcode:(UKPostcodeValidatorOptions)options {
    return [self isValidUKPostcodeFormat:options];
}

- (BOOL)isValidUKPostcodeFormat:(UKPostcodeValidatorOptions)options {
    /** The following is a list of valid UK postcode formats; http://en.wikipedia.org/wiki/Postcodes_in_the_United_Kingdom#Formatting

     Format         Coverage                                    Example
     1. AA9A 9AA    WC postcode area; EC1–EC4, NW1W, SE1P, SW1  EC1A 1BB
     2. A9A 9AA     E1W, N1C, N1P, W1                           W1A 1HQ
     3. A9 9AA      B, E, G, L, M, N, S, W                      M1 1AA
     4. A99 9AA                                                 B33 8TH
     5. AA9 9AA     All other postcodes                         CR2 6XH
     6. AA99 9AA                                                DN55 1PT

     */

    NSString *spaceMatchingRule = @"*?";
    if (options & UKPostcodeValidatorRequireSpace) {
        spaceMatchingRule = @"+?";
    }

    NSDictionary *validFormats = @{@"AA9A 9AA": [NSString stringWithFormat:@"^([a-z]{2})(\\d)([a-z])(\\s%@)(\\d)([a-z]{2})(\\s*?)$", spaceMatchingRule],
                                   @"A9A 9AA": [NSString stringWithFormat:@"^([a-z])(\\d)([a-z])(\\s%@)(\\d)([a-z]{2})(\\s*?)$", spaceMatchingRule],
                                   @"A9 9AA": [NSString stringWithFormat:@"^([a-z])(\\d)(\\s%@)(\\d)([a-z]{2})(\\s*?)$", spaceMatchingRule],
                                   @"A99 9AA": [NSString stringWithFormat:@"^([a-z])(\\d{2})(\\s%@)(\\d)([a-z]{2})(\\s*?)$", spaceMatchingRule],
                                   @"AA9 9AA": [NSString stringWithFormat:@"^([a-z]{2})(\\d)(\\s%@)(\\d)([a-z]{2})(\\s*?)$", spaceMatchingRule],
                                   @"AA99 9AA": [NSString stringWithFormat:@"^([a-z]{2})(\\d{2})(\\s%@)(\\d)([a-z]{2})(\\s*?)$", spaceMatchingRule]};

    __block BOOL isValid = NO;
    [validFormats enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
        NSError *error = nil;
        NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:[validFormats valueForKey:key] options:NSRegularExpressionCaseInsensitive error:&error];

        NSAssert(nil == error, ([NSString stringWithFormat:@"Failed to create %@ format regex", key]));

        if ([regex numberOfMatchesInString:self options:NSMatchingReportCompletion range:NSMakeRange(0, self.length)]) {
            isValid = *stop = YES;
        }
    }];

    return isValid;
}

@end

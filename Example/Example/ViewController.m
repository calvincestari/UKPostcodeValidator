//
//  ViewController.m
//  Example
//
//  Created by Calvin Cestari on 2014-03-11.
//  Copyright (c) 2014 Calvin Cestari. All rights reserved.
//

#import <UKPostcodeValidator/NSString+UKPostcodeValidator.h>

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>

@property (nonatomic, weak) IBOutlet UITextField *inputTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.inputTextField addTarget:self action:@selector(textFieldDidChange:) forControlEvents:UIControlEventEditingChanged];
}

#pragma mark - UITextFieldDelegate

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    return ((textField.text.length - range.length + string.length) <= MAX_UK_POSTCODE_CHARACTERS);
}

- (void)textFieldDidChange:(id)sender {
    BOOL isValid = [self.inputTextField.text isValidUKPostcode:UKPostcodeValidatorRelaxed];

    UIColor *validityColor = isValid ? [UIColor blackColor] : [UIColor redColor];
    self.inputTextField.textColor = validityColor;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];

    return YES;
}

@end

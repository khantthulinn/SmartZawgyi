//
//  ViewController.m
//  SmartZawgyiExample
//
//  Created by Khant Thu Linn on 12/6/16.
//  Copyright © 2016 K&Y. All rights reserved.
//

#import "ViewController.h"
#import <SmartZawgyi/SmartZawgyi.h>

@interface ViewController () <UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UITextField *txtInput;
@property (strong, nonatomic) Convert *convert;
@property (strong, nonatomic) NSString *inputStr;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.convert = [[Convert alloc] init];
    [self.txtInput addTarget:self
                  action:@selector(textFieldDidChange:)
        forControlEvents:UIControlEventEditingChanged];

    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITextFieldDelegate

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    self.inputStr = string;
    return YES;
}

- (void)textFieldDidChange:(UITextField *)textField {
    if (!self.inputStr || self.inputStr.length == 0)
        return;
    
    textField.text = [self.convert convertExistingString:textField.text withInputCharacter:[self.inputStr characterAtIndex:0]];
}

@end

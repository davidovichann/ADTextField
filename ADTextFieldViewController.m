//
//  ADTextFieldViewController.m
//  ADTextField
//
//  Created by User on 27.11.2018.
//  Copyright © 2018 User. All rights reserved.
//

#import "ADTextFieldViewController.h"

@interface ADTextFieldViewController ()

@property (nonatomic, strong) UITextField *adTextField;

@end

@implementation ADTextFieldViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	self.adTextField.frame = CGRectMake(10.0, 100.0, 100.0, 40.0);
	[self.view addSubview:self.adTextField];
	[self setText:@"Hanna"];
	[self setAttributedText:[[NSAttributedString alloc] initWithString:@"Davidovich" attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:30.0]}]];
	[self setPlacholder:@"ASA"];
}

#pragma mark - Accessing the Text Attributes
- (void)setText:(NSString *)text {
	self.adTextField.text = text;
}

- (void)setAttributedText:(NSAttributedString *)attributedText {
	self.adTextField.attributedText = attributedText;
}

- (void)setPlacholder:(NSString *)placeholder {
	self.adTextField.placeholder = placeholder;
}

- (UITextField *)adTextField {
	if (!_adTextField) {
		_adTextField = [[UITextField alloc] init];
	}
	return _adTextField;
}

@end

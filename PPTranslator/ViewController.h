//
//  ViewController.h
//  PPTranslator
//
//  Created by StarNet on 10/20/15.
//  Copyright © 2015 StarNet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic, weak) IBOutlet UITextField* textField;
@property (nonatomic, weak) IBOutlet UILabel* label;

@end


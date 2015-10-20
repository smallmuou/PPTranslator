//
//  ViewController.m
//  PPTranslator
//
//  Created by StarNet on 10/20/15.
//  Copyright © 2015 StarNet. All rights reserved.
//

#import "ViewController.h"
#import "PPTranslator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onTranslator) name:UITextFieldTextDidChangeNotification object:nil];
}

- (void)onTranslator {
    NSLog(@"text=%@", self.textField.text);
    self.label.text = [self.textField.text translatorToPinYinFirstAscii];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

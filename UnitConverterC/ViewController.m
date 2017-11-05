//
//  ViewController.m
//  UnitConverterC
//
//  Created by Joo Hee Kim on 2015. 10. 1..
//  Copyright © 2015년 jhk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)convertTemp:(id)sender {
    double celsius;
    double fahrenheit;
    NSString *resultString;
    double temp = [_tempText.text doubleValue];
    
    if(((UIButton *)sender).tag==1){
        fahrenheit = temp;
        celsius = (fahrenheit - 32) / 1.8;
        
        resultString = [[NSString alloc]
                                  initWithFormat: @"화씨 %.2f -> 섭씨 %.2f", fahrenheit, celsius];
        _resultLabel.text = resultString;
    }
    else {
        celsius = temp;
        fahrenheit = celsius * 1.8 + 32;
        
        resultString = [[NSString alloc]
                                  initWithFormat: @"섭씨 %.2f -> 화씨 %.2f", celsius, fahrenheit];
        _resultLabel.text = resultString;
    }
}

- (IBAction)textFieldReturn:(id)sender {
    [sender resignFirstResponder];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [[event allTouches] anyObject];
    if ([_tempText isFirstResponder] && [touch view] != _tempText) {
        [_tempText resignFirstResponder];
    }
    [super touchesBegan:touches withEvent:event];
}
@end
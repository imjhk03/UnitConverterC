//
//  ViewController.h
//  UnitConverterC
//
//  Created by Joo Hee Kim on 2015. 10. 1..
//  Copyright © 2015년 jhk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *tempText;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

- (IBAction)convertTemp:(id)sender;
- (IBAction)textFieldReturn:(id)sender;

@end


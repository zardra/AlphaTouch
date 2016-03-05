//
//  ViewController.h
//  AlphaTouch
//
//  Created by Liz Borchardt on 3/4/16.
//  Copyright © 2016 Elizabeth Borchardt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) UIButton *fiftyPercentButton;
@property (weak, nonatomic) UIButton *hundredPercentButton;

- (void)buttonPressed:(UIButton *)sender;

@end


//
//  ViewController.m
//  AlphaTouch
//
//  Created by Liz Borchardt on 3/4/16.
//  Copyright © 2016 Elizabeth Borchardt. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)loadView {
    CGRect viewRect = [[UIScreen mainScreen] bounds];
    UIView *view = [[UIView alloc] initWithFrame:viewRect];

    self.view = view;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor yellowColor];
    
    self.fiftyPercentButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [self.fiftyPercentButton setTitle:@"Make 50%" forState:UIControlStateNormal];
    self.fiftyPercentButton.frame = CGRectMake(100, 100, 100, 44);
    self.fiftyPercentButton.backgroundColor = [UIColor whiteColor];
    [self.fiftyPercentButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.fiftyPercentButton];
    
    self.hundredPercentButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [self.hundredPercentButton setTitle:@"Make 100%" forState:UIControlStateNormal];
    self.hundredPercentButton.frame = CGRectMake(100, 300, 100, 44);
    self.hundredPercentButton.backgroundColor = [UIColor whiteColor];
    [self.hundredPercentButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.hundredPercentButton];
    
    UILabel *firstLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 30, 300, 44)];
    firstLabel.text = @"Hello, welcome to my app!";
    
    [self.view addSubview:firstLabel];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"Started touching the screen.");
}

- (void)buttonPressed:(UIButton *)sender {
    NSLog(@"Button pressed, sender: %@", sender.titleLabel);
    
    if ([sender isEqual:self.fiftyPercentButton]) {
        self.view.alpha = 0.5;
    } else {
        self.view.alpha = 1.0;
    }
}

@end

//
//  ViewController.m
//  LabelTextChangeAnimation
//
//  Created by Vincent on 23/06/2017.
//  Copyright © 2017 zssr. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (nonatomic) NSInteger num;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.label.text = @"0";
}

- (IBAction)animate:(UIButton *)sender {
    [self animateTextChange:0.2];
    self.label.text = [NSString stringWithFormat:@"%zd", ++self.num % 10];
}

- (void)animateTextChange:(CFTimeInterval)duration {
    CATransition *trans = [[CATransition alloc] init];
    trans.type = kCATransitionPush;
    trans.subtype = kCATransitionFromBottom;
    trans.duration = duration;
    trans.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
    [self.label.layer addAnimation:trans forKey:kCATransitionPush];
}

@end

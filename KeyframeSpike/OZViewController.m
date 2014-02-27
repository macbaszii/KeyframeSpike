//
//  OZViewController.m
//  KeyframeSpike
//
//  Created by Kiattisak Anoochitarom on 2/26/2557 BE.
//  Copyright (c) 2557 Kiattisak Anoochitarom. All rights reserved.
//

#import "OZViewController.h"

@interface OZViewController ()

@property (nonatomic, weak) IBOutlet UIButton *animateButton;
@property (nonatomic, weak) IBOutlet UIImageView *logoImageView;

@end

@implementation OZViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)animated:(id)sender {
    CGPoint beginPoint = self.logoImageView.center;
    
    [UIView animateWithDuration:2.0
                          delay:0
         usingSpringWithDamping:0.1
          initialSpringVelocity:30.0
                        options:UIViewAnimationOptionCurveEaseOut
                     animations:^{
                         self.logoImageView.center = CGPointMake(200, 300);
                     }
                     completion:^(BOOL finished) {
                         self.logoImageView.center = beginPoint;
                     }];
//    self.animateButton.enabled = NO;
//    
//    [UIView animateKeyframesWithDuration:4.0
//                   delay:0
//                 options:UIViewKeyframeAnimationOptionCalculationModeCubic
//              animations:^{
//                  [UIView addKeyframeWithRelativeStartTime:0
//                                          relativeDuration:1/3.0
//                                                animations:^{
//                                                    self.logoImageView.transform = CGAffineTransformMakeRotation(2.0 * M_PI / 3.0);
//                                                }];
//                  
//                  [UIView addKeyframeWithRelativeStartTime:1/3.0
//                                          relativeDuration:1/3.0
//                                                animations:^{
//                                                    self.logoImageView.transform = CGAffineTransformMakeRotation(4.0 * M_PI / 3.0);
//                                                }];
//                  
//                  [UIView addKeyframeWithRelativeStartTime:2/3.0
//                                          relativeDuration:1/3.0
//                                                animations:^{
//                                                    self.logoImageView.transform = CGAffineTransformIdentity;
//                                                }];
//                  
//              }
//              completion:^(BOOL finished) {
//                  self.animateButton.enabled = YES;
//              }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

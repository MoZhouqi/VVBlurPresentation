//
//  KMBlurPresentationViewController.m
//  VVBlurPresentation
//
//  Created by Zhouqi Mo on 1/5/15.
//  Copyright (c) 2015 OneV's Den. All rights reserved.
//

#import "KMBlurPresentationViewController.h"

@interface KMBlurPresentationViewController ()

@end

@implementation KMBlurPresentationViewController

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.modalPresentationStyle = UIModalPresentationOverFullScreen;
    }
    return self;
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.modalPresentationStyle = UIModalPresentationOverFullScreen;
    }
    return self;
}

-(UIBlurEffectStyle)blurStyle {
    if (!_blurStyle) {
        _blurStyle = UIBlurEffectStyleLight;
    }
    return _blurStyle;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor clearColor];
    
    UIBlurEffect *blurEffect = [UIBlurEffect effectWithStyle:self.blurStyle];
    UIVisualEffectView *blurEffectView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
    [blurEffectView setFrame:self.view.bounds];
    [self.view insertSubview:blurEffectView atIndex:0];

}




@end

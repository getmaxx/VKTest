//
//  ViewController.m
//  NSURLSessionTest
//
//  Created by Игорь Веденеев on 26.09.15.
//  Copyright © 2015 Игорь Веденеев. All rights reserved.
//

#import "ViewController.h"
//#import "IVModel.h"
#import "IVAccessToken.h"
#import "IVVKLoginViewController.h"
#import "IVUser.h"
#import "IVPostSender.h"

@interface ViewController ()

@end

static NSString* const kImageURL = @"http://cs623329.vk.me/v623329702/49ffe/E5k-ABxNcm0.jpg";

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    
        [[IVPostSender sharedSender] authorizeUser:^(IVUser *user) {
            NSLog(@"ez katka");
        }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    NSLog(@"DEALLOC MAIN VC");
    //[super dealloc];
}

- (NSString*) description {
    return @"MAIN VC";
}

@end

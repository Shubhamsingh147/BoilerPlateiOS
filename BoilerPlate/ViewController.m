//
//  ViewController.m
//  BoilerPlate
//
//  Created by Shubham Singh on 25/06/15.
//  Copyright (c) 2015 SHUBHAM. All rights reserved.
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

-(IBAction)SignUp:(id)sender{
    [[NSUserDefaults standardUserDefaults] setObject:@"http://121.243.23.4/HTML5/" forKey:@"url"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}
-(IBAction)SignIn:(id)sender{
    [[NSUserDefaults standardUserDefaults] setObject:@"http://122.160.96.33/TradeWeb35/" forKey:@"url"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}
-(IBAction)Browse:(id)sender{
    [[NSUserDefaults standardUserDefaults] setObject:@"http://dp.maverickgroup.in/" forKey:@"url"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

@end

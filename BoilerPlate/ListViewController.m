//
//  ListViewController.m
//  BoilerPlate
//
//  Created by Shubham Singh on 26/06/15.
//  Copyright (c) 2015 SHUBHAM. All rights reserved.
//

#import "ListViewController.h"
#import "CustomTableViewCell.h"
@interface ListViewController ()

@end

@implementation ListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 6;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [[UIScreen mainScreen] bounds].size.height/3;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CustomTableViewCell *cell = (CustomTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"SimpleTableCell"];
    
    if (cell == nil) {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"CustomTableViewCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    NSString *imageName = [@"room" stringByAppendingString:[NSString stringWithFormat:@"%ld" , [indexPath row] + 1]];
    [cell.customImage setImage:[UIImage imageNamed: imageName]];
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    // This will create a "invisible" footer
    return 0.01f;
}

@end

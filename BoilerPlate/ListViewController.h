//
//  ListViewController.h
//  BoilerPlate
//
//  Created by Shubham Singh on 26/06/15.
//  Copyright (c) 2015 SHUBHAM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ListViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, unsafe_unretained) IBOutlet UITableView *tableView;
@end

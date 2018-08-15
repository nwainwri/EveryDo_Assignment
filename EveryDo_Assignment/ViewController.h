//
//  ViewController.h
//  EveryDo_Assignment
//
//  Created by Nathan Wainwright on 2018-08-14.
//  Copyright © 2018 Nathan Wainwright. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddNewTaskProtocol.h"

@interface ViewController : UIViewController <UITableViewDataSource, AddNewTaskProtocol>

@property NSArray *allTasks;




@end


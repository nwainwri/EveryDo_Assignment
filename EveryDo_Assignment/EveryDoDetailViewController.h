//
//  EveryDoDetailViewController.h
//  EveryDo_Assignment
//
//  Created by Nathan Wainwright on 2018-08-14.
//  Copyright © 2018 Nathan Wainwright. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ToDoItem;

@interface EveryDoDetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *EveryDoDetailTaskTitle;
@property (weak, nonatomic) IBOutlet UILabel *EveryDoDetailTaskDescription;
@property (weak, nonatomic) IBOutlet UILabel *EveryDoDetailTaskStatus;
@property (weak, nonatomic) IBOutlet UILabel *EveryDoDetailTaskPriority;

@property (strong, nonatomic) ToDoItem *currentItem;

@end

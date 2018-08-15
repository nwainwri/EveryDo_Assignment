//
//  AddTaskViewController.h
//  EveryDo_Assignment
//
//  Created by Nathan Wainwright on 2018-08-14.
//  Copyright © 2018 Nathan Wainwright. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddNewTaskProtocol.h"
@class ToDoItem;

@interface AddTaskViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *EveryDoAddTaskTitle;
@property (weak, nonatomic) IBOutlet UITextField *EveryDoAddTaskPriority;
@property (weak, nonatomic) IBOutlet UITextField *EveryDoAddTaskDescription;
@property (weak, nonatomic) IBOutlet UIButton *EveryDoTaskAddButtonPressed;

@property id <AddNewTaskProtocol> delegate;



@end

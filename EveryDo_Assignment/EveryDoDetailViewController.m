//
//  EveryDoDetailViewController.m
//  EveryDo_Assignment
//
//  Created by Nathan Wainwright on 2018-08-14.
//  Copyright © 2018 Nathan Wainwright. All rights reserved.
//

#import "EveryDoDetailViewController.h"
#import "ToDoItem.h"
@interface EveryDoDetailViewController ()




@end

@implementation EveryDoDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.EveryDoDetailTaskTitle.text = self.currentItem.taskTitle;
    self.EveryDoDetailTaskDescription.text = self.currentItem.taskItemDescription;
    self.EveryDoDetailTaskStatus.text = @(self.currentItem.taskItemStatus).stringValue;
    self.EveryDoDetailTaskPriority.text = self.currentItem.taskItemPriority;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

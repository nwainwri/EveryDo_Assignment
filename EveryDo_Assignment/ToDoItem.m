//
//  ToDoItem.m
//  EveryDo_Assignment
//
//  Created by Nathan Wainwright on 2018-08-14.
//  Copyright © 2018 Nathan Wainwright. All rights reserved.
//

#import "ToDoItem.h"

@implementation ToDoItem

- (instancetype)initWithTaskTitle: (NSString *)title andDescription:(NSString *)description alsoThePriority:(int)priority andFinallyTheStatus:(BOOL)status{
    self = [super init];
    if (self) {
        _taskTitle = title;
        _taskItemDescription = description;
        _taskItemPriority = priority;
        _taskItemStatus = status;
    }
    return self;
}


//
//@property NSString *taskTitle;
//@property NSString *taskItemDescription;
//@property int taskItemPriority;
//@property BOOL taskItemStatus;
@end

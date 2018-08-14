//
//  ToDoItem.h
//  EveryDo_Assignment
//
//  Created by Nathan Wainwright on 2018-08-14.
//  Copyright © 2018 Nathan Wainwright. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToDoItem : NSObject

@property NSString *taskTitle;
@property NSString *taskItemDescription;
@property int taskItemPriority;
@property BOOL taskItemStatus;


- (instancetype)initWithTaskTitle: (NSString *)title andDescription:(NSString *)description alsoThePriority:(int)priority andFinallyTheStatus:(BOOL)status;



@end

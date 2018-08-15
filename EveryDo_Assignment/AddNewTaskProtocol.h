//
//  AddNewTaskProtocol.h
//  EveryDo_Assignment
//
//  Created by Nathan Wainwright on 2018-08-14.
//  Copyright © 2018 Nathan Wainwright. All rights reserved.
//

#ifndef AddNewTaskProtocol_h
#define AddNewTaskProtocol_h

#import "ToDoItem.h"

@protocol AddNewTaskProtocol

- (void)addNewTask:(ToDoItem *)item;

@end

#endif /* AddNewTaskProtocol_h */

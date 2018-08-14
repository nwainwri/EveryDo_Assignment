//
//  ViewController.m
//  EveryDo_Assignment
//
//  Created by Nathan Wainwright on 2018-08-14.
//  Copyright © 2018 Nathan Wainwright. All rights reserved.
//

#import "ViewController.h"
#import "ToDoItem.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ToDoItem *firstItem = [[ToDoItem alloc] initWithTaskTitle:@"First One here" andDescription:@"This is a long item?" alsoThePriority:1 andFinallyTheStatus:NO];
    ToDoItem *secondItem = [[ToDoItem alloc] initWithTaskTitle:@"Second One Here" andDescription:@"I should fill with Lorum Ipsum" alsoThePriority:3 andFinallyTheStatus:YES];
    ToDoItem *thirdItem = [[ToDoItem alloc] initWithTaskTitle:@"third One Here" andDescription:@"I should fill with Lorum Ipsum" alsoThePriority:2 andFinallyTheStatus:NO];
    ToDoItem *fourthItem = [[ToDoItem alloc] initWithTaskTitle:@"fourth One Here" andDescription:@"I should fill with Lorum Ipsum" alsoThePriority:1 andFinallyTheStatus:NO];
    ToDoItem *fifthItem = [[ToDoItem alloc] initWithTaskTitle:@"FIFTH One Here" andDescription:@"I should fill with Lorum Ipsum" alsoThePriority:2 andFinallyTheStatus:YES];
    ToDoItem *sixthItem = [[ToDoItem alloc] initWithTaskTitle:@"sixTH One Here" andDescription:@"I should fill with Lorum Ipsum" alsoThePriority:1 andFinallyTheStatus:NO];
    ToDoItem *seventhItem = [[ToDoItem alloc] initWithTaskTitle:@"SEVenth One Here" andDescription:@"I should fill with Lorum Ipsum" alsoThePriority:3 andFinallyTheStatus:YES];
    ToDoItem *eightItem = [[ToDoItem alloc] initWithTaskTitle:@"8 One Here" andDescription:@"I should fill with Lorum Ipsum" alsoThePriority:3 andFinallyTheStatus:NO];
    ToDoItem *ninthItem = [[ToDoItem alloc] initWithTaskTitle:@"NINE NINE One Here" andDescription:@"I should fill with Lorum Ipsum" alsoThePriority:3 andFinallyTheStatus:YES];

    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

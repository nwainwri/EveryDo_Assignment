//
//  ViewController.m
//  EveryDo_Assignment
//
//  Created by Nathan Wainwright on 2018-08-14.
//  Copyright © 2018 Nathan Wainwright. All rights reserved.
//

#import "ViewController.h"
#import "ToDoItem.h"
#import "EveryDoCellClass.h"
#import "EveryDoDetailViewController.h"
#import "AddTaskViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *EveryDoTableViewer;


-(void) sortAndReload;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ToDoItem *firstItem = [[ToDoItem alloc] initWithTaskTitle:@"First One here" andDescription:@"This is a long item?" alsoThePriority:@"1" andFinallyTheStatus:NO];
    ToDoItem *secondItem = [[ToDoItem alloc] initWithTaskTitle:@"Second One Here" andDescription:@"I should fill with Lorum Ipsum" alsoThePriority:@"3" andFinallyTheStatus:YES];
    ToDoItem *thirdItem = [[ToDoItem alloc] initWithTaskTitle:@"third One Here" andDescription:@"I should fill with Lorum Ipsum" alsoThePriority:@"2" andFinallyTheStatus:NO];
    ToDoItem *fourthItem = [[ToDoItem alloc] initWithTaskTitle:@"fourth One Here" andDescription:@"I should fill with Lorum Ipsum" alsoThePriority:@"1" andFinallyTheStatus:NO];
    ToDoItem *fifthItem = [[ToDoItem alloc] initWithTaskTitle:@"FIFTH One Here" andDescription:@"I should fill with Lorum Ipsum" alsoThePriority:@"2" andFinallyTheStatus:YES];
    ToDoItem *sixthItem = [[ToDoItem alloc] initWithTaskTitle:@"sixTH One Here" andDescription:@"I should fill with Lorum Ipsum" alsoThePriority:@"1" andFinallyTheStatus:NO];
    ToDoItem *seventhItem = [[ToDoItem alloc] initWithTaskTitle:@"SEVenth One Here" andDescription:@"I should fill with Lorum Ipsum" alsoThePriority:@"3" andFinallyTheStatus:YES];
    ToDoItem *eightItem = [[ToDoItem alloc] initWithTaskTitle:@"8 One Here" andDescription:@"I should fill with Lorum Ipsum" alsoThePriority:@"3" andFinallyTheStatus:NO];
    ToDoItem *ninthItem = [[ToDoItem alloc] initWithTaskTitle:@"NINE NINE One Here" andDescription:@"I should fill with Lorum Ipsum" alsoThePriority:@"3" andFinallyTheStatus:YES];
    self.allTasks = @[firstItem, secondItem, thirdItem, fourthItem, fifthItem, sixthItem, seventhItem, eightItem, ninthItem];
    
    self.allTasks =  [self.allTasks sortedArrayUsingComparator:^NSComparisonResult(ToDoItem*  _Nonnull obj1, ToDoItem*  _Nonnull obj2) {
        return obj1.taskItemStatus && !obj2.taskItemStatus;
    }];
    

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (IBAction)markTaskDoneSwipeGesture:(UISwipeGestureRecognizer *)sender {
    CGPoint currentSpot = [sender locationInView:self.EveryDoTableViewer];
    NSIndexPath *currentPick = [self.EveryDoTableViewer indexPathForRowAtPoint:currentSpot];
    self.allTasks[currentPick.row].taskItemStatus = !self.allTasks[currentPick.row].taskItemStatus;
    
    [self sortAndReload];    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.allTasks.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    EveryDoCellClass *cell = [tableView dequeueReusableCellWithIdentifier:@"everyDoCell" forIndexPath:indexPath];
    ToDoItem *currentItem = self.allTasks[indexPath.row];
    cell.taskItemCheckOff.text = @(currentItem.taskItemStatus).stringValue;
    cell.taskItemTitle.text = currentItem.taskTitle;
    cell.taskItemStatus.text = currentItem.taskItemPriority;
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"everyDoTaskDetailView"]){ // chekcs to ensure that it's going to rigth view controller
        EveryDoDetailViewController *detailView = segue.destinationViewController;
        ToDoItem *choiceTask = self.allTasks[self.EveryDoTableViewer.indexPathForSelectedRow.row];
        detailView.currentItem = choiceTask;
        
    } else if ([segue.identifier isEqualToString:@"addNewTaskScreen"]){
        AddTaskViewController *addView = segue.destinationViewController;
        addView.delegate = self;
        
    }
    
}

- (void)addNewTask:(ToDoItem *)item {
    // this is wwhere we will gather new task from add trask view.... and pass into
    self.allTasks = [self.allTasks arrayByAddingObject:item];
    // reload array here or in viewdidload?
    [self sortAndReload];
}

-(void) sortAndReload {
    self.allTasks =  [self.allTasks sortedArrayUsingComparator:^NSComparisonResult(ToDoItem*  _Nonnull obj1, ToDoItem*  _Nonnull obj2) {
        return obj1.taskItemStatus && !obj2.taskItemStatus;
    }];
    [self.EveryDoTableViewer reloadData];
}




@end

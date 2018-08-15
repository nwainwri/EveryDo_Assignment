//
//  AddTaskViewController.m
//  EveryDo_Assignment
//
//  Created by Nathan Wainwright on 2018-08-14.
//  Copyright © 2018 Nathan Wainwright. All rights reserved.
//

#import "AddTaskViewController.h"
#import "ToDoItem.h"


@interface AddTaskViewController ()

@end

@implementation AddTaskViewController 

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    @property (weak, nonatomic) IBOutlet UITextField *EveryDoAddTaskTitle;
//    @property (weak, nonatomic) IBOutlet UITextField *EveryDoAddTaskPriority;
//    @property (weak, nonatomic) IBOutlet UITextField *EveryDoAddTaskDescription;
//    @property (weak, nonatomic) IBOutlet UIButton *EveryDoTaskAddButtonPressed;
    
    
    [self.EveryDoTaskAddButtonPressed addTarget:self action:@selector(addButtonPressed:) forControlEvents:UIControlEventTouchUpInside];

    // Do any additional setup after loading the view.
}

-(void)addButtonPressed:(UIButton *)sender{
    ToDoItem *passBackItem = [[ToDoItem alloc] initWithTaskTitle:self.EveryDoAddTaskTitle.text andDescription:self.EveryDoAddTaskDescription.text alsoThePriority:self.EveryDoAddTaskPriority.text andFinallyTheStatus:NO];
    [self.delegate addNewTask:passBackItem];
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
    [self.navigationController popViewControllerAnimated:YES];
    
//    [self.navigationController popViewControllerAnimated:YES];
    //self.taskToPassBack = passBackItem;
    
   
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// every do, button press, send new object BACK to main table array view... then reload that array once it's loaded.

//    @property (weak, nonatomic) IBOutlet UIButton *EveryDoTaskAddButtonPressed;

// -(IBAction):(id)sender) ????



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

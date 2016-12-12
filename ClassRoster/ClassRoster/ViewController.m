//
//  ViewController.m
//  ClassRoster
//
//  Created by Corey Malek on 11/16/16.
//  Copyright © 2016 Corey Malek. All rights reserved.
//

#import "ViewController.h"
#import "StudentStore.h"

@interface ViewController () <UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *studentTable;





//Put outlets in here (always in @interface)
//Conform to protocols at interface level.


@end

@implementation ViewController
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [[[StudentStore shared] allStudents]count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"studentsGoHere"];
    cell.textLabel.text = [[StudentStore shared] allStudents];
    //what goes here...
    return cell;
}

- (void)viewDidLoad {
    [super viewDidLoad];
   

    
    NSArray *allStudents = [[StudentStore shared] allStudents];
    
    NSLog(@"%@", allStudents);
    
    //CREATE A NEW STUDENT TO SAVE
    Student *newStudent = [[Student alloc]initWithFirstName:@"Corey" lastName:@"Malek" email:@"corey@gmail.com"];
    [[StudentStore shared] add:newStudent];
    
    
    Student *newStudent2 = [[Student alloc]initWithFirstName:@"Erica" lastName:@"W" email:@"erica@codefellows.com"];
    [[StudentStore shared] add:newStudent2];
    
    
    Student *newStudent3 = [[Student alloc]initWithFirstName:@"John" lastName:@"S" email:@"john.s@codefellows.com"];
    [[StudentStore shared] add:newStudent3];
    
    
    Student *newStudent4 =  [[Student alloc]initWithFirstName:@"John" lastName:@"H" email:@"john.h@codefellows.com"];
    [[StudentStore shared] add:newStudent4];
    
    
    Student *newStudent5 = [[Student alloc]initWithFirstName:@"Filiz" lastName:@"K" email:@"filiz@gmail.com"];
    [[StudentStore shared] add:newStudent5];
    
   
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

//HOMEWORK:
// - CREATE A UI
// - MAKE TABLEVIEW, ADD TABLEVIEW CELLS, CONFORM TO THE PROTOCOL, ADD REQUIRED METHODS


@end

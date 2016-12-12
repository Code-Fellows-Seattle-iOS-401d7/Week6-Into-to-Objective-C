//
//  ViewController.m
//  MyClassRoster
//
//  Created by Rachael A Helsel on 11/16/16.
//  Copyright © 2016 Rachael A Helsel. All rights reserved.
//

#import "ViewController.h"
#import "StudentStore.h"
#import "Student.h"


@interface ViewController ()<UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *studentTableView;
@property (weak, nonatomic) NSArray *allStudents;

@end

@implementation ViewController

//DATA SOURCE

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *studentCell = [tableView dequeueReusableCellWithIdentifier:@"studentCell" forIndexPath:indexPath];
    
//    self.allStudents = [[StudentStore shared] allStudents];
//    
//    RosterCell *cell = [tableView dequeueReusableCellWithIdentifier:@"RosterCell"];
//
//    Student *currentStudent = [self.allStudents objectAtIndex:indexPath.row];
//    cell.nameLabel.text = currentStudent.firstName;
//    return cell;
    
    self.allStudents = [[StudentStore shared] allStudents];
    Student *currentStudent = [self.allStudents objectAtIndex:indexPath.row];
    studentCell.textLabel.text = currentStudent.firstName;
    studentCell.detailTextLabel.text = currentStudent.lastName;

    return studentCell;
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return [[[StudentStore shared] allStudents]count];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.studentTableView.dataSource = self;
    
    self.allStudents = [[StudentStore shared] allStudents];
    
    NSLog(@"%@", self.allStudents);
    
    
    
    //CREATE A NEW STUDENT TO SAVE
    
    Student *newStudent = [[Student alloc]initWithFirstName:@"Rae" lastName:@"Helsel" email:@"rahelsel@me.com"];
    
    [[StudentStore shared] add:newStudent];
    
    Student *nextStudent = [[Student alloc]initWithFirstName:@"Hon" lastName:@"Solo" email:@"theforce@gmail.com"];
    
    [[StudentStore shared] add:nextStudent];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

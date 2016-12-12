//
//  AddStudentViewController.m
//  ClassRoster
//
//  Created by Corey Malek on 11/17/16.
//  Copyright © 2016 Corey Malek. All rights reserved.
//

#import "AddStudentViewController.h"
#import "StudentStore.h"

@interface AddStudentViewController ()
@property (weak, nonatomic) IBOutlet UITextField *studentFirstName;


@property (weak, nonatomic) IBOutlet UITextField *studentLastName;


@property (weak, nonatomic) IBOutlet UITextField *studentEmail;
@end

@implementation AddStudentViewController


- (IBAction)studentSave:(id)sender {
}


- (IBAction)studentCancel:(id)sender {
    self.beingDismissed;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end

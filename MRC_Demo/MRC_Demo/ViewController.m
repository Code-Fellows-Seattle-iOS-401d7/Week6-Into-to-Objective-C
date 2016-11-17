//
//  ViewController.m
//  MRC_Demo
//
//  Created by Corey Malek on 11/15/16.
//  Copyright © 2016 Corey Malek. All rights reserved.
//

#import "ViewController.h"
#import "User.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSMutableDictionary *mutableDictionary = [[NSMutableDictionary alloc]init];{
    
    User *user1; {
        user1.name = @"Corey";
        user1.email = @"corey@gmail.com";
        [user1 retain];
        
    }
   
    User *user2; {
        user2.name = @"Michelle";
        user2.email = @"michelle@gmail.com";
        [user2 retain];
    }
    
    User *user3; {
        user3.name = @"Brittany";
        user3.email = @"brittany@gmail.com";
        [user3 retain];

    }
    
    User *user4; {
        user4.name = @"Brandon";
        user4.email = @"brandon@gmail.com";
        [user4 retain];
    }
    
    User *user5; {
        user5.name = @"Mike";
        user5.email = @"mike@gmail.com";
        [user5 retain];
    }
    
    
    
    
    mutableDictionary = @{user1.email: user1.name, user2.email: user2.name, user3.email: user3.name, user4.email: user4.name, user5.email: user5.name};
        
        
        NSLog(@"%@", mutableDictionary);
        
        [user1 release];
        [user2 release];
        [user3 release];
        [user4 release];
        [user5 release];
        [mutableDictionary release];

    }
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

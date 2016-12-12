//
//  ViewController.m
//  MyObjectiveCDemo
//
//  Created by Rachael A Helsel on 11/14/16.
//  Copyright © 2016 Rachael A Helsel. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

int gMoveNumber = 10;


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Person *testSubject = [[Person alloc] init];
    
    [testSubject setName:@"RaeRae"];
    
    NSString *name = [testSubject name];
    
    NSLog(@"%@", name);
    
    //instance of a type method
    [testSubject walk];
    
    //class method
    [Person sayHello];
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSString *)description{
    return @"This is a ViewController";
}


@end

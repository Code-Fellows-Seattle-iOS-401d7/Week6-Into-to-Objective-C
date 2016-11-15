//
//  ViewController.m
//  Objective-C_Day2
//
//  Created by Corey Malek on 11/15/16.
//  Copyright © 2016 Corey Malek. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    NSNumber *number1 = @123;
//    NSNumber *number2 = @321;
//    
//    if([number1 isEqualToNumber:number2]){
//        
//    }
//    
//    switch ([number1 compare:number2]) {
//        case NSOrderedSame:
//            NSLog(@"Values are equal");
//            break;
//        case NSOrderedAscending:
//            NSLog(@"Values are ascending");
//            break;
//        case NSOrderedDescending:
//            NSLog(@"Values are descending");
//        default:
//            break;
//    }
//    
//    
//    NSString *string = [NSString stringWithFormat:@"%@, %@", number1, number2];
//    
//    NSLog(@"%@", string);
//    
//    string = @"This is a new string";
//    
//    
//    
    
    
    NSString *string1 = @"one";
    NSString *string2 = @"two";
    NSString *string3 = @"three";
    
    NSNumber *number = @55;
    
    NSArray *array = @[string1, string2, string3];
    
    [array count];
    
    NSDictionary *dictionary = @{@"stringOne":string1, @"stringTwo":string2, @"stringThree":string3};
    
    
    NSString *otherString1 = dictionary[@"stringOne"];
    
    
    NSMutableDictionary *mutableDictionary = [[NSMutableDictionary alloc]init];
    
    [mutableDictionary setObject:number forKey:@"stringTwo"];
    
    
    
    
    //MARK: NSFileManager
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    
    NSArray *urls = [fileManager URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask];
    
    NSLog(@"%@", urls);
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

































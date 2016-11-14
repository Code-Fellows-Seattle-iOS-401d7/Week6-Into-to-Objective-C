//
//  Person.m
//  MyObjectiveCDemo
//
//  Created by Rachael A Helsel on 11/14/16.
//  Copyright © 2016 Rachael A Helsel. All rights reserved.
//

#import "Person.h"

@implementation Person

    NSString *_name;

-(void)setName:(NSString *)name{
    _name = name;
}


-(NSString *)name{
    return _name;
}

-(void)walk{
    NSLog(@"This person is walking...");
}

+(void)sayHello{
    NSLog(@"Hello there.");
}


@end

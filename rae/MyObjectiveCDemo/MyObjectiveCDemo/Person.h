//
//  Person.h
//  MyObjectiveCDemo
//
//  Created by Rachael A Helsel on 11/14/16.
//  Copyright © 2016 Rachael A Helsel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

//Accessor Methods
-(void)setName:(NSString *)name;
-(NSString *)name;


//Instance Methods
-(void)walk;


//Class Methods
+(void)sayHello;



@end

//
//  User.h
//  MRC_Demo
//
//  Created by Corey Malek on 11/15/16.
//  Copyright © 2016 Corey Malek. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

{
    NSString *_name;
    NSString *_email;
    NSString *_age;
}


-(void)setName:(NSString *)name;
-(void)setEmail:(NSString *)email;
-(void)setAge:(NSString *)age;

-(NSString *)email;
-(NSString *)name;
-(NSString *)age;

-(NSString *)description;

@end

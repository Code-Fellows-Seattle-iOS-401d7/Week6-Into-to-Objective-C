//
//  User.h
//  MRC MyDemo
//
//  Created by Rachael A Helsel on 11/15/16.
//  Copyright © 2016 Rachael A Helsel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject <NSCopying>
{
    NSString *_name;
    NSString *_age;
    NSString *_email;

}

-(void)setName:(NSString *)name;
-(void)setAge:(NSString *)age;
-(void)setEmail:(NSString *)email;

-(NSString *)email;
-(NSString *)name;
-(NSString *)age;

-(NSString *)description;

-(instancetype) initWithName:(NSString*)name initWithAge: (NSString*)age initWithEmail: (NSString*)email;

@end

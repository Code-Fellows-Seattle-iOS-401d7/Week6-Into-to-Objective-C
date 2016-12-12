//
//  User.m
//  MRC_Demo
//
//  Created by Corey Malek on 11/15/16.
//  Copyright © 2016 Corey Malek. All rights reserved.
//

#import "User.h"

@implementation User

@protocol NSCopying;


+(id)copyWithZone:(struct _NSZone *)zone{
    User *user = [[User alloc]init];
    
    [user autorelease];
    
    return user;
    
}

//SETTERS:
-(void)setName:(NSString *)name{
    if(_name != name) {
        [name retain];     //incremenet  .. keep name coming in
        [_name release];   //decrement   .. get rid of old name
        
        _name = name;
    }
}

-(void)setEmail:(NSString *)email{
    if (_email != email){
        [email retain];
        [_email release];
        
        _email = email;
    }
}

-(void)setAge:(NSString *)age{
    if (_age != age){
        [age retain];
        [_age release];
        
        _age = age;
    }
}



//GETTERS:
-(NSString *)name{
    return _name;
}


-(NSString *)email{
    return _email;
}

-(NSString *)age{
    return _age;
}


-(NSString *)description{
    NSString *description = [[NSString alloc]initWithFormat:@"NAME:%@ - EMAIL:%@ - AGE:%@", self.name, self.email, self.age];
    
    
    [description autorelease];
    
    return description;
}




-(void)dealloc {
    [_name release];
    [_email release];
    [_age release];
    
    _name = nil;
    _email = nil;
    _age = nil;
    
    NSLog(@"%li", [self retainCount]);
    
    [super dealloc];  //always the very last thing you want to do inside this function.
}



@end























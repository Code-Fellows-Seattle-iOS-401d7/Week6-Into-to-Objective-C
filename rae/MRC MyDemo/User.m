//
//  User.m
//  MRC MyDemo
//
//  Created by Rachael A Helsel on 11/15/16.
//  Copyright © 2016 Rachael A Helsel. All rights reserved.
//

#import "User.h"

@implementation User

-(User *)copyWithZone:(NSZone *)zone{

    User *user = [[User alloc] init];
    
    user.name = self.name;
    user.age = self.age;
    user.email = self.email;
    
    return user;

}

-(void)setName:(NSString *)name{
    if(_name != name){
        [name retain];
        [_name release];
        
        _name = name;
    }
}

-(void)setAge:(NSString *)age{
    if(_age != age){
        [age retain];
        [_age release];
    
    }
}

-(void)setEmail:(NSString *)email{
    if(_email != email){
        [email retain];
        [_email release];
        
        _email = email;
    }
}

-(NSString *)email{
    return _email;
}

-(NSString *)name{
    return _name;
}

-(NSString *)age{
    return _age;
}

-(NSString *)description{
    
    NSString *description = [[NSString alloc]initWithFormat:@"NAME:%@ - EMAIL:%@ - AGE:%@", self.name, self.email, self.age];
    
    [description autorelease];
    
    return description;

}

-(void)dealloc{
    
    [_name release];
    [_email release];
    [_age release];
    
    _name = nil;
    _email = nil;
    _age = nil;
 
    NSLog(@"%li", [self retainCount]);
    

    [super dealloc];
}

-(instancetype) initWithName:(NSString*)name initWithAge: (NSString*)age initWithEmail: (NSString*)email{

    self = [super init];
    
    if (self){
        self.name = name;
        self.age = age;
        self.email = email;
    
    }
    
    return self;
}


@end

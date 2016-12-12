//
//  StudentStore.m
//  MyClassRoster
//
//  Created by Rachael A Helsel on 11/16/16.
//  Copyright © 2016 Rachael A Helsel. All rights reserved.
//

#import "StudentStore.h"

@interface StudentStore ()

@property(strong, nonatomic)NSMutableDictionary *students;
@end

@implementation StudentStore

+(instancetype)shared{
    
    static StudentStore *shared = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [[StudentStore alloc]init];
    });

    return shared;
    
}

-(instancetype)init{
    
    self = [super init];
    
    if (self){
    
        
        self.students = [NSKeyedUnarchiver unarchiveObjectWithData:[NSData dataWithContentsOfURL:self.archiveURL]];
        
        if(!self.students){
            self.students = [[NSMutableDictionary alloc]init];
        
        }
        
    }

    return self;
    
}

-(NSInteger)count{
    return self.students.count;
}

-(NSArray *)allStudents{
    
    NSMutableArray *results = [[NSMutableArray alloc]init];
    
    for(Student *student in self.students.allValues){
        [results addObject:[student copy]];
    }
    
    return results;
}

-(void)add:(Student *)student{
    [self.students setObject:student forKey:student.email];
    [self save];
    }

-(void)remove:(Student *)student{
    [self. students removeObjectForKey:student.email];
    [self save];
    }

-(void)save{
    

    BOOL success = [NSKeyedArchiver archiveRootObject:self.students toFile:self.archiveURL.path];
    
    NSLog(@"Success Saving: %i", success);
}

-(NSURL *)archiveURL{
  
    NSURL *documentsDirectory = [[[NSFileManager defaultManager]URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] firstObject];
    
    return [documentsDirectory URLByAppendingPathComponent:@"archive"];

    
}

@end

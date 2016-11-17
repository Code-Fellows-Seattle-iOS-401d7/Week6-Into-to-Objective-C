//
//  Student.h
//  ClassRoster
//
//  Created by Corey Malek on 11/16/16.
//  Copyright © 2016 Corey Malek. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject<NSCopying, NSCoding>



@property(strong, nonatomic)NSString *firstName;
@property(strong, nonatomic)NSString *lastName;
@property(strong, nonatomic)NSString *email;


-(instancetype)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName email:(NSString *)email;

@end

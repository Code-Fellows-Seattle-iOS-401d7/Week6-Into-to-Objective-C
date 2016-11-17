//
//  Student.h
//  MyClassRoster
//
//  Created by Rachael A Helsel on 11/16/16.
//  Copyright © 2016 Rachael A Helsel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject<NSCopying, NSCoding>

//properties are atomic by default
@property(strong, nonatomic)NSString *firstName;
@property(strong, nonatomic)NSString *lastName;
@property(strong, nonatomic)NSString *email;


-(instancetype)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName email:(NSString  *)email;


@end

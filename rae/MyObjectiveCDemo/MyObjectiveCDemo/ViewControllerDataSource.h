//
//  ViewControllerDataSource.h
//  MyObjectiveCDemo
//
//  Created by Rachael A Helsel on 11/14/16.
//  Copyright © 2016 Rachael A Helsel. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ViewControllerDataSource <NSObject>

@required
-(void)numberOfCellsForTableView;

@optional
-(NSString *)doSomeStuffWithOptionalMethod;

@end

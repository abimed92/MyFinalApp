//
//  Order.h
//  RST
//
//  Created by Abimael Medina on 12/2/13.
//  Copyright (c) 2013 Abimael Medina. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Order : NSManagedObject

@property (nonatomic, retain) NSString * poDate;
@property (nonatomic, retain) NSString * status;
@property (nonatomic, retain) NSString * phone;
@property (nonatomic, retain) NSString * comments;
@property (nonatomic, retain) NSString* puDate;
@property (nonatomic, retain) NSString * price;
@property (nonatomic, retain) NSString * sku;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * qty;
@property (nonatomic, retain) NSString * po;

@end

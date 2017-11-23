//
//  Module.h
//  Module Catalog
//
//  Created by Abhraneel Sen [fy15as] on 09/10/2017.
//  Copyright © 2017 Abhraneel Sen [fy15as]. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Module : NSObject

@property (nonatomic, strong) NSString *Code;
@property (nonatomic, strong) NSString *Title;
@property (nonatomic, strong) NSString *Staff;
@property NSInteger Credits;

@end


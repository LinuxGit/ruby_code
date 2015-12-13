//
//  Book.h
//  OC
//
//  Created by ruby on 15/12/13.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Book : NSObject
{
    int _price;
}

- (void) setPrice:(int) price;

- (int) price;

@end

//
//  Person.h
//  OC
//
//  Created by ruby on 15/12/13.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"

@interface Person : NSObject
{
    Book * _book;
}

- (void) setBook:(Book *) book;

- (Book *) book;

@end

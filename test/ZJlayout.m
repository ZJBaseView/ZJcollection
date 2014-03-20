//
//  ZJlayout.m
//  test
//
//  Created by 郭剑聪 on 14-3-11.
//  Copyright (c) 2014年 ZHAO. All rights reserved.
//

#import "ZJlayout.h"

@implementation ZJlayout

-(id)init
{
    
    
    self=[super init];
    if(self)
    {
    
        self.itemSize = CGSizeMake(155  , 226);
        self.sectionInset = UIEdgeInsetsMake(3, 4, 3, 4);

    
    }
    return self;
}
@end

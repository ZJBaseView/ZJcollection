//
//  ZJCELL.m
//  test
//
//  Created by 郭剑聪 on 14-3-11.
//  Copyright (c) 2014年 ZHAO. All rights reserved.
//

#import "ZJCELL.h"

@implementation ZJCELL

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        UIView * view=[[UIView alloc]init];
        UIView * leftview= [[UIView alloc]init];
        leftview.frame=CGRectMake(0, 0, 154, 226);
        leftview.backgroundColor=[UIColor whiteColor];
        leftview.layer.borderWidth=1;
        leftview.layer.borderColor = [[UIColor colorWithRed:0 green:0 blue:180/255 alpha:0.1] CGColor];
        
        UIImageView * leftimage= [[UIImageView alloc] init];
        leftimage.frame=CGRectMake(0, 0, 154, 154);
        leftimage.clipsToBounds = YES;
//        leftimage.backgroundColor=[UIColor redColor];
        leftimage.contentMode = UIViewContentModeScaleAspectFit;
        leftimage.image=[UIImage imageNamed:@"tangwei.jpg"];
        [leftview addSubview:leftimage];
        
        UILabel * title = [[UILabel alloc] init];
        title.font = [UIFont systemFontOfSize:14.0];
        title.frame=CGRectMake(5, 158, 148, 40);
        title.numberOfLines = 2;
        title.text=@"V-neck A-line Satin And Tulle Bridesmaid Dress";
        [leftview addSubview:title];
        
        UILabel *price = [[UILabel alloc] init];
        price.font = [UIFont systemFontOfSize:12];
        price.frame= CGRectMake(5, 200, 100, 20);
        price.backgroundColor=[UIColor clearColor];
        price.text=@"$ 100";
        price.textColor=[UIColor grayColor];
        price.numberOfLines = 0;
        [leftview addSubview:price];
        
        UILabel *discount = [[UILabel alloc] init];
        discount.font = [UIFont systemFontOfSize:12];
        discount.frame=CGRectMake(100, 200, 100, 20);
        discount.backgroundColor=[UIColor clearColor];
        discount.text=@"$300";
        discount.textColor=[UIColor colorWithRed:39.0/255 green:189.0/255 blue:181.0/255 alpha:1];
        discount.numberOfLines = 1;
        [leftview addSubview:discount];
        [view addSubview:leftview];
        [self addSubview:view];
        
//        self.contentView.layer.borderWidth = 1.0f;
//        self.contentView.layer.borderColor = [UIColor whiteColor].CGColor;
        
        
        
        self.backgroundColor=[UIColor redColor];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end

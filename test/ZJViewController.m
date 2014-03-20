//
//  ZJViewController.m
//  test
//
//  Created by 郭剑聪 on 14-3-11.
//  Copyright (c) 2014年 ZHAO. All rights reserved.
//

#import "ZJViewController.h"
#import "ZJlayout.h"
#import "ZJCELL.h"
@interface ZJViewController ()

@end

@implementation ZJViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    //初始化
    ZJlayout * layout = [[ZJlayout alloc]init];
    collection = [[UICollectionView alloc]initWithFrame:self.view.bounds collectionViewLayout:layout];
    collection.backgroundColor=[UIColor whiteColor];
    [collection registerClass:[ZJCELL class] forCellWithReuseIdentifier:@"cell"];
    collection.delegate=self;
    collection.dataSource=self;
    [self.view addSubview:collection];
	// Do any additional setup after loading the view.
}
-(UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    
    ZJCELL*cell=[collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
   
  
    return  cell;
}
// 定义上下cell的最小间距
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    return 4;
}

// 定义左右cell的最小间距
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    return 0.1;
}
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
 
    CGSize size = CGSizeMake(154,226);
   
    return size;
}
- (NSInteger)collectionView:(UICollectionView *)view numberOfItemsInSection:(NSInteger)section;
{
    return 60;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

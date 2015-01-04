//
//  ViewController.m
//  homework8
//
//  Created by Andrews on 08.12.14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import "CustomCellCollectionViewCell.h"
#import "ViewController.h"

@interface ViewController ()<UICollectionViewDataSource, UICollectionViewDelegate>
@property (weak, nonatomic) IBOutlet UICollectionView *myCollectionView;
@property (weak, nonatomic) IBOutlet UIPageControl *myPageControl;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UICollectionViewFlowLayout *layout = (id)self.myCollectionView.collectionViewLayout;
    layout.itemSize = self.view.frame.size;
    [self.myCollectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"1"];
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 5;
}

-(void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation {
    
    UICollectionViewFlowLayout *layout = (id)self.myCollectionView.collectionViewLayout;
    layout.itemSize = self.view.frame.size;
    [self.myCollectionView reloadData];
    self.myCollectionView.contentOffset = CGPointZero;
    
}


-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    CustomCellCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"1" forIndexPath:indexPath];
    cell.cellLabel.text = @"<...>";
    return cell;
}

-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    self.myPageControl.currentPage = self.myCollectionView.contentOffset.x / self.myCollectionView.frame.size.width;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

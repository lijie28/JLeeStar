//
//  JLStarRating.m
//  testGesture
//
//  Created by 李杰 on 16/9/19.
//  Copyright © 2016年 ttt. All rights reserved.
//

#import "JLShowStar.h"


@implementation JLShowStar

@synthesize starSize = _starSize;
@synthesize maxStar = _maxStar;
@synthesize showStar = _showStar;
@synthesize emptyColor = _emptyColor;
@synthesize fullColor = _fullColor;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        self.backgroundColor = [UIColor clearColor];
        [self commonInit];
    }
    
    return self;
}



- (void)commonInit
{
    
    _numberOfStar = 5;
    
    self.starBackgroundView = [self buidlStarViewWithImageName:kBACKGROUND_STAR];
    
    [self addSubview:self.starBackgroundView];
}

- (UIView *)starForegroundView
{
    if (!_starForegroundView) {
        _starForegroundView = [self buidlStarViewWithImageName:kFOREGROUND_STAR];
        
        [self addSubview:self.starForegroundView];
    }
    return _starForegroundView;
}

/**
 *  通过图片构建星星视图
 *
 *  @param imageName 图片名称
 *
 *  @return 星星视图
 */
- (UIView *)buidlStarViewWithImageName:(NSString *)imageName
{
    CGRect frame = self.bounds;
    UIView *view = [[UIView alloc] initWithFrame:frame];
    view.clipsToBounds = YES;
    for (int i = 0; i < self.numberOfStar; i ++){
        UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:imageName]];
        imageView.frame = CGRectMake(i * frame.size.width / self.numberOfStar, 0, frame.size.width / self.numberOfStar, frame.size.height);
        [view addSubview:imageView];
    }
    return view;
}




- (void)changeThePoint:(float)star
{
    NSLog(@"changeThePoint");
    
  float width = star/5 * self.frame.size.width ;

   self.starForegroundView.frame =  CGRectMake(0, 0, width, self.frame.size.height);
}



@end


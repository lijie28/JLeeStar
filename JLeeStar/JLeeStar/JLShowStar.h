//
//  JLStarRating.h
//  testGesture
//
//  Created by 李杰 on 16/9/19.
//  Copyright © 2016年 ttt. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kBACKGROUND_STAR @"grayStar"
#define kFOREGROUND_STAR @"yellowStar"
#define kNUMBER_OF_STAR  0

@interface JLShowStar : UIView


{
    CGFloat _starSize;        /* 根据字体大小来确定星星的大小 */
    NSInteger _maxStar;      /* 总共的长度 */
    NSInteger _showStar;    //需要显示的星星的长度
    UIColor *_emptyColor;   //未点亮时候的颜色
    UIColor *_fullColor;    //点亮的星星的颜色
}
@property (nonatomic, assign) CGFloat starSize;
@property (nonatomic, assign) NSInteger maxStar;
@property (nonatomic, assign) NSInteger showStar;
@property (nonatomic, retain) UIColor *emptyColor;
@property (nonatomic, retain) UIColor *fullColor;

@property (nonatomic, strong) UIView *starBackgroundView;
@property (nonatomic, strong) UIView *starForegroundView;

@property (nonatomic, readonly) NSInteger numberOfStar;

//the Point is between 0-5, 
- (UIView *)showStarWithThePoint:(CGFloat)poing;


- (void)changeThePoint:(float)star;

@end

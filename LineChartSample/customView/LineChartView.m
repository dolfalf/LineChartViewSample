//
//  LineChartView.m
//  LineChartSample
//
//  Created by Lee jaeeun on 2014/02/22.
//  Copyright (c) 2014年 kjcode. All rights reserved.
//

#import "LineChartView.h"

@implementation LineChartView

//- (id)initWithCoder:(NSCoder *)aDecoder {
//    
//}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

+ (id)createView:(UIView *)baseView {
    NSArray *views = [[NSBundle mainBundle] loadNibNamed:@"LineChartView" owner:nil options:nil];
    LineChartView *v = [views objectAtIndex:0];
    
    baseView.backgroundColor = [UIColor clearColor];
    
    [baseView addSubview:v];
    return v;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    CGContextRef context = UIGraphicsGetCurrentContext();
    
//    int count = [_delegate lineChartPointCount];
    [_delegate lineChartView:self color:_color count:_cnt];
    
    float x = 0;
    float y = 0;
    
    for (int i=0;i <_cnt;i++) {
        x = rand()%100;
        y = rand()%100;
        CGContextStrokeRect(context, CGRectMake(x,y,20,20));  // 四角形の描画
        CGContextSetFillColorWithColor(context, _color.CGColor);
        CGContextFillRect(context, CGRectMake(x,y,20,20));
    }
}


@end

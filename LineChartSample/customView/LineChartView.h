//
//  LineChartView.h
//  LineChartSample
//
//  Created by Lee jaeeun on 2014/02/22.
//  Copyright (c) 2014年 kjcode. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol LineChartViewDelegate;

@interface LineChartView : UIView

@property (nonatomic) id<LineChartViewDelegate> delegate;

@property (nonatomic,readonly) NSInteger cnt;
@property (nonatomic, strong) UIColor *color;

+ (id)createView:(UIView *)baseView;

@end

@protocol LineChartViewDelegate <NSObject>

@optional
- (void)lineChartView:(LineChartView *)chartView color:(UIColor *)color count:(NSInteger)cnt;
- (NSInteger)lineChartPointCount;

@end
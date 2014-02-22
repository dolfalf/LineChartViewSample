//
//  ViewController.m
//  LineChartSample
//
//  Created by Lee jaeeun on 2014/02/22.
//  Copyright (c) 2014年 kjcode. All rights reserved.
//

#import "ViewController.h"
#import "LineChartView.h"

@interface ViewController ()<LineChartViewDelegate> {
    
    IBOutlet UIView *lineChartContainerView;
    LineChartView *_lineChartView;
    
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
//    [Util myMethod:@"test"];
    
    _lineChartView = [LineChartView createView:lineChartContainerView];
    _lineChartView.delegate = self;
    
    
//    [_lineChartView setNeedsDisplay];
    
//    _lineChartView.cnt = 5;
//    _lineChartView.color = [UIColor blackColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)lineChartPointCount {
    return 60;
}

- (void)lineChartView:(LineChartView *)chartView color:(UIColor *)color count:(NSInteger)cnt {
//    NSLog(@"%d",cnt );
    chartView.cnt = 40;
    chartView.color = [UIColor greenColor];
    
}
- (void)loadModel {
    
}
@end

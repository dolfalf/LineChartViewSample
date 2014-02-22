//
//  KJCodeProtocol.h
//  LineChartSample
//
//  Created by Lee jaeeun on 2014/02/22.
//  Copyright (c) 2014年 kjcode. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol KJCodeProtocol <NSObject>

@required
@property (nonatomic) NSInteger kjcodeValue;
- (void)loadModel;

@end

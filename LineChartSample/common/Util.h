//
//  Util.h
//  LineChartSample
//
//  Created by Lee jaeeun on 2014/02/22.
//  Copyright (c) 2014年 kjcode. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Util : NSObject


+(void)myMethod:(NSString*)abc __attribute((deprecated("use myMethod: animated: method")));

+(void)myMethod:(NSString*)abc animated:animated;

+(void)myMethod2:(NSString*)abc __deprecated;    //メッセージなしでdeprecated表示したい場合


//프로퍼티도 같은 방식으로
@property (strong) NSObject *object __attribute((deprecated("use xxxx property")));

@end

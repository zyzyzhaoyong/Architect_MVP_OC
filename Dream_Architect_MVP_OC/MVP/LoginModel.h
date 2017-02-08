//
//  LoginModel.h
//  Dream_Architect_MVP_OC
//
//  Created by Apple on 2017/2/7.
//  Copyright © 2017年 乔布永. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HttpUtils.h"

//M层(数据层,数据库,网络,文件等...)
@interface LoginModel : NSObject
//业务方法
- (void)loginWithName:(NSString*)name pwd:(NSString*)pwd callback:(Callback)callback;
@end

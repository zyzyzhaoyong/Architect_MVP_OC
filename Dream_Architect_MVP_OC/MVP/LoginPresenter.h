//
//  LoginPresenter.h
//  Dream_Architect_MVP_OC
//
//  Created by Apple on 2017/2/7.
//  Copyright © 2017年 乔布永. All rights reserved.
// P层

#import <Foundation/Foundation.h>
#import "LoginView.h"
#import "LoginModel.h"
//中介(用于关联M层和V层)
@interface LoginPresenter : NSObject
//提供一个业务方法
- (void)loginWithName:(NSString*)name pwd:(NSString*)pwd;
- (void)attachView:(id<LoginView>)loginView;
- (void)detachView;
@end

//
//  LoginPresenter.m
//  Dream_Architect_MVP_OC
//
//  Created by Apple on 2017/2/7.
//  Copyright © 2017年 乔布永. All rights reserved.
//

#import "LoginPresenter.h"

//P是中介(职责是用于关联M和V)
//P层需要:持有M层的引用和V层的引用(OOP)思想
@interface LoginPresenter ()
@property (nonatomic,strong) LoginModel *loginModel;
@property (nonatomic,strong) id<LoginView> loginView;
@end


@implementation LoginPresenter
- (instancetype)init{
    self = [super init];
    if (self) {
        //持有M层的引用
        _loginModel = [[LoginModel alloc]init];
    }
    return self;
}
//提供绑定V层方法
//绑定
- (void)attachView:(id<LoginView>)loginView{
    _loginView = loginView;
}
//解除绑定
- (void)detachView{
    _loginView = nil;
}
//实现业务方法
- (void)loginWithName:(NSString*)name pwd:(NSString*)pwd{
    [_loginModel loginWithName:name pwd:pwd callback:^(NSString *result) {
        if (_loginView != nil) {
            [_loginView onLoginResult:result];
        }
    }];
    
}
//mrybnrbkthoobefd
@end

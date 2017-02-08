//
//  ViewController.m
//  Dream_Architect_MVP_OC
//
//  Created by Apple on 2017/2/7.
//  Copyright © 2017年 乔布永. All rights reserved.
//

#import "ViewController.h"
#import "LoginView.h"
#import "LoginPresenter.h"
@interface ViewController ()<LoginView>
@property (nonatomic,strong) LoginPresenter* presenter;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _presenter = [[LoginPresenter alloc ]init];
    [_presenter attachView:self];
    //程序一旦运行立马执行请求(测试)(按钮或者事件)
    [_presenter loginWithName:@"18842693828" pwd:@"123456"];
}

- (void)onLoginResult:(NSString *)result{
    
    NSLog(@"返回结果%@",result);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    [_presenter detachView];
}


@end

//
//  LoginView.h
//  Dream_Architect_MVP_OC
//
//  Created by Apple on 2017/2/7.
//  Copyright © 2017年 乔布永. All rights reserved.
//

#import <Foundation/Foundation.h>
//V层
@protocol LoginView <NSObject>

- (void)onLoginResult:(NSString*)result;

@end

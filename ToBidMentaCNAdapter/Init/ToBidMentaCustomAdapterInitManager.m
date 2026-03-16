//
//  ToBidMentaCustomAdapterInitManager.m
//  
//
//  Created by jdy_office on 2025/7/4.
//

#import "ToBidMentaCustomAdapterInitManager.h"
#import "ToBidMentaParam.h"
#import <MentaUnifiedSDK/MUAPI.h>

@interface ToBidMentaCustomAdapterInitManager ()

@property (nonatomic, weak) id<AWMCustomConfigAdapterBridge> bridge;

@end


@implementation ToBidMentaCustomAdapterInitManager

- (instancetype)initWithBridge:(id<AWMCustomConfigAdapterBridge>)bridge {
    if (self = [super init]) {
        _bridge = bridge;
    }
    return self;
}

- (AWMCustomAdapterVersion *)basedOnCustomAdapterVersion {
    return AWMCustomAdapterVersion.V2_0;
}

- (NSString *)adapterVersion {
    return [MUAPI sdkVersion];
}

- (NSString *)networkSdkVersion {
    return [MUAPI sdkVersion];
}

- (void)initializeAdapterWithConfiguration:(AWMSdkInitConfig *)initConfig {
    ToBidMentaParam *param = [[ToBidMentaParam alloc] initWithDictionary:initConfig.extra];
    NSError *appError = param.appError;
    if (appError) {
        [self.bridge initializeAdapterFailed:self error:appError];
        return;
    }
    
    __weak typeof(self) weakSelf = self;
    [MUAPI startWithAppID:param.appId appKey:param.appKey finishBlock:^(BOOL success, NSError * _Nullable error) {
        __strong typeof(weakSelf) strongSelf = weakSelf;
        if (success) {
            [strongSelf.bridge initializeAdapterSuccess:strongSelf];
        } else {
            [strongSelf.bridge initializeAdapterFailed:strongSelf error:error];
        }
    }];
}

/// 隐私权限更新，用户更新隐私配置时触发，初始化方法调用前一定会触发一次
- (void)didRequestAdPrivacyConfigUpdate:(NSDictionary *)config {
    //调用三方adn隐私设置接口
}

@end

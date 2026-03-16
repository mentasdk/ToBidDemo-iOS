//
//  XXCSJNativeAdData.m
//  WindMillTTAdAdapter
//
//  Created by Codi on 2022/10/20.
//  Copyright © 2022 Codi. All rights reserved.
//

#import "MentaNativeAdData.h"
#import <WindFoundation/WindFoundation.h>
#import <MentaUnifiedSDK/MentaNativeAdMaterialObject.h>

@interface MentaNativeAdData ()

@property (nonatomic, weak) MentaNativeObject *ad;

@end


@implementation MentaNativeAdData

@synthesize title;
@synthesize desc;
@synthesize iconUrl;
@synthesize callToAction;
@synthesize rating;
@synthesize imageUrlList;
@synthesize adMode;
@synthesize adType;
@synthesize interactionType;
@synthesize networkId;
@synthesize videoCoverImage;
@synthesize videoUrl;
@synthesize imageModelList;

- (instancetype)initWithAd:(MentaNativeObject *)ad {
    if (self = [super init]) {
        _ad = ad;
    }
    return self;
}

- (NSString *)title {
    return self.ad ? self.ad.dataObject.title : nil;
}

- (NSString *)desc {
    return self.ad ? self.ad.dataObject.desc : nil;
}

- (NSString *)iconUrl {
    return self.ad ? self.ad.dataObject.iconUrl : nil;
}

- (NSString *)callToAction {
    return nil;
}

- (double)rating {
    return 0;
}

- (NSArray *)imageUrlList {
    if (self.ad && self.ad.dataObject.materialList && self.ad.dataObject.materialList.count) {
        return @[self.ad.dataObject.materialList.firstObject.materialUrl];
    }
    return nil;
}

- (enum AWMMediatedNativeAdMode)adMode {
    if (!self.ad) {
        return AWMMediatedNativeAdModeNativeExpress;
    }
    
    return self.ad.dataObject.isVideo ? AWMMediatedNativeAdModeVideo : AWMMediatedNativeAdModeLargeImage;
}

- (enum AWMNativeAdSlotAdType)adType {
    return AWMNativeAdSlotAdTypeFeed;
}

- (enum AWMNativeAdInteractionType)interactionType {
    return AWMNativeAdInteractionTypeCustorm;
}

- (AWMADImage *)videoCoverImage {
    return nil;
}

- (NSString *)videoUrl {
    return nil;
}

- (NSArray<AWMADImage *> *)imageModelList {
    return nil;
}

@end

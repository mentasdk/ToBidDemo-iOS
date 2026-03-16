//
//  ToBidMentaParam.h
//  ToBidMentaCustomAdapter
//
//  Created by vlion on 2025/9/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ToBidMentaParam : NSObject

@property (nullable, nonatomic, copy, readonly) NSString *appId;
@property (nullable, nonatomic, copy, readonly) NSString *appKey;

- (instancetype)initWithDictionary:(NSDictionary *)info;
- (nullable NSError *)appError;

@end

NS_ASSUME_NONNULL_END

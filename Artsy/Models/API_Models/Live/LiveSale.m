#import <Mantle/Mantle.h>

#import "LiveSale.h"
#import "ARMacros.h"
#import "BuyersPremium.h"
#import "ARStandardDateFormatter.h"
#import "ARSystemTime.h"


@implementation LiveSale

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{
        ar_keypath(LiveSale.new, liveSaleID) : @"id",
        ar_keypath(LiveSale.new, startDate) : @"start_at",
        ar_keypath(LiveSale.new, endDate) : @"end_at",
        ar_keypath(LiveSale.new, buyersPremium) : @"buyers_premium",
        ar_keypath(LiveSale.new, saleDescription) : @"description",
    };
}

+ (NSValueTransformer *)startDateJSONTransformer
{
    return [ARStandardDateFormatter sharedFormatter].stringTransformer;
}

+ (NSValueTransformer *)endDateJSONTransformer
{
    return [ARStandardDateFormatter sharedFormatter].stringTransformer;
}

@end
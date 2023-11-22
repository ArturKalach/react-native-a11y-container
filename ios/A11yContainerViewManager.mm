#import <React/RCTViewManager.h>
#import <React/RCTUIManager.h>
#import "RCTBridge.h"
#import "Utils.h"

@interface A11yContainerViewManager : RCTViewManager
@end

@implementation A11yContainerViewManager

RCT_EXPORT_MODULE(A11yContainerView)

- (UIView *)view
{
  return [[UIView alloc] init];
}

RCT_CUSTOM_VIEW_PROPERTY(type, NSInteger, UIView)
{
    NSInteger containerType = json ? [RCTConvert NSInteger:json] : 0;
    view.accessibilityContainerType = (UIAccessibilityContainerType)containerType;
}

@end

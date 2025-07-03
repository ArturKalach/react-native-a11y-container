#ifdef RCT_NEW_ARCH_ENABLED
#import "A11yContainerView.h"

#import <react/renderer/components/RNA11yContainerViewSpec/ComponentDescriptors.h>
#import <react/renderer/components/RNA11yContainerViewSpec/EventEmitters.h>
#import <react/renderer/components/RNA11yContainerViewSpec/Props.h>
#import <react/renderer/components/RNA11yContainerViewSpec/RCTComponentViewHelpers.h>

#import "RCTFabricComponentsPlugins.h"

using namespace facebook::react;

@interface A11yContainerView () <RCTA11yContainerViewViewProtocol>

@end

@implementation A11yContainerView {
    UIView * _view;
}

+ (ComponentDescriptorProvider)componentDescriptorProvider
{
    return concreteComponentDescriptorProvider<A11yContainerViewComponentDescriptor>();
}

- (instancetype)initWithFrame:(CGRect)frame
{
  if (self = [super initWithFrame:frame]) {
    static const auto defaultProps = std::make_shared<const A11yContainerViewProps>();
    _props = defaultProps;

    _view = [[UIView alloc] init];

    self.contentView = _view;
  }

  return self;
}

- (void)updateProps:(Props::Shared const &)props oldProps:(Props::Shared const &)oldProps
{
    const auto &oldViewProps = *std::static_pointer_cast<A11yContainerViewProps const>(_props);
    const auto &newViewProps = *std::static_pointer_cast<A11yContainerViewProps const>(props);

    
    if (oldViewProps.type != newViewProps.type) {
        NSInteger containerType = newViewProps.type;
        self.accessibilityContainerType = (UIAccessibilityContainerType)containerType;
    }

    [super updateProps:props oldProps:oldProps];
}

Class<RCTComponentViewProtocol> A11yContainerViewCls(void)
{
    return A11yContainerView.class;
}

@end
#endif

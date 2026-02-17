import React from 'react';
import { View, Platform, type ViewProps } from 'react-native';

import { default as A11yContainerViewNative } from './A11yContainerViewNativeComponent';

export enum A11yContainerTypes {
  None = 0,
  DataTable = 1,
  List = 2,
  Landmark = 3,
  SemanticGroup = 4,
}

export type A11yContainerTypeKeys = keyof typeof A11yContainerTypes;

export interface A11yContainerProps extends ViewProps {
  type?: A11yContainerTypeKeys;
}

const A11yContainerComponent = React.forwardRef<View, A11yContainerProps>(
  ({ type = 'SemanticGroup', ...props }, ref) => {
    const containerType = A11yContainerTypes[type];
    if (Platform.OS !== 'ios') return <View ref={ref} {...props} />;

    return (
      <A11yContainerViewNative ref={ref} type={containerType} {...props} />
    );
  }
);

export const A11yContainerView = React.memo(A11yContainerComponent);

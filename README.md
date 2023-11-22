# react-native-a11y-container

ReactNative UIAccessibilityContainer Component.

The VoiceOver rotor offers enhanced navigation options. To define containers for the rotor, use the react-native-a11y-container and A11yContainerView components.

⚡️ New architecture compatible!

## Installation

```sh
npm install react-native-a11y-container
```
or
```sh
yarn add react-native-a11y-container
```

## Usage

```js
import { A11yContainerView } from "react-native-a11y-container";

// ...

<A11yContainerView>{children}</A11yContainerView>

//or

<A11yContainerView type="List"/>{children}</A11yContainerView>
```

To specify the type of content within A11yContainerView, use the type attribute with the following values:
- `None` corresponds to `UIAccessibilityContainerTypeNone`
- `DataTable` corresponds to `UIAccessibilityContainerTypeDataTable` Note: Avoid using DataTable unless you implement the UIAccessibilityContainerDataTable protocol as required.
- `List` corresponds to `UIAccessibilityContainerTypeList`
- `Landmark` corresponds to `UIAccessibilityContainerTypeLandmark`
- `SemanticGroup` corresponds to `UIAccessibilityContainerTypeSemanticGroup`

By default, A11yContainerView uses the SemanticGroup type. For more details on these types, refer to the developer.apple.com documentation.


## Contributing

See the [contributing guide](CONTRIBUTING.md) to learn how to contribute to the repository and the development workflow.

## License

MIT

---

Made with [create-react-native-library](https://github.com/callstack/react-native-builder-bob)

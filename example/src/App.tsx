import * as React from 'react';

import { StyleSheet, Text, View } from 'react-native';
import { A11yContainerView } from 'react-native-a11y-container';

export default function App() {
  return (
    <View style={styles.container}>
      <A11yContainerView accessibilityLabel="VoiceOver Rotor info">
        <Text style={styles.header} accessibilityRole="header">
          Use the VoiceOver rotor
        </Text>
        <Text>
          First, if you haven't turned on VoiceOver, turn it on in Settings &gt;
          Accessibility.
        </Text>
        <Text>
          To use the rotor, rotate two fingers on your iOS or iPadOS device's
          screen as if you're turning a dial. VoiceOver will say the first rotor
          option. Keep rotating your fingers to hear more options. Lift your
          fingers to choose the container.
        </Text>
        <Text>
          After you choose the option, flick your finger up or down on the
          screen to jump between containers.
        </Text>
      </A11yContainerView>
      <A11yContainerView>
        <Text style={styles.header} accessibilityRole="header">
          Move through the organization of a page or screen
        </Text>
        <Text>
          Containers: Moves from one onscreen container to the next. The Dock
          and Home screen, for example, are containers.{' '}
        </Text>
      </A11yContainerView>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
    padding: 30,
  },
  header: {
    fontWeight: '600',
  },
});

import React, { useState } from 'react'
import { View, StyleSheet, Text, ScrollView } from 'react-native'

export default function AboutScreen({ navigation, screenProps, handle_update_user_info }) {
    return(
        <View style={{width: '100%', flex: 1, justifyContent: 'center', alignItems: 'center',}}>
            <Text>About Us</Text>
        </View>
    );
}
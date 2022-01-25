import React from 'react'
import { View, Text } from 'react-native'

export default function OrderHistoryScreen({ navigation, screenProps }) {
    return(
        <View style={{width: '100%', flex: 1, justifyContent: 'center', alignItems: 'center',}}>
            <Text>You have placed {screenProps.user_data.orders_placed} orders so far!</Text>
        </View>
    );
}
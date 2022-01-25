import React, { useState } from 'react'
import { Image, View, StyleSheet, Text, TouchableOpacity, ScrollView, Switch, ImageBackground, TextInput } from 'react-native'
import { MaterialIcons } from '@expo/vector-icons';

export default function CustomHeader({ navigation, name, screenProps, props }) {
    return(
        <View style={{width: '100%', height: 35, backgroundColor: screenProps.theme.status ? 'white' : 'black', justifyContent: 'center', borderRadius: 50, marginTop: 10, shadowColor: 'black', shadowOpacity: 1, elevation: 10,}}>

        <TouchableOpacity onPress={() => navigation.openDrawer()} style={{position: 'absolute', marginLeft: 10, }}>
            <MaterialIcons name='menu' size={25} color={screenProps.theme.status == 0 ? 'white' : 'black'} />
        </TouchableOpacity>

                <Text style={{color: screenProps.theme.status == 0 ? 'white' : 'black', fontSize: 23, alignSelf: 'center',}}>{name}</Text>

            <View style={{justifyContent: 'center', alignItems: 'center', alignSelf: 'flex-end', position: 'absolute'}}>

                {/* <Text>{'Hi ' + screenProps.user_data.username}</Text> */}
                <TouchableOpacity onPress={() => navigation.openDrawer()}>
                    <Image source={require('../images/user_avatar.jpeg')} style={{borderRadius: 50, height: 35, width: 35,}} />
                </TouchableOpacity>
            
            </View>
        </View>
    );
}
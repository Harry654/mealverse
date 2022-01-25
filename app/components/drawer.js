import React, { useState } from 'react'
import { Image, View, StyleSheet, Text, TouchableOpacity, Switch, ImageBackground } from 'react-native'
import { DrawerItemList, DrawerContentScrollView } from '@react-navigation/drawer';


export default function DrawerComponent({ navigation, state, descriptors, screenProps, isEnabled, update_theme, ...props }) {
    let bgURI = screenProps.theme.status ? require('../images/user_profile_bg_light.png') : require('../images/user_profile_bg_dark.png');
    return (
        <View style={{flex: 1,}}>
            <ImageBackground source={bgURI} style={{padding: 20, alignItems: 'center', justifyContent: 'center',}}>

            <TouchableOpacity>
            <Image source={require('../images/user_avatar.jpeg')} style={{borderRadius: 50, height: 80, width: 80, marginBottom: 10,}} />
            </TouchableOpacity>
            <View style={{width: '100%', justifyContent: 'center', alignItems: 'center',}}>

            <View style={{borderBottomColor: 'white', borderBottomWidth: 3, borderRadius: 20, position: 'absolute', alignSelf: 'flex-start', width: 70,}}/>

            <Text style={{color: screenProps.theme.status ? 'blue' : 'black', backgroundColor: 'rgba(255, 255, 255, .5)', borderRadius: 50, fontSize: 20, fontWeight: 'bold', paddingHorizontal: 5}}>{screenProps.user_data.username}</Text>

            <View style={{borderBottomColor: 'white', borderBottomWidth: 3, borderRadius: 20, position: 'absolute', alignSelf: 'flex-end', width: 70,}}/>

            </View>
            <Text style={{color: screenProps.theme.status ? 'black' : 'white',}}>{screenProps.user_data.email}</Text>
            <Text style={{color: screenProps.theme.status ? 'black' : 'white',}}>{'Member since ' + screenProps.user_data.enrollment_date}</Text>
            <Text style={{color: screenProps.theme.status ? 'black' : 'white',}}>{'Total placed orders: ' + screenProps.user_data.orders_placed}</Text>


            </ImageBackground>
        <DrawerContentScrollView {...props}>
            <DrawerItemList navigation={navigation} state={state} descriptors={descriptors} {...props} />

        </DrawerContentScrollView>

        <View style={{backgroundColor: 'transparent', justifyContent: 'center', height: 50}}>
			<Switch style={{position: 'absolute', alignSelf: 'flex-end',}} value={isEnabled} onValueChange={() => update_theme()} trackColor={{false: screenProps.theme.light, true: screenProps.theme.dark}} thumbColor='white' />
			
			<Text style={{color: screenProps.theme.status ? 'black' : 'white', fontSize: 20, fontWeight: 'bold', marginLeft: 10, position: 'absolute',}}>
				{'Lights ' + (screenProps.theme.status ? 'On' : 'Out')}
			</Text>
			{/* <Text>{'\n'}</Text> */}
      </View>

            </View>
		// <ScrollView style={styles.main, 
		// 	{backgroundColor: screenProps.theme.status == 0 ? (screenProps.theme.dark) : (screenProps.theme.light),} 
		// }>
		// 	<View>
		// 		{/* <BackButton goBack={navigation.goBack} /> */}
		// 		<View style={{ alignItems: 'center', justifyContent: 'center' }}>
		// 		<Text style={styles.username}>{screenProps.user_data.username}</Text>
		// 		<TouchableOpacity>
		// 		<Image
		// 			source={require('../images/dashboard.png')}
		// 			resizeMode="contain"
		// 			style={styles.avatar}
		// 				/>
		// 		</TouchableOpacity>


		// 		<Text style={styles.email}>{screenProps.user_data.phone_number}</Text>

		// 		<Text style={styles.email}>{screenProps.user_data.email}</Text>

		// 		<Text style={styles.email}>{screenProps.user_data.enrollment_date}</Text>

		// 		<Text style={styles.email}>{screenProps.user_data.orders_placed}</Text>

		// 		</View>
		// 	</View>
					
		// </ScrollView>
	)
}

const styles = StyleSheet.create({
	main: { 
		flex: 1, 
		borderWidth: 2, 
		width: '100%',
	},
	row: {
		flexDirection: 'row',
		marginTop: 4,
	},
	link: {
		fontWeight: 'bold',
		color: 'black',
	},
	avatar: {
		borderRadius: 20,
		marginTop: 20,
	},
	username: {
		color: 'white',
		fontWeight: 'bold',
		fontSize: 30,
	},
	email: {
		color: 'white',
		fontWeight: 'bold',
		fontSize: 15,
	},
})
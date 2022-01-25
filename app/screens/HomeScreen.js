import React, { useState } from 'react'
import { Image, View, StyleSheet, Text, TouchableOpacity, ScrollView, StatusBar } from 'react-native'
import CustomHeader from '../components/CustomHeader';
import { FontAwesome5 } from '@expo/vector-icons';

export default function HomeScreen({ navigation, screenProps, ...props }) {
    const [pop_ord, set_pop_ord] = useState([
        {
            item_name: 'Pizza',
            image: require('../images/food_images/pizza.jpeg'),
        },
        {
            item_name: 'Hamburger',
            image: require('../images/food_images/hamburger.jpeg'),
        },
        {
            item_name: 'Chicken Soup',
            image: require('../images/food_images/chicken_soup.jpeg'),
        },
        {
            item_name: 'Hotdog',
            image: require('../images/food_images/hotdog.jpeg'),
        },
    ]);
        
    return (
        <View style={{flex: 1, 
        backgroundColor: screenProps.theme.status == 0 ? (screenProps.theme.dark) : 'white',
        marginTop: StatusBar.currentHeight,
        }}>
            <CustomHeader name="Mealverse" screenProps={screenProps} navigation={navigation} />
            <ScrollView>
                <View style={{height: 180, marginTop: 10,}}>
                    <Image source={require('../images/food_images/pizza_bg.jpeg')} style={{height: 180,}} />

                    <View style={{width: '100%', height: '100%', backgroundColor: 'rgba(0, 0, 0, 0.75)', position: 'absolute', padding: 10}}>
                        <Text style={{color: 'white', fontSize: 30, fontWeight: 'bold'}}>Tasty burger and Pizza.
                        </Text>
                        <Text style={{color: 'white', fontSize: 20,}}>Just for you!...</Text>
                        <TouchableOpacity onPress={() => navigation.navigate('place_order')}>
                            <Text style={{color: 'white', fontSize: 20, fontWeight: 'bold', alignSelf: 'center', backgroundColor: 'red', borderRadius: 10, paddingVertical: 5, paddingHorizontal: 20, marginTop: 20,}}>
                                {'Discover  '}
                                <FontAwesome5 name="laugh-beam" size={20} />    
                            </Text>
                        </TouchableOpacity>
                        
                    </View>

                </View>

                <View style={{width: '100%', padding: 10}}>
                    <Text style={{color: screenProps.theme.status == 0 ? 'white' : 'black', fontSize: 20, fontWeight: 'bold'}}>Popular Order</Text>
                    <ScrollView horizontal={true}>
                        
                        {pop_ord.map((item, index) =>
                            <View key={index} style={{width: 100, height: 100, justifyContent: 'center', alignItems: 'center', marginTop: 10, }}>
                            <TouchableOpacity>
                                <Image source={item.image} style={{borderRadius: 50, height: 75, width: 75,}} />
                                </TouchableOpacity>
                            <Text style={{color: screenProps.theme.status == 0 ? 'white' : 'black'}}>{item.item_name}</Text>
                        </View>
                        )}

                    </ScrollView>
                </View>

                <View style={{width: '100%', padding: 10}}>
                    <Text style={{color: screenProps.theme.status == 0 ? 'white' : 'black', fontSize: 20, fontWeight: 'bold'}}>Special Offer</Text>
                    <ScrollView horizontal={true}>
                        
                        {pop_ord.map((item, index) =>
                            <View key={index} style={{width: 145, height: 200, justifyContent: 'center', alignItems: 'center', marginTop: 10, }}>
                            <Image source={item.image} style={{borderRadius: 10, height: 180, width: 135,}} />
                            <Text style={{color: screenProps.theme.status == 0 ? 'white' : 'black'}}>{item.item_name}</Text>
                        </View>
                        )}

                    </ScrollView>
                </View>

                
            </ScrollView>
        </View>
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
import React, { useState, useEffect } from 'react'
import { Image, ImageBackground, View, Text, TouchableOpacity, ScrollView, StatusBar, TextInput, Dimensions } from 'react-native'
import { Entypo, MaterialIcons } from '@expo/vector-icons';
import IonIcon from 'react-native-vector-icons/Ionicons';
import FoodDetailsScreen from './food_details';
import Cart from './Cart';
import { Circle } from 'react-native-animated-spinkit';
import { FocusScrollView } from 'react-native-focus-scroll';

export default function FoodOrderScreen({ navigation, screenProps, ...props }) {
    const [DATA, set_DATA] = useState({});
    const screen_width = Dimensions.get('window').width;
    const screen_height = Dimensions.get('window').height;
    const [isLoading, set_isLoading] = useState();

    const like_setter = (param) => {

        let key = current_food.item_ID;
            if (param == 'like'){
                if (!(cart[current_food.item_ID].user_like)){
                    set_cart((prevState) => 
                    (
                        {
                            ...prevState, [key]: {
                                ...prevState[key], user_like: 1, user_dislike: 0
                            }
                        }
                    ));
                }else{
                    set_cart((prevState) => 
                    (
                        {
                            ...prevState, [key]: {
                                ...prevState[key], user_like: 0
                            }
                        }
                        ));
                    } 
                }else{
                    
                    if (!(cart[current_food.item_ID].user_dislike)){
                        set_cart((prevState) => 
                        (
                            {
                                ...prevState, [key]: {
                                    ...prevState[key], user_like: 0, user_dislike: 1
                                }
                            }
                            ));
                        } 
                        else{
                            set_cart((prevState) => 
                            (
                                {
                                    ...prevState, [key]: {
                                        ...prevState[key], user_dislike: 0
                                    }
                                }
                                ));
                            }
                            
                        }
                    

            }
                
                
    const [current_food, set_current_food] = useState({
        item_name: '',
        item_ID: '',
        item_price: '',
        item_desc: '',
        item_url: '',
        category: '',
    });
    const [cart, set_cart] = useState({});
    const [display, set_display] = useState(0);
    const [focused, setFocused] = useState(false);
    const [discover, setDiscover] = useState({ value: '', error: '' });
    const food_order_details_func = (food) => {
        set_display(1);
        set_current_food(food); //set the current food
    }
    const handle_bg_color = () => {
        if(screenProps.theme.status){
            if(isLoading){
                return 'rgba(255, 255, 255, 0.9)';
            }else{
                return 'rgba(255, 255, 255, 0.99)';
            }
        }else{
            if(isLoading){
                return(screenProps.theme.dark)
            }else{
                return 'rgba(0, 0, 0, 0.99)';
            }
        }
    }
    const handle_add_cart = (food) => {
        let key = food.item_ID;
        if(cart[food.item_ID] != undefined){ //if the food is already in cart
            set_cart((prevState) => 
            (
                {
                    ...prevState, [key]: {
                        ...prevState[key], quantity: parseInt(cart[food.item_ID].quantity) + 1 //increment the quantity by 1
                    }
                }
            ));
        }else{ //if the food is not yet in cart
            let food_props = food;
            food_props['quantity'] = 1; //set the quantity to 1
            set_cart((prevState) => 
            (
                {
                    ...prevState, [key]: food_props,
                }
                ));
            }
    }

    const handle_remove_cart = (food) => {
        let key = food.item_ID;
        if((cart[food.item_ID] != undefined) && cart[food.item_ID].quantity > 0){ //if the food is already in cart
            let new_quantity = (parseInt(cart[food.item_ID].quantity)) - 1;
            set_cart((prevState) => 
            (
                {
                    ...prevState, [key]: {
                        ...prevState[key], quantity: new_quantity //decrease the quantity by 1
                    }
                }
                ));
                if(new_quantity == 0){
                    handle_delete_item(food);
        }
        
    }
}
    const handle_delete_item = (food) => {
        if(cart[food.item_ID] != undefined){
            let key = food.item_ID;
            let pcart = cart;
            delete pcart[key];
            set_cart(pcart);
        }
        }
        

useEffect(() => {
    set_isLoading(true);
    loadData();
    setInterval(loadData, 10000);
}, []);
const loadData = () => {
    let APIURL = screenProps.apiURL + '/mealverse/food_order.php';
    let headers = {
        'Accept': 'application/json',
        'Content-Type': 'application/json'
    };
			
			let data = {
                op_code: 1,
			};
                fetch(APIURL, {
                    method: 'POST',
				headers: headers,
				body: JSON.stringify(data)
			}
			)
				.then((response) => response.json())
				.then((response) => {
                    set_isLoading(false);
                    set_DATA(response);
				})
				.catch((error) => {
                    // alert('Error: ' + error);
				})
            }
        if (display == 0){
                return(
                    <ImageBackground source={require('../images/restaurant_bg.jpeg')} style={{position: 'absolute', width: screen_width, height: screen_height, flex: 1}}  >
                    <View style={{flex: 1, 
            backgroundColor: handle_bg_color(),
            
            }}>
                <View style={{height: screen_height, marginTop: StatusBar.currentHeight,}}>
                <View style={{width: '100%', height: 35, backgroundColor: screenProps.theme.status ? 'white' : 'black', justifyContent: 'center', borderRadius: 50, marginTop: 10, shadowColor: 'black', shadowOpacity: 1, elevation: 10,}}>

                <TouchableOpacity onPress={() => navigation.openDrawer()} style={{position: 'absolute', marginLeft: 10, }}>
                    <MaterialIcons name='menu' size={25} color={screenProps.theme.status ? 'black' : 'white'} />
                </TouchableOpacity>

                        <Text style={{color: screenProps.theme.status == 0 ? 'white' : 'black', fontSize: 23, alignSelf: 'center',}}>Explore Food</Text>

                    <View style={{justifyContent: 'center', alignItems: 'center', alignSelf: 'flex-end', position: 'absolute'}}>
                        
                    <View style={{position: 'absolute', alignSelf: 'flex-end', paddingHorizontal: 5,}}>
                        <TouchableOpacity onPress={() => set_display(2)}>
                            <Entypo name="shopping-cart" size={35} color={screenProps.theme.status ? 'black' : 'blue'} />
                            <Text style={{position: 'absolute', justifyContent: 'center', alignSelf: 'center', color: 'white', fontWeight: 'bold',}}>{Object.keys(cart).length}</Text>
                        </TouchableOpacity>
                    </View>
                    
                    </View>
                </View>
                
                        <View style={{paddingHorizontal: 10, justifyContent: 'center',}}>
                            <TouchableOpacity style={{alignSelf: 'flex-start', paddingHorizontal: 15, marginTop: 15, position: 'absolute', elevation: 15,}}>
                                <IonIcon name="search-sharp" size={25} color="black" />
                            </TouchableOpacity>
    
                            <TextInput
                                placeholder={"Discover"}
                                returnKeyType="next"
                                value={discover.value}
                                onChangeText={(text) => setDiscover({ value: text, error: '' })}
                                onFocus={() => setFocused(true)}
                                onBlur={() => setFocused(false)}
                                error={!!discover.error}
                                errorText={discover.error}
                                style={{width: '100%', height: 50, backgroundColor: screenProps.theme.status ? 'white' : 'cyan', shadowColor: 'black', shadowOpacity: 1, elevation: 10, borderRadius: 30, paddingHorizontal: 40, fontSize: 20,}}
                            />
                            {focused && 
                            <TouchableOpacity onPress={() => setDiscover('')} style={{alignSelf: 'flex-end', paddingHorizontal: 15, position: 'absolute', elevation: 15,}}>
                                <MaterialIcons name="cancel" size={25} color="red" />
                            </TouchableOpacity>
                            }
                        </View>
                <View style={{height: screen_height, justifyContent: 'center',}}>
                <React.Fragment>
                        {
                            isLoading ? 
                    <View style={{alignSelf: 'center', position: 'absolute', justifyContent: 'center',}}>
                    <Circle size={100} color={screenProps.theme.status ? 'green' : 'blue'} style={{alignSelf: 'center', position: 'absolute',}} />
                    <Image source={require('../../assets/icon.png')} style={{width: 50, height: 50, borderRadius: 20, position: 'absolute', alignItems: 'center', marginLeft: -25,}} />
                </View> :
                
                <ScrollView>
                <View style={{width: '100%', padding: 10, shadowColor: 'black', shadowOpacity: 1, elevation: 10,}}>
                    <Text style={{color: screenProps.theme.status == 0 ? 'white' : 'black', fontSize: 20, fontWeight: 'bold'}}>What would you like to eat?</Text>
                    <ScrollView horizontal={true}>
                        
                        {Object.keys(DATA).map((item, index) =>
                            <View key={index} style={{width: 100, height: 100, justifyContent: 'center', alignItems: 'center', marginTop: 10, }}>
                            <TouchableOpacity>
                                <Image source={{uri: eval(DATA[item])[0].item_URL}} style={{borderRadius: 50, height: 75, width: 75,}} />
                                </TouchableOpacity>
                            <Text style={{color: screenProps.theme.status == 0 ? 'white' : 'black'}}>{item}</Text>
                        </View>
                        )}

                    </ScrollView>
                </View>
                    {
                        
                        Object.keys(DATA).map((key, index) => 
                        <View key={index} style={{width: '100%', height: 400, }}>


                        <View style={{width: '100%', justifyContent: 'center', alignItems: 'center', marginBottom: 20,}}>

                        <View style={{borderBottomColor: screenProps.theme.status ? 'black' : 'white', borderBottomWidth: 3, borderRadius: 20, position: 'absolute', alignSelf: 'flex-start', width: 130,}}/>

                        <Text style={{color: screenProps.theme.status ? 'black' : 'black', backgroundColor: screenProps.theme.status ? 'white' : 'rgba(255, 255, 255, .5)', borderRadius: 50, fontSize: 20, fontWeight: 'bold', paddingHorizontal: 5, elevation: 10,}}>
                            {key}
                        </Text>

                        <View style={{borderBottomColor: screenProps.theme.status ? 'black' : 'white', borderBottomWidth: 3, borderRadius: 20, position: 'absolute', alignSelf: 'flex-end', width: 130,}}/>

                        </View>

                        <FocusScrollView threshold={20} horizontal={true} contentContainerStyle={{alignItems: 'center',}}>
                            {
                                eval(DATA[key]).map((food, index) => 
                                <View key={index} style={{width: 225, height: 300, backgroundColor: screenProps.theme.status ? 'rgba(255, 255, 255, 0.9)' : 'rgba(37, 41, 51, 0.95)', shadowColor: 'black', shadowOpacity: 1, elevation: 10, marginHorizontal: 5, padding: 15, borderRadius: 10, justifyContent: 'center', flexDirection: 'row',}}>
                                    <View style={{backgroundColor: screenProps.theme.status ? 'rgba(255, 255, 255, 0.5)' : 'rgba(37, 41, 51, 0.95)', width: '100%', height: 30, position: 'absolute', justifyContent: 'center', borderRadius: 15, elevation: 10,}}>
                                        <Text style={{position: 'absolute', color: screenProps.theme.status ? 'rgb(27, 31, 41)' : 'white', alignSelf: 'center',}}>{food.item_name}</Text>

                                        <Text style={{position: 'absolute', color: screenProps.theme.status ? 'rgb(27, 31, 41)' : 'white', fontWeight: 'bold', fontSize: 15, marginLeft: 5,}}>{cart[food.item_ID] == undefined ? '' : cart[food.item_ID].quantity}</Text>
                                    </View>

                                    <Text style={{position: 'absolute', color: screenProps.theme.status ? 'rgb(27, 31, 41)' : 'white', marginTop: 30, elevation: 10, backgroundColor: screenProps.theme.status ? 'rgba(255, 255, 255, 0.5)' : 'rgba(27, 31, 41, 0.5)', borderRadius: 10, paddingHorizontal: 5}}>{'N' + food.item_price}</Text>

                                    <Image source={{uri: food.item_URL}} style={{position: 'absolute', width: '100%', height: '100%', alignSelf: 'center', borderRadius: 15, marginTop: 0,}} />

                                    <TouchableOpacity onPress={() => food_order_details_func(food)} style={{position: 'absolute', marginTop: 210,}}>
                                        <Text style={{color: 'white', fontSize: 20, fontWeight: 'bold', alignSelf: 'center', backgroundColor: 'red', borderRadius: 10, paddingVertical: 5, paddingHorizontal: 20, marginTop: 20,}}>
                                            {'Details'}
                                        </Text>
                                    </TouchableOpacity>

                                    <TouchableOpacity onPress={() => handle_add_cart(food)} style={{width: 30, height: 30, backgroundColor: 'white', shadowColor: 'black', shadowOpacity: 1, elevation: 10, borderRadius: 100, alignItems: 'center', position: 'absolute', justifyContent: 'center', alignSelf: 'flex-end', marginBottom: 5,}}>
                                        <IonIcon name='add' size={25} color="black"/>
                                    </TouchableOpacity>

                                </View>
                                )
                            }
                        </FocusScrollView>
                        </View>
                        )
                        
                    }

                </ScrollView>
                }
                <Text>{'\n\n\n\n\n\n'}</Text>
               </React.Fragment>
                </View>
                </View>
                    
        </View>
        </ImageBackground>
    );
}

if (display == 1){
    return(
        <FoodDetailsScreen current_food={current_food} like_setter={like_setter} cart={cart} set_display={() => set_display(0)} handle_add_cart={() => handle_add_cart(current_food)} handle_remove_cart={() => handle_remove_cart(current_food)} screenProps={screenProps} />
    );
}

if (display == 2){
    return(
        <Cart navigation={navigation} handle_delete_item={handle_delete_item} screenProps={screenProps} cart={cart} set_cart={set_cart} set_display={() => set_display(0)} handle_add_cart={handle_add_cart} handle_remove_cart={handle_remove_cart} />
    );
}

}
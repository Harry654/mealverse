import React, { useState } from 'react'
import { Image, View, Text, TouchableOpacity, ScrollView, StatusBar, TextInput } from 'react-native'
import { MaterialIcons } from '@expo/vector-icons';
import { Fold } from 'react-native-animated-spinkit';
import IonIcon from 'react-native-vector-icons/Ionicons';

export default function Cart({ cart, set_cart, handle_add_cart, handle_remove_cart, handle_delete_item, navigation, set_display, screenProps }) {
    const [isLoading, set_isLoading] = useState(false);
    const cart_total_func = (cart) => {
        let amount = 0;
        Object.keys(cart).forEach((food) => {
            let quantity = cart[food].quantity;
            let item_price = cart[food].item_price;
            amount += (quantity * item_price);
        })
        return(amount);
    }
   let cart_total_val = cart_total_func(cart);
    const onPlaceOrderPressed = () => {
        if (Object.keys(cart).length){
            set_isLoading(true);
        let APIURL = screenProps.apiURL + '/mealverse/food_order.php';
        let headers = {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
        };

        let data = {
            op_code: 2,
            cust_ID: screenProps.user_data.cust_ID,
            cart: cart,
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
                alert(response.msg);
            })
            .catch((error) => {
                set_isLoading(false);
                alert('Something went wrong. Please try again');
                // alert('Error: ' + error);
            })
            
        }else{
            alert('Cart is empty!!');
        }
}
    return(
        <View style={{flex: 1, backgroundColor: screenProps.theme.status ? 'white' : 'black',}}>
            <View style={{width: '100%', height: 35, backgroundColor: screenProps.theme.status ? 'white' : 'black', justifyContent: 'center', borderRadius: 50, marginTop: 10, shadowColor: 'black', shadowOpacity: 1, elevation: 10, marginTop: StatusBar.currentHeight,}}>

            <TouchableOpacity onPress={set_display} style={{position: 'absolute', marginLeft: 10, }}>
                <MaterialIcons name='arrow-back' size={25} color={screenProps.theme.status ? 'black' : 'white'} />
            </TouchableOpacity>

                    <Text style={{color: screenProps.theme.status == 0 ? 'white' : 'black', fontSize: 23, alignSelf: 'center',}}>Cart Total: {'N' + cart_total_val}</Text>

                <View style={{justifyContent: 'center', alignItems: 'center', alignSelf: 'flex-end', position: 'absolute'}}>

                </View>
            </View>
                {isLoading && 
                <View style={{width: '100%', height: '100%', alignSelf: 'center', alignItems: 'center', justifyContent: 'center', borderRadius: 25, position: 'absolute', elevation: 15, backgroundColor: 'rgba(0, 0, 0, 0.95)',}}>
                    <Fold size={50} color="green" />
                    <Text style={{color: 'white',}}>Processing Order...</Text>
                </View>}
            <ScrollView>
                {
                Object.keys(cart).map((item, index) => (
                    <View key={index} style={{width: '95%', height: 200, borderRadius: 20, backgroundColor: screenProps.theme.status ? 'white' : 'rgb(27, 31, 41)', elevation: 10, marginTop: 20, alignSelf: 'center', padding: 5,}}>
                        <TouchableOpacity onPress={() => handle_delete_item(cart[item])} style={{alignSelf: 'flex-end', position: 'absolute', elevation: 15,}}>
                            <MaterialIcons name="cancel" size={25} color="red" />
                        </TouchableOpacity>
                        <View style={{width: '90%', height: 80, justifyContent: 'center',}}>
                            <Image source={{uri: cart[item].item_URL}} style={{width: 80, height: 80, borderRadius: 20,}} />
                            <Text style={{color: screenProps.theme.status ? 'black' : 'white', position: 'absolute', alignSelf: 'flex-end', paddingHorizontal: 10,}}>{cart[item].item_name}</Text>
                        </View>
                        <View style={{width: '90%', height: 40, backgroundColor: 'transparent', justifyContent: 'center', alignSelf: 'center',}}>
                            <Text style={{color: screenProps.theme.status ? 'black' : 'white', position: 'absolute', fontWeight: 'bold', alignSelf: 'flex-start',}}>Price</Text>
                            <Text style={{color: screenProps.theme.status ? 'black' : 'white', position: 'absolute', fontWeight: 'bold', alignSelf: 'center',}}>Qty</Text>
                            <Text style={{color: screenProps.theme.status ? 'black' : 'white', position: 'absolute', fontWeight: 'bold', alignSelf: 'flex-end',}}>Total</Text>
                        </View>

                        <View style={{borderBottomColor: screenProps.theme.status ? 'black' : 'white', borderBottomWidth: 1, borderRadius: 20, alignSelf: 'center', width: '90%',}}/>

                        <View style={{width: '90%', height: 40, backgroundColor: 'transparent', justifyContent: 'center', alignSelf: 'center',}}>
                            <Text style={{color: screenProps.theme.status ? 'black' : 'white',position: 'absolute', alignSelf: 'flex-start',}}>{'N' + cart[item].item_price}</Text>
                            
                            <View style={{width: 80, justifyContent: 'center', alignSelf: 'center', position: 'absolute',}}>
                                <TouchableOpacity onPress={() => handle_add_cart(cart[item])} style={{position: 'absolute', borderRadius: 50, backgroundColor: screenProps.theme.status ? 'black' : 'white', alignSelf: 'flex-start',}}>
                                    <IonIcon name="add" size={20} color={screenProps.theme.status ? 'white' : 'black'} />
                                </TouchableOpacity>
                                <Text style={{color: screenProps.theme.status ? 'black' : 'white',position: 'absolute', alignSelf: 'center',}}>{cart[item].quantity + ' pcs'}</Text>
                                <TouchableOpacity onPress={() => handle_remove_cart(cart[item])} style={{position: 'absolute', borderRadius: 50, backgroundColor: screenProps.theme.status ? 'black' : 'white', alignSelf: 'flex-end',}}>
                                    <IonIcon name="remove" size={20} color={screenProps.theme.status ? 'white' : 'black'} />
                                </TouchableOpacity>
                            </View>

                            <Text style={{color: screenProps.theme.status ? 'black' : 'white',position: 'absolute', alignSelf: 'flex-end',}}>{'N' + (cart[item].item_price * cart[item].quantity)}</Text>
                        </View>

                    </View>
                ))
            }
            </ScrollView>
            
            <TouchableOpacity onPress={() => onPlaceOrderPressed()} style={{width: '95%', height: 45, alignSelf: 'center', alignItems: 'center', justifyContent: 'center', borderRadius: 50, backgroundColor: 'red', marginBottom: 20, elevation: 20,}}>
                <Text style={{color: screenProps.theme.status ? 'white' : 'white',}}>Place Order</Text>
            </TouchableOpacity>
        </View>
    );

}
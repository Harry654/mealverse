import React from 'react'
import { Image, View, Text, TouchableOpacity, ScrollView, StatusBar } from 'react-native'
import { AntDesign, MaterialIcons } from '@expo/vector-icons';
import IonIcon from 'react-native-vector-icons/Ionicons';

export default function FoodDetailsScreen({ like, dislike, like_setter, current_food, cart, set_display, handle_add_cart, handle_remove_cart, screenProps, ...props }) {
    const handle_return_like = (param) => {
        if(param == 'like'){
                if(cart[current_food.item_ID].user_like){
                    return parseInt(cart[current_food.item_ID].likes_) + 1;
                }else{
                    return cart[current_food.item_ID].likes_;
                }
        }else{
                if(cart[current_food.item_ID].user_dislike){
                    return parseInt(cart[current_food.item_ID].dislikes_) + 1;
                }else{
                    return cart[current_food.item_ID].dislikes_;
                }

        }
    }
    const handle_fill = (param) => {
        if(param == 'like'){
                if(cart[current_food.item_ID].user_like){
                    return 'like1';
                }else{
                    return 'like2';
                }
        }else{
                if(cart[current_food.item_ID].user_dislike){
                    return 'dislike1';
                }else{
                    return 'dislike2';
                }

        }
    }
    return(
        <View style={{width: '100%', flex: 1,}}>
            <View style={{width: '100%', height: '40%', borderRadius: 20, backgroundColor: 'white',}}>
                <Image source={{uri: current_food.item_URL}} style={{width: '100%', height: '100%',}} />

                <TouchableOpacity onPress={set_display} style={{position: 'absolute', marginLeft: 10, marginTop: StatusBar.currentHeight, backgroundColor: 'black', borderRadius: 20,}}>
                    <MaterialIcons name='arrow-back' size={25} color="white" />
                </TouchableOpacity>

            </View>
            <ScrollView style={{width: '100%', height: '60%', paddingHorizontal: 10, backgroundColor: screenProps.theme.status ? 'white' : 'black', borderTopRightRadius: 30, borderTopLeftRadius: 30}}>
                <ScrollView nestedScrollEnabled={true} style={{width: '100%', height: 60, }} contentContainerStyle={{justifyContent: 'center',}}>
                    <Text style={{fontSize: 35, fontWeight: 'bold', color: screenProps.theme.status ? 'black' : 'white',}}>{current_food.item_name}</Text>

                    <Text style={{backgroundColor: 'white', borderRadius: 50, fontSize: 20, fontWeight: 'bold', elevation: 10, fontSize: 15, alignSelf: 'flex-end', paddingHorizontal: 10, position: 'absolute',}}>{'N' + current_food.item_price}</Text>

                </ScrollView>
                <View style={{marginTop: 20, elevation: 2, backgroundColor: screenProps.theme.status ? 'white' : 'rgb(27, 31, 41)', borderRadius: 15, paddingHorizontal: 20,}}>
                    <Text style={{fontWeight: 'bold', color: screenProps.theme.status ? 'black' : 'white',}}>About this food</Text>
                    <Text style={{color: screenProps.theme.status ? 'black' : 'white',}}>{current_food.item_desc}</Text>
                </View>

                <View style={{marginTop: 20, elevation: 2, backgroundColor: screenProps.theme.status ? 'white' : 'rgb(27, 31, 41)', borderRadius: 15, paddingHorizontal: 20,}}>
                    <Text style={{fontWeight: 'bold', color: screenProps.theme.status ? 'black' : 'white',}}>Ingredients</Text>
                    <Text style={{color: screenProps.theme.status ? 'black' : 'white',}}>{current_food.ingredients}</Text>
                </View>

                <View style={{backgroundColor: screenProps.theme.status ? 'cyan' : 'rgb(27, 31, 41)', borderRadius: 50, width: 120, height: 50, justifyContent: 'center', paddingHorizontal: 10, alignSelf: 'center', marginTop: 10,}}>
                    <TouchableOpacity onPress={handle_add_cart} style={{position: 'absolute', backgroundColor: (screenProps.theme.status ? 'white' : 'rgb(47, 51, 61)'), borderRadius: 100, height: 40, width: 40, alignItems: 'center', justifyContent: 'center', elevation: 5,}}>
                        <IonIcon name='add' size={30} color={screenProps.theme.status ? 'black' : 'white'}/>
                    </TouchableOpacity>

                    <Text style={{position: 'absolute', fontSize: 20, alignSelf: 'center', color: screenProps.theme.status ? 'black' : 'white'}}>{cart[current_food.item_ID] != undefined ? cart[current_food.item_ID].quantity : 0}</Text>

                    <TouchableOpacity onPress={handle_remove_cart} style={{position: 'absolute', backgroundColor: cart[current_food.item_ID] != undefined ?  (screenProps.theme.status ? 'white' : 'rgb(47, 51, 61)') : 'red', borderRadius: 100, height: 40, width: 40, alignItems: 'center', justifyContent: 'center', elevation: 5, alignSelf: 'flex-end',}}>
                        <IonIcon name='remove' size={30} color={screenProps.theme.status ? 'black' : 'white'}/>
                    </TouchableOpacity>
                </View>
                <View style={{ height: 40, width: '100%',  justifyContent: 'center', marginTop: 30, marginBottom: 30,}}>
                    <View style={{ width: 60, alignItems: 'center', justifyContent: 'center',}}>
                        <IonIcon name='time-outline' size={30} color={screenProps.theme.status ? 'black' : 'white'}/>
                        <Text style={{color: screenProps.theme.status ? 'black' : 'white'}}>{current_food.cook_time + ' mins'}</Text>
                    </View>

                    <View style={{ width: 60, alignItems: 'center', justifyContent: 'center', position: 'absolute', alignSelf: 'center',}}>
                        <TouchableOpacity onPress={() => {cart[current_food.item_ID] != undefined ? like_setter('like') : alert('Item has to be added to cart!')}}>
                            <AntDesign name={cart[current_food.item_ID] != undefined ? handle_fill('like') : 'like2'} size={30} color={screenProps.theme.status ? 'black' : 'white'} />
                        </TouchableOpacity>
                        <Text style={{color: screenProps.theme.status ? 'black' : 'white'}}>{cart[current_food.item_ID] != undefined ? handle_return_like('like') : current_food.likes_}</Text>
                    </View>

                    <View style={{ width: 60, alignItems: 'center', justifyContent: 'center', position: 'absolute', alignSelf: 'flex-end',}}>
                    <TouchableOpacity onPress={() => {cart[current_food.item_ID] != undefined ? like_setter('dislike') : alert('Item has to be added to cart!')}}>
                            <AntDesign name={cart[current_food.item_ID] != undefined ? handle_fill('dislike') : 'dislike2'} size={30} color="red"/>
                        </TouchableOpacity>
                        <Text style={{color: screenProps.theme.status ? 'black' : 'white'}}>{cart[current_food.item_ID] != undefined ? handle_return_like('dislike') : current_food.dislikes_}</Text>
                    </View>
                </View>

            </ScrollView>
        </View>
    );
}
import React, { useState } from 'react'
import { Image, ImageBackground, View, StyleSheet, Text, TouchableOpacity, ScrollView, StatusBar, Dimensions } from 'react-native'
import ParkingSlots from './ParkingSlots'
import CustomHeader from '../components/CustomHeader';

export default function ParkingLot_infoScreen({ navigation, screenProps, ...props }) {
    const [display, set_display] = useState(0);
    const [DATA, set_DATA] = useState([]);
    const screen_width = Dimensions.get('window').width;
    const screen_height = Dimensions.get('window').height;
    const lotA = [];
    const lotB = [];
    const [slots_added, set_slots_added] = useState([]);
    let carURI = screenProps.theme.status ? require('../images/car_light.png') : require('../images/car_dark.png');
    let available = 0;
    let handle_add_slot = (slot) => {
        if(!slots_added.includes(slot.position)) {
            slots_added.push(slot.position);
        }else{
            alert('Slot ' + slot.position + ' has already been added!');
        }
    }

    let handle_remove_slot = (slot) => {
        set_slots_added(slots_added.filter(slot_info => slot_info != slot));
    }
    
    let handle_render_slots = (slot, index) => {
        if(slots_added.length){
            return(
                <View key={index} style={{flexDirection: 'row', paddingVertical: 8,}}>
                <Text>{(index+1) + '. ' + slot + '   '}</Text>
                <TouchableOpacity>
                    <Text onPress={() => handle_remove_slot(slot)} style={{borderRadius: 8, backgroundColor: 'rgba(255, 0, 0, 0.85)', paddingHorizontal: 5,}}>Remove</Text>
                </TouchableOpacity>
                </View>
            );
        }else{
            return('No slots added yet!');
        }
    }
    let render_added_slots = () => {
        return(
            slots_added.length ? slots_added.map((slot, index) => handle_render_slots(slot, index)) : <Text>No slots added yet</Text>
        );
    }
    let render_added_slots_val =  render_added_slots();

    let APIURL = screenProps.apiURL + '/mealverse/parkingLot_info.php';
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
                    set_DATA(response);
				})
				.catch((error) => {
					// alert('Error: ' + error);
				})
        

                DATA.forEach((item) => {
                    if (item.position[0] == 'A'){
                        lotA.push(item);
                        if(!parseInt(item.status)){
                            available++;
                        }
                    }else{
                        lotB.push(item);
                        if(!parseInt(item.status)){
                            available++;
                        }
                    }
                });

	if(display == 0){
        return (
            <ImageBackground source={require('../images/parking_bg_2.jpeg')} style={{position: 'absolute', width: screen_width, height: screen_height, flex: 1}}  >
                    <ScrollView style={{flex: 1, 
            backgroundColor: screenProps.theme.status ? (screenProps.theme.light) : (screenProps.theme.dark),
            
            }}>
                <View style={{height: screen_height, marginTop: StatusBar.currentHeight,}}>

            <CustomHeader name="Parking Reservation" screenProps={screenProps} navigation={navigation} / >
            <TouchableOpacity style={{width: 25, marginLeft: '90%', alignItems: 'center', justifyContent: 'center', borderRadius: 25, backgroundColor: 'white',}}>
                <Text onPress={() => set_display(1)} style={{color: screenProps.theme.status == 0 ? (screenProps.theme.dark) : (screenProps.theme.light), fontSize: 20, fontWeight: 'bold',}}>{slots_added.length}</Text>
            </TouchableOpacity>

            <View style={{width: '90%', alignItems: 'center', justifyContent: 'center', backgroundColor: 'white', borderRadius: 8, marginLeft: '5%',}}>
                <Text style={{ fontWeight: 'bold', fontSize: 20, color: screenProps.theme.status == 0 ? (screenProps.theme.dark) : (screenProps.theme.light),}}>
                    {'Available slots: ' + available + '/' + DATA.length}
                </Text>
            </View>
		
            <ScrollView style={styles.parking_category} horizontal={true}>
                {lotA.map((slot, index) => 
                <ScrollView key={index} nestedScrollEnabled={true} contentContainerStyle={{
                    alignItems: 'center', 
                    justifyContent: 'center', 
                }} style={styles.slot}>
                    <Text style={{fontWeight: 'bold', padding: 15,}}>{slot.position}</Text>
                    {parseInt(slot.status) ? 
                    <React.Fragment>
                        <Image style={{height: 100, width: 75, borderRadius: 15}} source={carURI} />
                        <Text style={{padding: 15}}>Occupied</Text>
                    </React.Fragment> : 
                    <React.Fragment>
                        <Text style={{padding: 15}}>Available</Text>
                        <TouchableOpacity><Text style={{padding: 1, borderRadius: 8, borderColor: 'black', borderBottomWidth: 2, borderTopWidth: 2,}} onPress={() => handle_add_slot(slot)}>Add</Text></TouchableOpacity>
                    </React.Fragment>}
                </ScrollView>)}
            </ScrollView>


            <ScrollView style={styles.parking_category} horizontal={true}>
                {lotB.map((slot, index) => 
                <ScrollView key={index} nestedScrollEnabled={true} contentContainerStyle={{
                    alignItems: 'center', 
                    justifyContent: 'center', 
                }} style={styles.slot}>
                    <Text style={{fontWeight: 'bold', padding: 15,}}>{slot.position}</Text>
                    {parseInt(slot.status) ? 
                    <React.Fragment>
                        <Image style={{height: 100, width: 75, borderRadius: 15}} source={carURI} />
                        <Text style={{padding: 15}}>Occupied</Text>
                    </React.Fragment> : 
                    <React.Fragment>
                        <Text style={{padding: 15}}>Available</Text>
                        <TouchableOpacity><Text style={{padding: 1, borderRadius: 8, borderColor: 'black', borderBottomWidth: 2, borderTopWidth: 2,}} onPress={() => handle_add_slot(slot)}>Add</Text></TouchableOpacity>
                    </React.Fragment>}
                </ScrollView>)}
            </ScrollView>
			

            </View>
		</ScrollView>
        </ImageBackground>
	)
    }

    if(display == 1){
        return(
            <ScrollView style={
                styles.main, 
                {
                backgroundColor: screenProps.theme.status == 0 ? (screenProps.theme.dark) : (screenProps.theme.light),
                }
            }>
            <ParkingSlots screenProps={screenProps} handle_render_slots={() => handle_render_slots()} render_added_slots_val={render_added_slots_val} set_display={() => set_display(0)} slots_added={slots_added} />
            </ScrollView>
        );
    }

}

const styles = StyleSheet.create({
    main: {
        width: '100%',
        height: '100%',
        flex: 1,
    },
    parking_category: { 
        width: '100%',
        height: '50%',
    },
    slot: {
        width: 150,
        height: 200,
        backgroundColor: 'rgba(255, 255, 255, 0.6)',
        borderRadius: 8,
        marginTop: 10,
        marginBottom: 10,
        marginLeft: 10,
        marginRight: 10,
    },
    date_time: {
        backgroundColor: 'black', 
        color: 'yellow', 
        borderRadius: 15, 
        padding: 5,
    },
	row: {
		flexDirection: 'row',
		marginTop: 4,
	},
	link: {
		fontWeight: 'bold',
		color: 'black',
	},
})
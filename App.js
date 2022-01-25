import { Image } from 'react-native';
import React, { useState } from 'react';
import RegisterScreen from './app/screens/signupScreen';
import LoginScreen from './app/screens/loginScreen';
import DrawerComponent from './app/components/drawer';
import HomeScreen from './app/screens/HomeScreen';
import FoodOrderScreen from './app/screens/FoodOrderScreen';
import ReserveTableScreen from './app/screens/ReserveTable';
import ParkingLot_infoScreen from './app/screens/parkingLot_info';
import OrderHistoryScreen from './app/screens/OrderHistory';
import AboutScreen from './app/screens/About';
import ReviewsScreen from './app/screens/reviews';
import { NavigationContainer, useNavigation } from '@react-navigation/native'; 
import { createDrawerNavigator } from '@react-navigation/drawer';
import { MaterialIcons, Entypo, FontAwesome5 } from '@expo/vector-icons';
import IonIcon from 'react-native-vector-icons/Ionicons';

export default function App() {
  const [user_data, set_user_data] = useState({
    isLoggedIn: 0,
    cust_ID: 2,
    username: '', 
    phone_number: '', 
    email: '', 
    enrollment_date: '',
    orders_placed: '',
  });
  const [isLoggedIn, set_isLoggedIn] = useState(0);
  const [theme, setTheme] = useState({
    status: 1, 
    dark: 'rgba(0, 0, 0, .85)', 
    light: 'rgba(0, 0, 255, .5)',
  });


  let parent_data = {
    apiURL: 'https://harrison-calculator.000webhostapp.com', 
    theme: theme, 
    user_data: user_data,
  }
  const update_user_info = (log_val, cust_ID, username, phone_number, email, enrollment_date, orders_placed) => {
		set_user_data({
      isLoggedIn: log_val, 
      cust_ID: cust_ID, 
      username: username, 
      phone_number: phone_number, 
      email: email, 
      enrollment_date: enrollment_date,
      orders_placed: orders_placed,
    });
	}
  const [isEnabled, set_isEnabled] = useState(theme.status == 1 ? true : false);
  const update_theme = () => {
    set_isEnabled(!isEnabled);
    setTheme({
      status: !theme.status,
      dark: 'rgba(0, 0, 0, .85)', 
      light: 'rgba(0, 0, 255, .5)',
    });
  }
  const Drawer = createDrawerNavigator();
  if (!(user_data.isLoggedIn)){
    return(
      <NavigationContainer>
      <Drawer.Navigator 
      initialRouteName="Login"
      screenOptions={{
        headerStyle: {
          backgroundColor: 'blue',
        }
      }}
      >
      <Drawer.Screen name="Login" 
      children={({navigation, props}) => <LoginScreen navigation={navigation} screenProps={parent_data} handle_update_user_info={update_user_info} />} 
      options={{
        title: 'Login',
          drawerIcon: ({focused, size, color}) => (
            <Image 
              source={require('./app/images/login.png')}
              style={{height: size+20, width: size+20, borderRadius: 20,}}
            />
          )
         }}/>

        <Drawer.Screen name="Register" 
        children={({navigation, props}) => <RegisterScreen navigation={navigation} screenProps={parent_data} />} 
        options={{
          title: 'Register',
          drawerIcon: ({focused, size, color}) => (
            <Image 
              source={require('./app/images/signIn.png')}
              style={{height: size+20, width: size+20, borderRadius: 20,}}
            />
          )
          
          }} />
      </Drawer.Navigator>

    </NavigationContainer>
    );
  }else{
    return (
      <NavigationContainer>

      

      <Drawer.Navigator 
      drawerContent={({navigation, state, descriptors, props}) => <DrawerComponent {...props} navigation={navigation} state={state} descriptors={descriptors} screenProps={parent_data} update_theme={update_theme} isEnabled={isEnabled} />}
      initialRouteName="Home"
      screenOptions={{
        headerShown: false,
        drawerActiveBackgroundColor: theme.status ? theme.light : 'white',
        drawerActiveTintColor: theme.status ? 'white' : 'black',
        drawerInactiveTintColor: theme.status ? 'black' : 'white',
        drawerStyle: {
          backgroundColor: theme.status ? 'cyan' : 'rgb(27, 31, 41)',
          borderRadius: 8,
        },
        headerStyle: {
          backgroundColor: theme.status ? theme.light : theme.dark,
        },
        headerTitleStyle: {
          color: !theme.status ? 'white' : theme.dark,
        },
      }}
      >

      <Drawer.Screen name="Home" 
      children={({navigation, props}) => <HomeScreen {...props} navigation={navigation} screenProps={parent_data} />} 
      options={{
          title: 'Home',
          drawerIcon: ({focused, size, color}) => (
            <IonIcon name='home-outline' size={25} color={color}/>
          )
          
          }} />

      <Drawer.Screen name="place_order" 
      children={({navigation, props}) => <FoodOrderScreen {...props} navigation={navigation} screenProps={parent_data} />} 
      options={{
          title: 'Place Order',
          drawerIcon: ({focused, size, color}) => (
            <IonIcon name='fast-food-outline' size={25} color={color}/>
          )
          
          }} />

      <Drawer.Screen name="Reserve Table" 
      children={(props) => <ReserveTableScreen {...props} screenProps={parent_data} />} 
      options={{
          title: 'Reserve Table',
          drawerIcon: ({focused, size, color}) => (
            <IonIcon name='add' size={25} color={color}/>
          )
          
          }} />


      <Drawer.Screen name="parkingLot_info" 
      children={({navigation, props}) => <ParkingLot_infoScreen {...props} navigation={navigation} screenProps={parent_data} />} 
      options={{
          title: 'Parking Lot',
          drawerIcon: ({focused, size, color}) => (
            <FontAwesome5 name='car' size={25} color={color}/>
          )
          
          }} />

      <Drawer.Screen name="Order history" 
      children={(props) => <OrderHistoryScreen {...props} screenProps={parent_data} />} 
      options={{
          title: 'Order history',
          drawerIcon: ({focused, size, color}) => (
            <MaterialIcons name='history' size={25} color={color}/>
          )
          
        }} />
        
              <Drawer.Screen name="Reviews" 
              children={(props) => <ReviewsScreen {...props} screenProps={parent_data} />} 
              options={{
                  title: 'Reviews',
                  drawerIcon: ({focused, size, color}) => (
                    <IonIcon name='star-outline' size={25} color={color}/>
                  )
                  
                  }} />

      <Drawer.Screen name="About Mealverse" 
      children={(props) => <AboutScreen {...props} screenProps={parent_data} />} 
      options={{
          title: 'About Mealverse',
          drawerIcon: ({focused, size, color}) => (
            <Entypo name='info' size={25} color={color}/>
          )
          
          }} />

      </Drawer.Navigator>

    </NavigationContainer>
);
}
}


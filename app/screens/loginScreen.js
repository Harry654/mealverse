import React, { useState } from 'react'
import { View, StyleSheet, TouchableOpacity, ScrollView } from 'react-native'
import { Text } from 'react-native-paper'
import Background from '../components/Background'
import Header from '../components/Header'
import Button from '../components/Button'
import TextInput from '../components/TextInput'
import { nameValidator } from '../helpers/nameValidator'
import { numberValidator } from '../helpers/numberValidator'
import { passwordValidator } from '../helpers/passwordValidator'

export default function LoginScreen({ navigation, screenProps, handle_update_user_info }) {
	const [name, setName] = useState({ value: '', error: '' })
	const [number, setNumber] = useState({ value: '', error: '' })
	const [password, setPassword] = useState({ value: '', error: '' })

	const onLoginPressed = () => {
		const nameError = nameValidator(name.value)
		const numberError = numberValidator(number.value)
		const passwordError = passwordValidator(password.value)
		if (nameError || numberError || passwordError) {
			setName({ ...name, error: nameError })
			setNumber({ ...number, error: numberError })
			setPassword({ ...password, error: passwordError })
			return
		}
		else {
			let APIURL = screenProps.apiURL + '/mealverse/login.php';
			let headers = {
				'Accept': 'application/json',
				'Content-Type': 'application/json'
			};
			
			let data = {
				username: name.value,
				phone_number: number.value,
				password: password.value,
			};
			fetch(APIURL, {
				method: 'POST',
				headers: headers,
				body: JSON.stringify(data)
			}
			)
				.then((response) => response.json())
				.then((response) => {
					alert(response.message);
                    if (response.code == 1){

						handle_update_user_info(
							1, 
							response.cust_ID, 
							response.username, 
							response.phone_number, 
							response.email, 
							response.enrollment_date,
							response.orders_placed
							);
                    }
				})
				.catch((error) => {
					alert('Error: ' + error);
				})
		}


	}
	
	return (
		<ScrollView>
			<Background image_url={require('../images/login.png')} style={{ position: 'fixed' }}>
				<View style={{ backgroundColor: screenProps.theme.status == 0 ? (screenProps.theme.dark) : (screenProps.theme.light), flex: 1, borderWidth: 2, width: '100%', }}>
					<View style={{ alignItems: 'center', justifyContent: 'center' }}><Header style={{ fontSize: 40, fontWeight: 'bold', color: 'white', }}>Login</Header></View>
					<TextInput
						label="Name"
						returnKeyType="next"
						value={name.value}
						onChangeText={(text) => setName({ value: text, error: '' })}
						error={!!name.error}
						errorText={name.error}
					/>
					<TextInput
						label="Phone Number"
						returnKeyType="next"
						value={number.value}
						onChangeText={(text) => setNumber({ value: text, error: '' })}
						error={!!number.error}
						errorText={number.error}
						autoCapitalize="none"
						textContentType="telephoneNumber"
						keyboardType="number-pad"
					/>
					<TextInput
						label="Password"
						returnKeyType="done"
						value={password.value}
						onChangeText={(text) => setPassword({ value: text, error: '' })}
						error={!!password.error}
						errorText={password.error}
						secureTextEntry
					/>
					<Button
						mode="contained"
						onPress={onLoginPressed}
						style={{ marginTop: 24 }}
					>
						Login
					</Button>
					<View style={styles.row}>
						<Text>Don't have an account? </Text>
						<TouchableOpacity onPress={() => navigation.navigate('Register')}>
	<Text style={styles.link}>Register Here</Text>
	</TouchableOpacity>
					</View>
					<Text>{"\n"}</Text>
					<View style={styles.row}>
					</View>
				</View>
			</Background>
		</ScrollView>
	)
}

const styles = StyleSheet.create({
	row: {
		flexDirection: 'row',
		marginTop: 4,
	},
	link: {
		fontWeight: 'bold',
		color: 'black',
	},
})
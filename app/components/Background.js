import React from 'react'
	import { ImageBackground, StyleSheet, KeyboardAvoidingView, Text } from 'react-native'
	
	export default function Background({ children, image_url }) {
	return (
	<ImageBackground
	source={image_url}
	resizeMode="contain"
	style={styles.background}
	>
	<KeyboardAvoidingView style={styles.container} behavior="padding">
	{children}
	</KeyboardAvoidingView>
	</ImageBackground>
	)
	}
	const styles = StyleSheet.create({
	background: {
	flex: 1,
	width: '100%',
	// backgroundColor: theme.colors.surface,
	// backgroundColor: 'rgba(0, 0, 0, 0.5)',
	},
	container: {
	flex: 1,
	// padding: 20,
	width: '100%',
	maxWidth: 340,
	alignSelf: 'center',
	alignItems: 'center',
	justifyContent: 'center',
	},
	})
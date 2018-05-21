import React, {Component} from 'react';
import {
    StyleSheet,
    Text,
    View
} from 'react-native';

const styles = StyleSheet.create({
    container: {
        alignItems: 'center',
        backgroundColor: '#F5FCFF',
        flex: 1,
        justifyContent: 'center'
    },
    text: {
        color: '#333333',
        marginBottom: 5,
        textAlign: 'center'
    }
});

export default class App extends Component {
    render() {
        return (
            <View style={styles.container}>
                <Text style={styles.text}>
                    {'Real App'}
                </Text>
            </View>
        );
    }
}

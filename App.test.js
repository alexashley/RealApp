import React from 'react';
import {Text, View} from 'react-native';
import ShallowRenderer from 'react-test-renderer/shallow';

import App from './App';

describe('<App/>', () => {
    let renderedComponent,
        renderedMessage;

    const cacheChildren = () => {
        renderedMessage = renderedComponent.props.children;
    };

    const render = () => {
        const shallowRenderer = ShallowRenderer.createRenderer();

        shallowRenderer.render(<App />);

        renderedComponent = shallowRenderer.getRenderOutput();
    };

    beforeEach(() => {
        render();
        cacheChildren();
    });

    it('should render a <View> with styles', () => {
        expect(renderedComponent.type).toBe(View);
        expect(renderedComponent.props.style).toEqual({
            alignItems: 'center',
            backgroundColor: '#F5FCFF',
            flex: 1,
            justifyContent: 'center'
        });
    });

    it('should render a <Text> with styles', () => {
        expect(renderedMessage.type).toBe(Text);
        expect(renderedMessage.props.children).toBe('Real App');
        expect(renderedMessage.props.style).toEqual({
            color: '#333333',
            marginBottom: 5,
            textAlign: 'center'
        });
    });
});

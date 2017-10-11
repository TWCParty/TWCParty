// @flow

import React from 'react';
import logo from './static/images/logo.png';

const styles = {
  wrapper: {
    display: 'flex',
    alignItems: 'center',
    justifyContent: 'center',
    height: '100%',
    width: '100%',
    backgroundColor: 'rgba(231, 229, 216, 0.15)',
  },
  logo: {
    width: 300,
    height: 300,
  },
};

function App() {
  return (
    <div style={styles.wrapper}>
      <img src={logo} style={styles.logo} />
    </div>
  );
}

export default App;

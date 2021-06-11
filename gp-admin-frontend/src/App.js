import logo from './7-day-gp.jpeg';
import './style/App.css';
import React from 'react'

import Header from './containers/Header'
import Main from './containers/Main'
import Footer from './containers/Footer'

const App = () => {
  return (
    <div className="App">
      <Header/>
      <Main/>
      <Footer/>
    </div>
  );
}

export default App;

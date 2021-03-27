import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import App from './App';
import Header from './Header';
import Footer from './Footer';
import Greetings from './Greetings';
import Counter from './Counter';
import Todo from './Todo';
// import Contact from './Contact';
// import Home from './Home';
import Rout from './Route';
import Api from './API';
import Array from './Array';
import Hooks from './Hooks';
import Funcounter from './Funcounter';
import reportWebVitals from './reportWebVitals';

ReactDOM.render(
  <React.StrictMode>
    {/* <Greetings name="john" />
    <App />
    <Greetings name="jony" />
    <Header />
    <Footer /> */}
    {/* <Counter /> */}
    {/* <Todo /> */}
    
    {/* <Rout /> */}
    {/* <Api /> */}
    {/* <Array /> */}
    {/* <Hooks /> */}
    <Funcounter />
    
  </React.StrictMode>,
  document.getElementById('root')
);

// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
reportWebVitals();

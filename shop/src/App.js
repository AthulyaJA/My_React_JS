import logo from './logo.svg';
import 'bootstrap/dist/css/bootstrap.min.css';
import './App.css';
import Header from './Header';
import Home from './Home';
import About from './Gallery';
import  Contact from './Contact';
import Footer from './Footer';
import Navbar from './Navbar';
import Login from './Login';
import {Button } from 'react-bootstrap';
import {BrowserRouter as Router ,Switch,Route,Link} from 'react-router-dom';

function App() {
  return (
    <div className="App">
      
      <Router>
      <Navbar />
      <Header />

      
                    <Route  exact path="/Home"><Home /></Route>
                    <Route   path="/Gallery"><About /></Route>
                    <Route   path="/Contact"><Contact /></Route>
                    <Route   path="/Login"><Login /></Route>
        
      </Router>
      
      <Footer />
    </div>
   
  );
}

export default App;

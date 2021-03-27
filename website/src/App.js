import logo from './logo.svg';
import 'bootstrap/dist/css/bootstrap.min.css';
import './App.css';
import Header from './components/Header';
import Home from './components/Home';
import About from './components/About';
import  Contact from './components/Contact';
import Footer from './components/Footer';
import {Button} from 'react-bootstrap';
import {BrowserRouter as Router ,Switch,Route,Link} from 'react-router-dom';

function App() {
  return (
    <div className="App">
      
      <Router>
      <Header />

      
                    <Route  exact path="/Home"><Home /></Route>
                    <Route   path="/About"><About /></Route>
                    <Route   path="/Contact"><Contact /></Route>
        
      </Router>
      <Footer />
    </div>
   
  );
}

export default App;


import React, { Component } from 'react';
import {BrowserRouter as Router ,Switch,Route,Link} from 'react-router-dom';
import {Navbar,Nav,Container,Image} from 'react-bootstrap';
import Home from './Home';
import Contact from './Contact';
import About from './Gallery';
import Footer from './Footer';
import Login from './Login';

class Header extends Component {

    constructor(props) {
        super(props);
          }
render()
      {
    return (
       
        <React.Fragment>

<Navbar bg="white" expand="lg">
  
  
            <Navbar.Toggle aria-controls="basic-navbar-nav" />
        <Navbar.Collapse id="basic-navbar-nav">
                        <Nav className="mr-auto">
                                <Link to ="/Home"  className="text-dark p-5 nav-link"><Image src="https://rukminim1.flixcart.com/flap/128/128/image/f15c02bfeb02d15d.png?q=100" />
                                <br></br>Home</Link>
                                <Link to="/Gallery"  className="text-dark p-5 nav-link"><Image src="https://rukminim1.flixcart.com/flap/128/128/image/29327f40e9c4d26b.png?q=100" /><br></br>mobile</Link>
                                <Link to="/Contact"  className="text-dark p-5 nav-link"><Image src="https://rukminim1.flixcart.com/flap/128/128/image/22fddf3c7da4c4f4.png?q=100" /><br></br>fashion</Link>
                                <Link to ="/Home"  className="text-dark p-5 nav-link"><Image src="https://rukminim1.flixcart.com/flap/128/128/image/f15c02bfeb02d15d.png?q=100" />
                                <br></br>Electronics</Link>
                                <Link to ="/Home"  className="text-dark p-5 nav-link"><Image src="https://rukminim1.flixcart.com/flap/128/128/image/f15c02bfeb02d15d.png?q=100" />
                                <br></br>Appliance</Link>
                                <Link to ="/Login"  className="text-dark p-5 nav-link"><Image src="https://rukminim1.flixcart.com/flap/128/128/image/f15c02bfeb02d15d.png?q=100" />
                                <br></br>Travel</Link>
                               
                                
                        
                        </Nav>

        </Navbar.Collapse>
</Navbar>


 
    </React.Fragment>
   
    );
}

}

    export default Header ;

import React, { Component } from 'react';
import {BrowserRouter as Router ,Switch,Route,Link} from 'react-router-dom';
import {Navbar,Nav,Container} from 'react-bootstrap';
import Home from './Home';
import Contact from './Contact';
import About from './About';
import Footer from './Footer';

class Header extends Component {

    constructor(props) {
        super(props);
          }
render()
      {
    return (
       
        <React.Fragment>

<Navbar bg="info" expand="lg">
  <Navbar.Brand href="/" className="text-white">Welcome</Navbar.Brand>
            <Navbar.Toggle aria-controls="basic-navbar-nav" />
        <Navbar.Collapse id="basic-navbar-nav">
                        <Nav className="mr-auto">
                                <Link to ="/Home"  className="text-white p-5 nav-link">Home</Link>
                                <Link to="/About"  className="text-white p-5 nav-link">About</Link>
                                <Link to="/Contact"  className="text-white p-5 nav-link">Contact</Link>
                                
                        
                        </Nav>

        </Navbar.Collapse>
</Navbar>


 
    </React.Fragment>
   
    );
}

}

    export default Header ;
import Home from './Home';
import Contact from './Contact';
import About from './About';

import {BrowserRouter as Router ,Switch,Route,Link} from 'react-router-dom';
    
import React, { Component } from 'react';

class Rout extends Component {

    constructor(props) {
                super(props);
                  }
render()
      {
    return (
        
    
                <Router>
                <h2> welcome to Route</h2>
        <div>
                <ul>
                    <li><Link to="/">Home</Link></li>
                    <li><Link to="/About">About </Link></li>
                    <li><Link to="/Contact">Contact</Link></li>
                    

                </ul>
        </div>
        <Switch>
                    <Route  exact path="/"><Home /></Route>
                    <Route   path="/About"><About /></Route>
                    <Route   path="/Contact"><Contact /></Route>
        </Switch>
                </Router>
    
    );
}

}

    export default Rout ;
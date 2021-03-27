
import React, { Component } from 'react';
import {Navbar,Nav,Form,Button} from 'react-bootstrap';
import Footer from './Footer';
class Contact extends Component {

    constructor(props) {
                super(props);
                  }
render()
      {
    return (
        <React.Fragment>
    <h2 className="text-white"> welcome to contact</h2>
    
    <div className="container">
        <div className="row">
            <div class="top">
            
                    <Form>
                
                <Form.Group controlId="formBasicEmail">
                    <Form.Label className="text-white">Email address</Form.Label>
                    <Form.Control type="email" placeholder="Enter email" />
                    <Form.Text className="text-muted">
                    We'll never share your email with anyone else.
                    </Form.Text>
                </Form.Group>

                <Form.Group controlId="formBasicPassword">
                    <Form.Label className="text-white">Password</Form.Label>
                    <Form.Control type="password" placeholder="Password" />
                </Form.Group>
                <Form.Group controlId="formBasicCheckbox">
                    <Form.Check className="text-white" type="checkbox" label="Check me out" />
                </Form.Group>
                <center><Button variant="primary" type="submit" className="text-white">
                    Submit
                </Button></center>
                </Form>
</div>
</div>
</div>

    </React.Fragment>
    );
}

}

    export default Contact ;
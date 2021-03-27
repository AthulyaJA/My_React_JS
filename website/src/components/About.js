
import React, { Component } from 'react';
import {Navbar,Nav,Form,Button,Carousel,Row,Image,Col,Container} from 'react-bootstrap';
import Footer from './Footer';
class About extends Component {

    constructor(props) {
                super(props);
                  }
render()
      {
    return (
        <React.Fragment>
    <h2> welcome to About</h2>
    <Container>
        <Row>
    <Col xs={6} md={4}>
      <Image src="6.jpg" thumbnail />
    </Col>
    <Col xs={6} md={4}>
      <Image src="https://www.diocesecpa.org/blog/wp-content/uploads/2019/07/Focus.jpg" thumbnail />
    </Col>
    <Col xs={6} md={4}>
      <Image src="https://d3oj2y7irryo5z.cloudfront.net/wp-content/uploads/2019/10/photographer-698908_1280.jpg" thumbnail />
    </Col>
    <Col xs={6} md={4}>
      <Image src="https://d3oj2y7irryo5z.cloudfront.net/wp-content/uploads/2019/10/photographer-698908_1280.jpg" thumbnail />
    </Col>
    <Col xs={6} md={4}>
      <Image src="https://www.surreyschools.ca/sites/SMKUV0MB7G/SiteCollectionImages/chambon-4.jpeg" thumbnail />
    </Col>
    <Col xs={6} md={4}>
      <Image src="https://photographylife.com/wp-content/uploads/2016/06/Brown-Anole.jpg" thumbnail />
    </Col>
  </Row>

    </Container>
 
    </React.Fragment>
    );
}

}

    export default About ;
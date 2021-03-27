
import React, { Component } from 'react';
import {Navbar,Nav,Form,Button,Carousel,Card} from 'react-bootstrap';
import Footer from './Footer';
import Login from './Login';
class Home extends Component {

    constructor(props) {
                super(props);
                  }
render()
      {
    return (
        <React.Fragment>
              <section>
    
    <div className="home">
    
    
                        <Carousel>
                    <Carousel.Item interval={1000}>
                        <img
                        className="d-block w-100"
                        src="https://rukminim1.flixcart.com/flap/844/140/image/07810c744095eb7e.jpg?q=50"
                        alt="First slide"
                        />
                        <Carousel.Caption>
                        
                        </Carousel.Caption>
                    </Carousel.Item>
                    <Carousel.Item interval={1500}>
                        <img
                        className="d-block w-100"
                        src="https://rukminim1.flixcart.com/flap/844/140/image/07810c744095eb7e.jpg?q=50"
                        alt="Second slide"
                        />
                        <Carousel.Caption>
                        
                        </Carousel.Caption>
                    </Carousel.Item>
                    <Carousel.Item interval={1500}>
                    
                        <img
                        className="d-block w-100"
                        src="https://rukminim1.flixcart.com/flap/844/140/image/07810c744095eb7e.jpg?q=50"
                        alt="Third slide"
                        />
                        <Carousel.Caption>
                        
                        </Carousel.Caption>
                    </Carousel.Item>
                    </Carousel>

    </div>
    <br></br><br></br><br></br>
    </section>
    <section>

                        <div className="container">
                            <div className="row">
                <div className="mt-5 ">
                    <div className="col-4">
                <Card style={{ width: '18rem' }}>
                <Card.Img variant="top" src="https://rukminim1.flixcart.com/image/k9re3rk0/computer/s/b/z/lenovo-laptop-original-imafrhdughbghcek.jpeg?" />
                <Card.Body>
                    <Card.Title>Top Offer</Card.Title>
                    <Card.Text>
                    $2000
                    </Card.Text>
                    <Button variant="primary">buy</Button>
                </Card.Body>
                </Card>


                </div>
                </div>
                <div className="mt-5 ">
                <div className="col-4">
                <Card style={{ width: '18rem' }}>
                <Card.Img variant="top" src="https://rukminim1.flixcart.com/image/200/200/jr9iwsw0/bed-mattress/5/y/n/queen-5-60-75-athena-therapedic-coir-flipkart-perfect-homes-original-imafd2fgvyvvubad.jpeg" />
                <Card.Body>
                    <Card.Title>Top Offer</Card.Title>
                    <Card.Text>
                    $2000
                    </Card.Text>
                    <Button variant="primary">Buy</Button>
                </Card.Body>
                </Card>
                </div>
                </div>
                <div className="mt-5 ">
                <div className="col-4">
                <Card style={{ width: '18rem' }}>
                <Card.Img variant="top" src="https://rukminim1.flixcart.com/image/200/200/jjiw1ow0/tv-entertainment-unit/g/r/g/particle-board-magnus-wall-unit-wenge-home-full-wenge-original-imaf72q9z74ppbgk.jpeg?q=70" />
                <Card.Body>
                    <Card.Title>Top Offer</Card.Title>
                    <Card.Text>
                    $2000
                    </Card.Text>
                    <Button variant="primary">Buy</Button>
                </Card.Body>
                </Card>
                </div>
                </div>



<div className="mt-5 ">
<div className="col-4">
  <Card style={{ width: '18rem' }}>
  <Card.Img variant="top" src="https://rukminim1.flixcart.com/image/200/200/jjn6d8w0/tv-entertainment-unit/d/h/p/particle-board-arizona-100001413atv-home-full-wenge-with-frosty-original-imaf76dhwg94detb.jpeg" />
  <Card.Body>
    <Card.Title>Top Offer</Card.Title>
    <Card.Text>
      $2000
    </Card.Text>
    <Button variant="primary">Buy</Button>
  </Card.Body>
</Card>
</div>
</div>

<div className="mt-5 ">
<div className="col-4">
  <Card style={{ width: '18rem' }}>
  <Card.Img variant="top" src="holder.js/100px180" />
  <Card.Body>
    <Card.Title>Top Offer</Card.Title>
    <Card.Text>
      $2000
    </Card.Text>
    <Button variant="primary">Buy</Button>
  </Card.Body>
</Card>
</div>
</div>
<div className="mt-5 ">
<div className="col-4">
  <Card style={{ width: '18rem' }}>
  <Card.Img variant="top" src="https://rukminim1.flixcart.com/image/200/200/kdt50nk0/portable-laptop-table/m/h/g/plywood-c45c-lsm-furn-master-blue-original-imafumzmu9xqzvxw.jpeg?q=70" />
  <Card.Body>
    <Card.Title>Top Offer</Card.Title>
    <Card.Text>
      $2000
    </Card.Text>
    <Button variant="primary">Buy</Button>
  </Card.Body>
</Card>
</div>
</div>

</div>
</div>
</section>

</React.Fragment>
    );
}

}

    export default Home ;
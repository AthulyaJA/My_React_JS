
import React, { Component } from 'react';

class Hooks extends Component {

    constructor(props) {
                super(props);
                this.state={
                    Counter:10,
                }
                    
                
                console.log(' constructor call');
                  }
                componentWillMount()
                {
                    return(
                        console.log(' WillMount call')
                    )
                }
                componentDidMount()
                {
                    return(
                        console.log(' DidMount call')
                    )
                }
                increment=()=>{
                    this.setState((prev,props )=>( {
                        Counter:prev.Counter+1,
                    })
                
                    )
                    
                }
render()

      {
        console.log(' render call');
    return (
        <React.Fragment>
    <h3> {this.state.Counter}</h3>
    <button onClick= {this.increment}> +</button>

    
    </React.Fragment>
    );
}

}

    export default Hooks ;
import React, { Component } from 'react';

class Counter extends Component
{
constructor (props)
{
    super(props);
    
    this.state ={
        Counter :0
    }
    

}
 increment=()=>{
    this.setState((prev,props )=>( {
        Counter:prev.Counter+1,
    })

    )
    
}
decrement=()=>{
    this.setState((prev,props )=>( {
        Counter:prev.Counter-1,
    })

    )
    
}
string=()=>{
    this.setState((prev,props )=>( {
        Counter:prev.Counter+1,
    })

    )
    
}
name=(e)=>{
    this.setState((props )=>( {
        name:e.target.value,
    })

    )
    
}

    render()
    {
        console.log('Rendering');

        return (
            <React.Fragment>
            <h3> {this.state.Counter}</h3>
            
            <button onClick= {this.increment}> +</button>
            <button onClick= {this.decrement}> -</button>
            <button onClick= {this.string}>+</button>
            <input onChange= {this.name} name="name"></input>
            <h1>{this.state.name}</h1>
            
           
            </React.Fragment>
        )

        
    }


}

export default Counter;
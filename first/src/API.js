import axios from 'axios';
import React, { Component } from 'react';

class Api extends Component {

    constructor(props) {
        
                super(props);
                this.state={
                    posts:[],
                }
                  }
    componentDidMount(){
                axios.get('https://jsonplaceholder.typicode.com/posts').then(response=>{
                this.setState({
                    posts:response.data
                        
                    })
                    
                })

    }
render()
      {
    return (
        <React.Fragment>
    <h2> welcome to Api</h2>
    <table>

        <thead>
                <tr>
                    <th>Sl.no</th>
                    <th>Title</th>
                </tr>

        </thead>
        <tbody>
            
            {this.state.posts.map((item,k)=>{
                    return (
                        <tr>
                            <td>{item.id}</td>
                            <td>{item.title}</td>
                            
                            </tr>
                    )
                })}
                

        
        </tbody>
    </table>

    
    </React.Fragment>
    );
}

}

    export default Api ;
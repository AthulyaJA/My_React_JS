
import React, { Component } from 'react';

class Array extends Component {

    constructor(props) {
                super(props);
                this.state={
                    items:['Apple','orange','grapes'],
               
                    persons:[
                        {
                            name:"Athulya",
                            Age:24,
                            edu:'B.Tech'
                        },
                        {
                            name:"Rubiya",
                            Age:24,
                            edu:'MCA'
                        }
                    ],
                }
                
                  }
render()

      {
        var lis=this.state.items.map(function (item,k) {
           return <li key={k}>{item}</li>
            
        });
        
    return (
        <React.Fragment>
            <div>
    <h2> welcome to Array</h2>

        <ul>
            <li>{lis}</li>
        </ul>
        </div>
        <div>
    <h2> welcome to table</h2>

       <table border="1">
           <tr>
               <th>Name</th>
               <th>Age</th>
               <th>Education</th>
           </tr>
           
           {this.state.persons.map( (per,k) =>{
            return( <tr key={k}>
                
                 <td>{per.name}</td>
                 <td>{per.Age}</td>
                 <td>{per.edu}</td>
                 </tr>)
                 })}
          
       </table>
        </div>
    </React.Fragment>
    );

}



}

    export default Array ;
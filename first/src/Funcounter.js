import { useState } from "react";
import { setName } from "react";
import React from 'react';
function Funcounter()
{
     const[count,setCount]=useState(0);
            function increment() 
            {
                setCount(count+1)
                
            }

          const[name,setName]=useState({
              FirstName:" "
              ,LastName: " "
          })
          
    return (
        <React.Fragment>
                    <h2> {count}</h2>


                    <button onClick={increment}>+</button>
                    <button   onClick={()=>setCount(count-1)}>-</button><br></br>
                    <input type="text" name="FirstName"  placeholder="firstname" onChange={(e) =>setName({...name,FirstName:e.target.value})}/><br></br>
                   
                   Firstnmae: <h1>{name.FirstName}</h1>
                   <input type="text" name="LastName"  placeholder="lasttname" onChange={ (a) =>setName({...name,LastName:a.target.value}) } /><br></br>
                   
                   LastName: <h1>{ name.LastName}</h1>

                   

    
    </React.Fragment>


    )};
    export default Funcounter ;
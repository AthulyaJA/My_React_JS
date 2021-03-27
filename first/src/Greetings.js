import React from 'react';

function Greetings(Props){
let x=Props.name.toUpperCase();
    return (
        <React.Fragment>
    <h2> hello {x} </h2>

    
    </React.Fragment>
    )};
    export default Greetings;
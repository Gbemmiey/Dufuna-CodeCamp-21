import React from "react";
import {Link} from "react-router-dom";

function Checkout(props) {
    return(
        <>
            <div>
                <Link to={props.link}>
                    <button type="button" id={props.id} onClick={props.checkout}>
                    {props.name}</button>
                </Link>
            </div>
        </>
    )
}

export default Checkout
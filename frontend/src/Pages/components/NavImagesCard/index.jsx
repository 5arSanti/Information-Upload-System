import React from "react";
import { AppContext } from "../../../Context";
import { iconComplete } from "../../../assets";
import "./styles.css";

const NavImagesCard = () => {
    const context = React.useContext(AppContext);

    return(
        <div className="container-logo-header-govco">
            <div className="logo-header-govco" rel="noopener noreferrer" target="_blank" href="https://www.serviciodeempleo.gov.co/portada">
                <span>
                    <a rel="noopener noreferrer" target="_blank" href="https://www.serviciodeempleo.gov.co/portada">
                        <img src={iconComplete} alt="" />
                    </a>
                </span>
            </div>
            {context.name && <p>Bienvenido {context.name}</p> }
        </div>
    );
}

export { NavImagesCard };
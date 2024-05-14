import React from "react";
import axios from "axios"

import { scrollToValue } from "../../../utils/scrollToValue";
import { AppContext } from "../../../Context";
import { useNavigate } from "react-router-dom";
import { handleNotifications } from "../../../utils/handleNotifications";

const AuthWrapper = ({children}) => {
    const context = React.useContext(AppContext);

    const navigate = useNavigate();
    axios.defaults.withCredentials = true;

    React.useEffect(() => {
        scrollToValue(0, 350)
        axios.get(`${context.apiUri}/user/`)
            .then(response => {
                const {data} = response;

                if(data.Status === "Success") {
                    context.setAuth(true);
                    context.setName(data.name);
                } else {
                    context.setAuth(false);
                    navigate("/login");
                }
            })
            .catch(err => {
                handleNotifications("error", err)
                navigate("/login");
            })
    }, []) 

    return (
        <>
            {children}
        </>
    );
}

export { AuthWrapper }
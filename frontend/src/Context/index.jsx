import React from "react";
import PropTypes from "prop-types";

import { handleColorsByFilters } from "../utils/handleColors";

import { api } from "../utils/api";
import { fetchAllData } from "../utils/handleData/handleFetchData";
import { handleNotifications } from "../utils/handleNotifications";


export const AppContext = React.createContext();

const AppProvider = ({children}) => {
    AppProvider.propTypes = {
        children: PropTypes.node.isRequired,
    }

	//-------------------------------------
    const [apiUri, setApiUri] = React.useState(api);

    //LOADING, ERROR
    const [loading, setLoading] = React.useState(null);

    //Login Auth
    const [auth, setAuth] = React.useState(false);
    const [message, setMessage] = React.useState("");
    const [name, setName] = React.useState("");

    // RESPONSE:
    const [responseData, setResponseData] = React.useState({});

    React.useEffect(() => {
        const endpoints = [
            `/slider`,
            "/users"
        ]

        const fetchData = async () => {
            try {
                setLoading(true);
                const data = await fetchAllData(endpoints);
                setResponseData(data);
            } 
            catch (err) {
                handleNotifications("error", err.message)
            } 
            finally {
                setLoading(false);
            }
        }
        fetchData()
    }, []);
    

    //CAMBIO DE COLORES
    const [activeHighContrast, setActiveHighContrast] = React.useState(false);
    React.useEffect(() => {
        handleColorsByFilters(activeHighContrast);
    }, [activeHighContrast]);


    // Screen Width
    const [windowWidth, setWindowWidth] = React.useState(window.innerWidth);
    React.useEffect(() => {
        function handleResize() {
          setWindowWidth(window.innerWidth);
        }
    
        window.addEventListener('resize', handleResize);
        return () => window.removeEventListener('resize', handleResize);
      }, []);

    // Modal de Confirmacion
    const [openConfirmationModal, setOpenConfirmationModal] = React.useState({
        status: false,
        title: "",
        onConfirm: null,
        onCancel: null,
    });


    // Slider Cards Values
    const [editingSliderCard, setEditingSliderCard] = React.useState(false);
    const [sliderValues, setSliderValues] = React.useState({
        NOMBRE: null,
        VALOR: null,
        PORCENTAJE: null,
        ICONO: null,
    })

    // Edicion de Usuarios
    const [users, setUsers] = React.useState(null);

    // Edicion de Usuarios
    const [logs, setLogs] = React.useState(null);

    return (
        <AppContext.Provider
            value={{
                apiUri,
                loading,
                setLoading,
                
                auth,
                setAuth,
                
                name,
                setName,

                message,
                setMessage,


                //Tamaño de la pantalla
                windowWidth,
                setWindowWidth,


                //Informacion desde el serveidor
                responseData,
                setResponseData,

                //COLORES POR FILTRO
                handleColorsByFilters,
                activeHighContrast,
                setActiveHighContrast,


                //Modal de confirmación
                openConfirmationModal,
                setOpenConfirmationModal,

                // Slider Cards
                editingSliderCard,
                setEditingSliderCard,
                sliderValues,
                setSliderValues,

                // Usuarios
                users,
                setUsers,

                //Logs
                logs,
                setLogs,
            }}
        >
            {children}
        </AppContext.Provider>
    )
}

export { AppProvider }
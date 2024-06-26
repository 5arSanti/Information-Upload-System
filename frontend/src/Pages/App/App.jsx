//Dependencies
import React from "react";
import { HashRouter, Navigate, useLocation, useRoutes } from "react-router-dom";
import 'react-toastify/dist/ReactToastify.css';
import 'bootstrap/dist/css/bootstrap.min.css';

//App
import './App.css'
import "./App.css"

//Context
import { AppContext, AppProvider } from "../../Context";


//Screens
import { MainContainer } from "../components/MainContainer";

import { Footer } from "../components/Footer";
import { AccesibilityCard } from "../components/AccesibilityCard";
import { GovNavbar } from "../components/GovNavbars";
import { LoginScreen } from "../Screens/LoginScreen";
import { RegisterScreen } from "../Screens/RegisterScreen";
import { ConfirmationModal } from "../components/ConfirmationModal";
import { ToastContainer } from "react-toastify";
import { UploadScreen } from "../Screens/UploadScreen";
import { NavImagesCard } from "../components/NavImagesCard";
import { SliderNavContainer } from "../components/SliderNavContainer";
import { UsersScreen } from "../Screens/UsersScreen";

const Wrapper = ({children}) => {
    const location = useLocation();
    React.useLayoutEffect(() => {
        document.documentElement.scrollTo(0, 0)
    }, [location.pathname]);

    return children;
}

const AppRoutes = () => {

    const context = React.useContext(AppContext);
    const { auth } = context;

    let routes = useRoutes([
        {path: "/home", element: <UploadScreen/>},
        {path: "/*", element: <Navigate replace to={"/home"}/>},
        {path: "/users", element: <UsersScreen/>},

        
        {path: "/register", element: auth ? <RegisterScreen/> : <Navigate replace to={"/login"} />},
        {path: "/login", element: !auth ? <LoginScreen/> : <Navigate replace to={"/login"}/>},
    ]);
    
    return routes;
}

const App = () => {
    return (
        <AppProvider>
            <HashRouter>
                <Wrapper>
                    <GovNavbar/>
                    <AccesibilityCard/>
                    <ConfirmationModal/>
                    <MainContainer>
                        <NavImagesCard/>
                        <SliderNavContainer/>
                        <AppRoutes/>
                    </MainContainer>
                    <ToastContainer/>
                    <Footer/>
                </Wrapper>
            </HashRouter>
        </AppProvider>
    );
}

export default App;


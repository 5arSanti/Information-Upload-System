import { useLocation } from 'react-router-dom';
import { removeFirstLetter } from '../../../utils/strings';

import { DateCard } from "../DateCard";
import { IoIosArrowForward } from "react-icons/io";


import "./styles.css"
import { DropNav } from '../DropDownCards/DropNav';


const MainContainer = ({children}) => {
    const location = useLocation();
    const text = removeFirstLetter(location.pathname)

    return(
        <div className="main-container">
            <DateCard className='top-left'><IoIosArrowForward/> {text}</DateCard>
            <DateCard/>

            <div className="home-container">
                {children}
            </div>
        </div>
    );
}

export { MainContainer };
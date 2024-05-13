const handleInputChange = (key, value, setState) => {
    // const numericValue = parseInt(value) || value;

    setState((prevValues) => ({ 
        ...prevValues, 
        [key]: value
     }));
};

export { handleInputChange }
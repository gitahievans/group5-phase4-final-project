import React from "react";
//import Navbar from "./Navbar";
import Home from "./Home";
//import Landlord from "./Landlord";
//import NewHouseForm from "./NewHouseForm";
import { Routes, Route} from "react-router-dom";

function App(){
    return(
        <div className="App">
            <h1>Circle Point Homes</h1>
            <Routes>
            <Route path="/" element={<Home />} />
            </Routes>
            </div>
    )
}
 export default App;

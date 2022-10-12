import React from 'react'
import Navbar from './Navbar'
import { BrowserRouter as Router, Routes } from "react-router-dom";



function App() {

  return (
    <Router>
    <div>
      <Navbar/>
      

    </div>


    <Routes>
        {/* <Route exact path="/" element={<SignupForm />}></Route> */}
       
      </Routes>
    </Router>
  )
}

export default App
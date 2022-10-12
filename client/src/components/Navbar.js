import React from 'react'
import { Link } from 'react-router-dom'

function Navbar() {
  return (
    <div>
    <ul>
      <li>
         <Link to="/">Home</Link>
      </li>
      <li>
         <Link to="/">Landlords</Link>
      </li>
      <li>
         <Link to="/">About Us</Link>
      </li>

        {/* ['Home', 'Landords', 'About'].map((item)=>(
        <li key={item}>
        {item}
        </li>
      )) */}
    </ul>
    </div>
  )
}

export default Navbar


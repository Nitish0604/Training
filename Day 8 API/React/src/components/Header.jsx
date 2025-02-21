import React from "react";
import { Link } from "react-router-dom";

const Header = () => {
  return (
    <>
      <ul className="nav justify-content-center mb-5">
        <li className="nav-item">
          <Link className="nav-link active" aria-current="page" to="home">
            Home
          </Link>
        </li>
        <li className="nav-item">
          <Link className="nav-link" to="about">
            About
          </Link>
        </li>
        <li className="nav-item">
          <Link className="nav-link" to="contact">
            Contact
          </Link>
        </li>
        <li className="nav-item">
          <Link className="nav-link" to="users">
            Users
          </Link>
        </li>
        <li className="nav-item">
          <Link className="nav-link" to="register">
            Register
          </Link>
        </li>
        <li className="nav-item">
          <Link className="nav-link" to="login">
            Login
          </Link>
        </li>
        <li className="nav-item">
          <Link className="nav-link" to="products">
            Products
          </Link>
        </li>
      </ul>
    </>
  );
};

export default Header;

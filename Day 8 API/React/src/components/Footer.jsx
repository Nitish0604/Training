import React from "react";
import { Link } from "react-router-dom";

const Footer = () => {
  return (
    <footer className="bg-body-tertiary text-center text-lg-start">
      <div
        className="text-center p-3"
        style={{ backgroundColor: "rgba(0, 0, 0, 0.05)" }}
      >
        © {new Date().getFullYear()} Copyright: &nbsp;
        <Link className="text-body" to="/">
          Anushka Kohli
        </Link>
      </div>
    </footer>
  );
};

export default Footer;

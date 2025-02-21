import React, { useState } from "react";
import axios from "axios";
import { useNavigate } from "react-router-dom";

const Register = () => {
  const [name, setName] = useState("");
  const [email, setEmail] = useState("");
  const [address, setAddress] = useState("");
  const navigate = useNavigate();

  const handleSubmit = async (e) => {
    // to prevent from default execution
    e.preventDefault();
    if (!name || !email || !address) alert("All fields are mandatory");
    try {
      const uniqueNo = Date.now();
      const userObj = {
        id: uniqueNo + "",
        name,
        email,
        address,
      };
      const res = await axios.post("http://localhost:3000/users", userObj);
      console.log("Response of creating user: ", res);
      console.log("Response : ", res);
      if (res.status === 201) {
        alert("User created successfully");
        navigate("/users");
      }
    } catch (error) {
      console.log("Error creating user: ", error);
    }
  };
  return (
    <div>
      <h1 className="text-center p-2 text-bg-secondary">Register</h1>
      <form onSubmit={handleSubmit}>
        <div className="mb-3">
          <label className="form-label">Name</label>
          <input
            type="text"
            onChange={(e) => setName(e.target.value)}
            className="form-control"
            placeholder="John Doe"
          />
        </div>
        <div className="mb-3">
          <label className="form-label">Email address</label>
          <input
            type="email"
            onChange={(e) => setEmail(e.target.value)}
            className="form-control"
            placeholder="john.doe@example.com"
          />
        </div>
        <div className="mb-3">
          <label className="form-label">Address</label>
          <input
            type="text"
            onChange={(e) => setAddress(e.target.value)}
            className="form-control"
            placeholder="Address here"
          />
        </div>
        <button type="submit" className="btn btn-primary w-100 mt-3">
          Register Me
        </button>
      </form>
    </div>
  );
};

export default Register;

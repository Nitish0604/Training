import React from "react";

const Login = () => {
  return (
    <div>
      <h2 className="text-center p-2 text-bg-secondary">Login Page</h2>
      {/* Email */}
      <div className="mb-4">
        <label className="form">Email address</label>
        <input
          type="email"
          className="form-control"
          placeholder="name@example.com"
        />
      </div>

      {/* Password */}
      <label className="form-label">Password</label>
      <input
        type="password"
        id="inputPassword5"
        className="form-control"
        aria-describedby="passwordHelpBlock"
      />
      <div id="passwordHelpBlock" className="form-text">
        Your password must be 8-20 characters long, contain letters and numbers,
        and must not contain spaces, special characters, or emoji.
      </div>

      {/* Login button */}
      <button className="btn btn-primary mt-3 w-100" type="submit">
        Button
      </button>
    </div>
  );
};

export default Login;

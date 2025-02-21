import React, { useEffect, useState } from "react";
import axios from "axios";

const Users = () => {
  const [users, setUsers] = useState([]);
  useEffect(() => {
    fetchUsers();
  }, []);

  const fetchUsers = async () => {
    try {
      const res = await axios.get("http://localhost:3000/users");
      setUsers(res.data);
    } catch (error) {
      console.log("Error fetching users: ", error);
    }
  };

  const handleDelete = async (id) => {
    try {
      const res = await axios.delete("http://localhost:3000/users/" + id);
      console.log("Deleted user: ", res);
      if (res.status === 200) {
        alert("User deleted successfully!");
        setUsers((oldUser) => oldUser.filter((user) => user.id !== id));
      }
    } catch (error) {
      console.log("Error deleting user: ", error);
    }
  };
  return (
    <>
      <h1 className="text-center p-2 text-bg-secondary">Users</h1>
      <table className="table table-striped table-bordered">
        <thead>
          <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Address</th>
            <th>Operations</th>
          </tr>
        </thead>
        <tbody>
          {users.map((user) => (
            <tr key={user.id}>
              <td>{user.id}</td>
              <td>{user.name}</td>
              <td>{user.email}</td>
              <td>{user.address}</td>
              <td className="text-center">
                <button
                  onClick={() => handleDelete(user.id)}
                  className="btn btn-danger"
                >
                  X
                </button>
              </td>
            </tr>
          ))}
        </tbody>
      </table>
    </>
  );
};

export default Users;

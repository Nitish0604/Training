import React, { useEffect, useState } from "react";
import axios from "axios";
import { Link } from "react-router-dom";

const Products = () => {
  const [products, setProducts] = useState([]);
  useEffect(() => {
    fetchData();
  }, []);
  const fetchData = async () => {
    try {
      const res = await axios.get("https://dummyjson.com/products");
      console.log("Response: ", res);
      setProducts(res.data.products);
    } catch (error) {
      console.log("Error fetching products: ", error);
    }
  };
  if (products.length === 0) return <div>Fetching products...</div>;
  return (
    <div>
      <h1 className="text-center p-2 text-bg-secondary"> Products page</h1>
      <div className="row gy-5">
        {products.map((product) => (
          <div className="col-lg-4 col-md-6">
            <Link to={`/product/${product.id}`}>
              <h6 key={product.id}>{product.title}</h6>
              <img src={product.thumbnail} />
            </Link>
            <p>${product.price}</p>
            <p>Rating: {product.rating}</p>
            <button className="btn btn-primary">Add to Cart</button>
          </div>
        ))}
      </div>
    </div>
  );
};

export default Products;

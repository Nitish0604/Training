import React, { useEffect, useState } from "react";
import { useParams } from "react-router-dom";
import axios from "axios";

const ProductDetail = () => {
  const { id } = useParams();
  const [product, setProduct] = useState(null);
  useEffect(() => {
    fetchData();
  }, []);
  const fetchData = async () => {
    try {
      const res = await axios.get("https://dummyjson.com/products/" + id);
      console.log("Response: ", res);
      setProduct(res.data);
    } catch (error) {
      console.log("Error fetching product: ", error);
    }
  };
  return (
    <div>
      <h1 className="text-center p-2 text-bg-secondary"> Product Details</h1>
      <div>
        {product && (
          <div>
            <h3>{product.title}</h3>
            <img src={product.thumbnail} />
            <h6>Only at ${product.price}</h6>
            <p>{product.description}</p>
            <p>Category: {product.category}</p>
            <h5>Reviews</h5>
            {product.reviews.map((review) => (
              <div key={review.reviewerEmail}>
                <div>
                  <p>Rating: {review.rating}</p>
                  <p>Comment: {review.comment}</p>
                  <p>User name: {review.reviewerName}</p>
                  <p>Date: {review.date}</p>
                </div>
                <hr />
              </div>
            ))}
          </div>
        )}
      </div>
    </div>
  );
};

export default ProductDetail;

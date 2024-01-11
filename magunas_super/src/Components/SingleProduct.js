import React, { useEffect, useState } from 'react'
import { useParams } from 'react-router-dom'

function SingleProduct() {

    const {categoryName, productId } = useParams()
    const [productDetails, setProductDetails] = useState(null)

    useEffect(() => {
        if (!productId) {
          return; // Don't proceed if productId is undefined
        }
      
        const apiurl = `http://localhost:3000/category/${categoryName}/${productId}`;
        console.log('API URL:', apiurl);

        fetch(apiurl)
          .then(res => {
            console.log('Raw Response:', res);
      
            if (!res.ok) {
              throw new Error(`Failed to fetch data. Status: ${res.status}`);
            }
      
            return res.json();
          })
          .then(data => {
            console.log('Fetched data:', data);
            setProductDetails(data);
          })
          .catch(error => console.error('Error fetching data:', error));
      }, [categoryName, productId]);
       


     if (!productDetails) {
    return <div>Loading...</div>;
  }

  const { name, image_url, price,category } = productDetails;


  return (
    <div className='detailscontainer'>
        <div className='detailswrapper'>
        <h2>Product Detail</h2>
        <div className='productdetails'>
            <img src={image_url} alt='prodo'></img>
            <h5>{name}</h5>
            <h6>{price}</h6>
            <h6>{category}</h6>
        </div>
        </div>
        
      
    </div>
  )
}

export default SingleProduct

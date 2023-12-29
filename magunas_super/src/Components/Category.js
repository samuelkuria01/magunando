// import React from 'react'
// import { useState, useEffect,Link } from 'react'
// import { useParams } from 'react-router-dom'
// function Category() {


//   const { categoryName } = useParams();
//   const [products, setProducts] = useState([]);
//   const [error, setError] = useState(false);
//   const [isLoading, setIsLoading] = useState(false);
  
//   useEffect(() => {
//     const fetchData = async () => {
//       try {
//         const response = await fetch(`http://localhost:3000/${categoryName}`);
//         if (!response.ok) {
//           throw new Error(`Error fetching data. Status: ${response.status}`);
//         }
  
//         const data = await response.json();
  
//         console.log('Received Data:', data);
  
//         setProducts(data);
//         setIsLoading(false);
//       } catch (e) {
//         console.error(e);
//         setError(e.message);
//         setIsLoading(false);
//       }
//     };
  
//     fetchData();
//   }, [categoryName]);
  
//   useEffect(() => {
//     console.log('Products State:', products);
//   }, [products]);
  
//   if (isLoading) {
//     return <div>Loading...</div>;
//   }
  
//   if (error) {
//     return <div>Error: {error}</div>;
//   }

//   console.log('All Products:', products);

  
//   const displayedProducts = categoryName && categoryName.toLowerCase() === 'all'
//     ? products
//     : products.filter(product => product.category && product.category.toLowerCase() === categoryName.toLowerCase());
  
   

//     return (
//       <div>
//         mambo safi inatendeka
//         <h2>Category: {categoryName}</h2>
    
//         <div className='productcontainer'>
//           <div>
//             <h2>hapa kunarugano</h2>
//             {console.log('Filtered Products:', displayedProducts)}
//             {console.log('Displayed Products:', displayedProducts)}
//             {displayedProducts.map((product) => (
//               <div key={product.id}>
//                 <div>
//                { console.log('Component Rendering mamboooooo')};
//                   <h2>we start here</h2>
//                   <Link to={`product/${product.id}`}>
//                     <img alt='maguu' src={product.image} />
//                   </Link>
//                   <div>
//                     <h5>{product.name}</h5>
//                     <p>{product.price}</p>
//                   </div>
//                 </div>
//               </div>
//             ))}
//           </div>
//         </div>
//       </div>
//     );
// }

// export default Category


// import React, { useState, useEffect } from 'react';
// import { Link, useParams } from 'react-router-dom';

// function Category() {
//   const { categoryName } = useParams();
//   const [products, setProducts] = useState([
//     { id: 1, name: 'Product 1', category: 'Category A', image: 'image_url_1', price: 10.99 },
//     { id: 2, name: 'Product 2', category: 'Category B', image: 'image_url_2', price: 19.99 },
//     // Add more dummy data as needed
//   ]);

//   useEffect(() => {
//     // Filter products based on categoryName
//     const filteredProducts = categoryName && categoryName.toLowerCase() !== 'all'
//       ? products.filter(product => product.category.toLowerCase() === categoryName.toLowerCase())
//       : products;

//     console.log('Filtered Products:', filteredProducts);
//   }, [categoryName, products]);

//   return (
//     <div>
//       <h2>Category: {categoryName}</h2>
//       <div className='productcontainer'>
//         <div>
//           {products.map((product) => (
//             <div key={product.id}>
//               <div>
//                 <h2>Component Rendering mamboooooo</h2>
//                 <Link to={`product/${product.id}`}>
//                   <img alt='maguu' src={product.image} />
//                 </Link>
//                 <div>
//                   <h5>{product.name}</h5>
//                   <p>{product.price}</p>
//                 </div>
//               </div>
//             </div>
//           ))}
//         </div>
//       </div>
//     </div>
//   );
// }

// export default Category;


import React, { useState, useEffect } from 'react';
import { Link, useParams } from 'react-router-dom';

function Category() {
  const { categoryName } = useParams();
  const [products, setProducts] = useState([]);
  const [error, setError] = useState(false);
  const [displayedProducts, setDisplayedProducts] = useState([]);
  const [isLoading, setIsLoading] = useState(true);

  useEffect(() => {
    const fetchData = async () => {
      try {
        // Replace the URL with your API endpoint
        const response = await fetch(`http://localhost:3000/${categoryName}`);
        if (!response.ok) {
          throw new Error(`Error fetching data. Status: ${response.status}`);
        }

        const data = await response.json();

        console.log('Received Data:', data);

        setProducts(data);
        setIsLoading(false);
      } catch (e) {
        console.error(e);
        setError(e.message);
        setIsLoading(false);
      }
    };

    fetchData();
  }, [categoryName]);


  useEffect(() => {
    console.log('Products State:', products);
    console.log('Fetching data for category:', categoryName);

    
    const calculatedProducts = categoryName && categoryName.toLowerCase() === 'all'
    ? products
    : products.filter(product => {
        console.log('Product:', product);
        console.log('Product Category:', product.category);
        console.log('Target Category:', categoryName.toLowerCase());

        // Check if the product has a valid category before comparing
        const isValidProduct = product.category && product.category.toLowerCase() === categoryName.toLowerCase();
        console.log('IsValidProduct:', isValidProduct);

        return isValidProduct;
      });

  console.log('Calculated Products:', calculatedProducts);
  console.log('Length of Calculated Products:', calculatedProducts.length);
  console.log('Length of Products:', products.length);



    setDisplayedProducts(calculatedProducts);
  }, [categoryName, products]);

  useEffect(() => {
    console.log('Displayed Products:', displayedProducts);
  }, [displayedProducts]);

  if (isLoading) {
    return <div>Loading...</div>;
  }

  if (error) {
    return <div>Error: {error}</div>;
  }



  return (
    <div>
      <h2>Category: {categoryName}</h2>

      <div className='productcontainer'>
        <div>
       { console.log('Displayed Products:', displayedProducts)};

          {displayedProducts.map((product) => (
            <div key={product.id}>
              <div>
                <Link to={`product/${product.id}`}>
                  <img alt='maguu' src={product.image} />
                </Link>
                <div>
                  <h5>{product.name}</h5>
                  <p>Ksh: {product.price}</p>
                </div>
              </div>
            </div>
          ))}
        </div>
      </div>
    </div>
  );
}

export default Category;

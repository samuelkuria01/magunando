import React, { useState,useEffect } from 'react'
import { Link } from 'react-router-dom'
function Home() {
   const [ allProducts, setAllProducts] = useState([])
   const [ foodProducts, setFoodProducts] = useState([])
   const [selectedCategory, SetSelectedCategory] = useState('all')
   const [error,setError] = useState(false)
   const [isLoading,setIsLoading] = useState(false)


   useEffect(() => {
      const fetchData = async () => {
        try {
          const [allResponse, foodResponse] = await Promise.all([
            fetch('http://localhost:3000/allproducts'),
            fetch('http://localhost:3000/foodproducts'),
          ]);
    
          if (!allResponse.ok || !foodResponse.ok) {
            throw new Error(`Error fetching data. Status: ${allResponse.status}, ${foodResponse.status}`);
          }
    
          const allData = await allResponse.json();
          const foodData = await foodResponse.json();
    
          setAllProducts(allData);
          setFoodProducts(foodData);
          setIsLoading(false);
        } catch (e) {
          console.error(e);
          setError(e.message);
          setIsLoading(false);
        }
      };
    
      fetchData();
    }, []);

   if (isLoading) {
      return <div>Loading...</div>;
    }
  
    if (error) {
      return <div>Error: {error}</div>;
    }


   const handleCategoryClick = (category) => {
      SetSelectedCategory(category)
   }
   
   let displayedProducts;
   if (selectedCategory === 'allproducts') {
     displayedProducts = allProducts;
   } else if (selectedCategory === 'foodproduct') {
     displayedProducts = foodProducts;
   } else {
     // Default to displaying all products when selected category is 'all' or any other unknown category
     displayedProducts = [...allProducts, ...foodProducts];
   }
   
   



  return (
    <div className='Homecontainer'>
        <div className='homebox1'>
        <img className='magunaforo' alt='maguna' src='../Images/magunalogo.png'></img>
        <div className='searchcont'>
            <input 
            type="text"
            placeholder='Search...'
            className='search-input'
            ></input>
            <i id='magnify' class="fa-solid fa-magnifying-glass fa-beat-fade"></i>
        </div>
        <div className='signcart'>
            <div>
            <button className='signcartbtn'>SignIn</button>
            </div>
            <div className='cartimg'>
            <i class="fa-solid fa-cart-shopping"></i>
            </div>
        </div>
        </div>

        <div className='homebox2'>
            <button onClick={() => handleCategoryClick('all')}>
               <Link> All</Link>
            </button>
            

            <button onClick={() => handleCategoryClick('foodproduct')}>
               <Link>Food Products</Link>
            </button>

            <button onClick={() => handleCategoryClick('fruitsveges')}>
               <Link> Fruits & Veges</Link>
            </button>

            <button onClick={() => handleCategoryClick('beverages')}>
               <Link> Beverages</Link>
            </button>

            <button onClick={() => handleCategoryClick('cleaninghouseholds')}>
               <Link> Cleaning & Households</Link>
            </button>

            <button onClick={() => handleCategoryClick('babyproducts')}>
               <Link> Baby Products</Link>
            </button>

            <button onClick={() => handleCategoryClick('beautycosmetics')}>
               <Link>Beauty & Cosmetics</Link>
            </button>

            
        </div>


        <div className='productcontainer'>
            <div>
               {displayedProducts.map((product) =>(
                  <div key={product.id}>
                     <div>
                        <Link>
                        <img src={product.image}></img>
                        </Link>
                        <div>
                           <h5>{product.name}</h5>
                           <p>{product.price}</p>
                        </div>
                     </div>
                  </div>
               ))

               }
            </div>
        </div>
    </div>
  )
}

export default Home

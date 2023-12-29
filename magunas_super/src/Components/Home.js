import { Link } from 'react-router-dom'
function Home() {
   



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
            <button>
               <Link to='category/allproducts'> All</Link>
            </button>
            

            <button >
               <Link to='category/foodyproducts'>Food Products</Link>
            </button>

            <button >
               <Link to='category/vegesproducts'> Fruits & Veges</Link>
            </button>

            <button >
               <Link to='category/bevaragesproducts'> Beverages</Link>
            </button>

            <button>
               <Link to='category/households'> Cleaning & Households</Link>
            </button>

            <button>
               <Link to='category/babyproducts'> Baby Products</Link>
            </button>

            <button>
               <Link to='category/cosmetics'>Beauty & Cosmetics</Link>
            </button>

            
        </div>


        {/* <div className='productcontainer'>
            <div>
               {displayedProducts.map((product) =>(
                  <div key={product.id}>
                     <div>
                        <Link>
                        <img alt='maguu' src={product.image}></img>
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
        </div> */}
    </div>
  )
}

export default Home

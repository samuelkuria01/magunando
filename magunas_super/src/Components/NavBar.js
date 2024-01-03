import { Link } from 'react-router-dom'
function NavBar() {
   



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

         </div>
            <div>
               <p></p>
            <button className='signcartbtn'>SignIn</button>
            </div>
            <div className='cartimg'>
            <i class="fa-solid fa-cart-shopping"></i>
            </div>
        </div>
        </div>

        <div className='homebox2'>
            <button>
               <Link to='/'> All</Link>
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


        
    </div>
  )
}

export default NavBar;

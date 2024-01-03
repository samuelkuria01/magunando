import React from 'react'
import { Link,useState } from 'react-router-dom'

function Home() {

  
  
  return (
    <div>

      <div className='homecategory'>
         <div className='firstcategory'>
            <Link to='category/meatproducts'>
            <img className='meatimg' alt='meat' src='https://img.freepik.com/free-vector/meat-products-advertising-promotion-flat-circular-composition-with-ham-steak-sausages-bacon-meatloaf-beef-shank-illustration_1284-65857.jpg'></img>
            </Link>
            <div>
            <button>
                  <Link to='category/meatproducts'>Meat products</Link>
               </button>
            </div>
         </div>
           
            <div className='firstcategory'>
            <Link to='category/electricalappliances'>
            <img className='meatimg' alt='meat' src='https://img.freepik.com/free-vector/meat-products-advertising-promotion-flat-circular-composition-with-ham-steak-sausages-bacon-meatloaf-beef-shank-illustration_1284-65857.jpg'></img>
            </Link>        
             <div>
            <button >
               <Link to='category/electricalappliances'>Electrical appliances</Link>
            </button>
            </div>
            </div>
            
            <div className='firstcategory'>
            <Link to='category/alcohal'>
            <img className='meatimg' alt='meat' src='https://img.freepik.com/free-vector/meat-products-advertising-promotion-flat-circular-composition-with-ham-steak-sausages-bacon-meatloaf-beef-shank-illustration_1284-65857.jpg'></img>
            </Link>
            <div>
            <button >
               <Link to='category/alcohal'>Alcohal</Link>
            </button>
            </div>
            </div>
            
            <div className='firstcategory'>
            <Link to='category/weekenddeals'>
            <img className='meatimg' alt='meat' src='https://img.freepik.com/free-vector/meat-products-advertising-promotion-flat-circular-composition-with-ham-steak-sausages-bacon-meatloaf-beef-shank-illustration_1284-65857.jpg'></img>
            </Link>           
             <div>
            <button >
               <Link to='category/weekenddeals'>Weekend deals</Link>
            </button>
            </div>
            </div>
            
            <div className='firstcategory'>
            <Link to='category/bestdeals'>
            <img className='meatimg' alt='meat' src='https://img.freepik.com/free-vector/meat-products-advertising-promotion-flat-circular-composition-with-ham-steak-sausages-bacon-meatloaf-beef-shank-illustration_1284-65857.jpg'></img>
            </Link>          
              <div>
            <button >
               <Link to='category/bestdeals'>Best deals</Link>
            </button>
            </div>
            </div>
           
            <div className='firstcategory'>
            <Link to='category/foodyproducts'>
            <img className='meatimg' alt='meat' src='https://img.freepik.com/free-vector/meat-products-advertising-promotion-flat-circular-composition-with-ham-steak-sausages-bacon-meatloaf-beef-shank-illustration_1284-65857.jpg'></img>
            </Link>
            <div>
            <button >
               <Link to='category/foodyproducts'>Food Products</Link>
            </button>
            </div>
            </div>
            
           
            <div className='firstcategory'>
            <Link to='category/vegesproducts'>
            <img className='meatimg' alt='meat' src='https://img.freepik.com/free-vector/meat-products-advertising-promotion-flat-circular-composition-with-ham-steak-sausages-bacon-meatloaf-beef-shank-illustration_1284-65857.jpg'></img>
            </Link>
            <div>
            <button >
               <Link to='category/vegesproducts'> Fruits & Veges</Link>
            </button>
            </div>
            </div>
           
           
            <div className='firstcategory'>
            <Link to='category/bevaragesproducts'>
            <img className='meatimg' alt='meat' src='https://img.freepik.com/free-vector/meat-products-advertising-promotion-flat-circular-composition-with-ham-steak-sausages-bacon-meatloaf-beef-shank-illustration_1284-65857.jpg'></img>
            </Link>
            <div>
            <button >
               <Link to='category/bevaragesproducts'> Beverages</Link>
            </button>
            </div>
            </div>
         
           
            <div className='firstcategory'>
            <Link to='category/babyproducts'>
            <img className='meatimg' alt='meat' src='https://img.freepik.com/free-vector/meat-products-advertising-promotion-flat-circular-composition-with-ham-steak-sausages-bacon-meatloaf-beef-shank-illustration_1284-65857.jpg'></img>
            </Link>
            <div>
            <button>
               <Link to='category/babyproducts'> Baby Products</Link>
            </button>
            </div>
            </div>
           
            
            <div className='firstcategory'>
            <Link to='category/cosmetics'>
            <img className='meatimg' alt='meat' src='https://img.freepik.com/free-vector/meat-products-advertising-promotion-flat-circular-composition-with-ham-steak-sausages-bacon-meatloaf-beef-shank-illustration_1284-65857.jpg'></img>
            </Link>
            <div>
            <button>
               <Link to='category/cosmetics'>Beauty & Cosmetics</Link>
            </button>
            </div>
            </div>
           
        </div>






      <div className='firstcarousel'>
         <div className='carouselcontainer'>
         <div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
         <div class="carousel-inner">
            <div class="carousel-item active" data-bs-interval="5000">
               <img src="https://media.rnztools.nz/rnz/image/upload/s--OXfQT08L--/c_scale,f_auto,q_auto,w_1050/v1643845745/4NY4SPQ_copyright_image_144498" class="d-block w-100" alt="..."/>
            </div>
            <div class="carousel-item" data-bs-interval="2000">
               <img src="https://i.insider.com/569e3768918a0f07033ba8ff?width=1200&format=jpeg" class="d-block w-100" alt="..."/>
            </div>
            <div class="carousel-item">
               <img src="https://bmarketingstrategy.com/wp-content/uploads/2021/11/v1.jpg" class="d-block w-100" alt="..."/>
            </div>
         </div>
         <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
         </button>
         <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
         </button>
         </div>
         </div>
      </div>


<div className='arouselcontainer'>
<div className='carouselheader'>
   <h2>Best Deals</h2>
</div>

      <div id="carouselExampleControls" class="carousel carousel-dark slide" data-bs-ride="true">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <div className='carouselcard-wrapper'>
      
      <div class="cookie-card">
         
         <img className='cookieimg' alt='mambopoa' src='https://bmarketingstrategy.com/wp-content/uploads/2021/11/v1.jpg'></img>
            <p class="description">We use cookies to ensure that we give you the best experience on our website.</p>
            <div class="actions">
               <button class="pref">
                     Manage your preferences
               </button>
               <button class="accept">
                     Accept
               </button>
            </div>
         </div>

      <div class="cookie-card">
      
      <img className='cookieimg' alt='mambopoa' src='https://bmarketingstrategy.com/wp-content/uploads/2021/11/v1.jpg'></img>
         <p class="description">We use cookies to ensure that we give you the best experience on our website.</p>
         <div class="actions">
            <button class="pref">
                     Manage your preferences
               </button>
               <button class="accept">
                     Accept
               </button>
            </div>
         </div>

         <div class="cookie-card">
      
      <img className='cookieimg' alt='mambopoa' src='https://bmarketingstrategy.com/wp-content/uploads/2021/11/v1.jpg'></img>
         <p class="description">We use cookies to ensure that we give you the best experience on our website.</p>
         <div class="actions">
            <button class="pref">
                     Manage your preferences
               </button>
               <button class="accept">
                     Accept
               </button>
            </div>
         </div>

         <div class="cookie-card">
         <img className='cookieimg' alt='mambopoa' src='https://bmarketingstrategy.com/wp-content/uploads/2021/11/v1.jpg'></img>
            <p class="description">We use cookies to ensure that we give you the best experience on our website.</p>
            <div class="actions">
               <button class="pref">
                     Manage your preferences
               </button>
               <button class="accept">
                     Accept
               </button>
            </div>
         </div>
      </div>
    </div>
    <div class="carousel-item">
    <div className='carouselcard-wrapper'>
      
      <div class="cookie-card">
         <img className='cookieimg' alt='mambopoa' src='https://img.freepik.com/free-vector/meat-products-advertising-promotion-flat-circular-composition-with-ham-steak-sausages-bacon-meatloaf-beef-shank-illustration_1284-65857.jpg'></img>
            <p class="description">We use cookies to ensure that we give you the best experience on our website.</p>
            <div class="actions">
               <button class="pref">
                     Manage your preferences
               </button>
               <button class="accept">
                     Accept
               </button>
            </div>
         </div>

         <div class="cookie-card">
      
      <img className='cookieimg' alt='mambopoa' src='https://bmarketingstrategy.com/wp-content/uploads/2021/11/v1.jpg'></img>
         <p class="description">We use cookies to ensure that we give you the best experience on our website.</p>
         <div class="actions">
            <button class="pref">
                     Manage your preferences
               </button>
               <button class="accept">
                     Accept
               </button>
            </div>
         </div>

         <div class="cookie-card">
         <img className='cookieimg' alt='mambopoa' src='https://bmarketingstrategy.com/wp-content/uploads/2021/11/v1.jpg'></img>
            <p class="description">We use cookies to ensure that we give you the best experience on our website.</p>
            <div class="actions">
               <button class="pref">
                     Manage your preferences
               </button>
               <button class="accept">
                     Accept
               </button>
            </div>
         </div>

         <div class="cookie-card">
         <img className='cookieimg' alt='mambopoa' src='https://bmarketingstrategy.com/wp-content/uploads/2021/11/v1.jpg'></img>
            <p class="description">We use cookies to ensure that we give you the best experience on our website.</p>
            <div class="actions">
               <button class="pref">
                     Manage your preferences
               </button>
               <button class="accept">
                     Accept
               </button>
            </div>
         </div>
      </div>    </div>
    <div class="carousel-item">
    <div className='carouselcard-wrapper'>
      
      <div class="cookie-card">
         <img className='cookieimg' alt='mambopoa' src='https://img1.exportersindia.com/product_images/bc-full/2021/4/8724210/product-jpeg-500x500--1618209824.jpg'></img>
            <p class="description">We use cookies to ensure that we give you the best experience on our website.</p>
            <div class="actions">
               <button class="pref">
                     Manage your preferences
               </button>
               <button class="accept">
                     Accept
               </button>
            </div>
         </div>

         <div class="cookie-card">
      
      <img className='cookieimg' alt='mambopoa' src='https://bmarketingstrategy.com/wp-content/uploads/2021/11/v1.jpg'></img>
         <p class="description">We use cookies to ensure that we give you the best experience on our website.</p>
         <div class="actions">
            <button class="pref">
                     Manage your preferences
               </button>
               <button class="accept">
                     Accept
               </button>
            </div>
         </div>

         <div class="cookie-card">
         <img className='cookieimg' alt='mambopoa' src='https://bmarketingstrategy.com/wp-content/uploads/2021/11/v1.jpg'></img>
            <p class="description">We use cookies to ensure that we give you the best experience on our website.</p>
            <div class="actions">
               <button class="pref">
                     Manage your preferences
               </button>
               <button class="accept">
                     Accept
               </button>
            </div>
         </div>

         <div class="cookie-card">
         <img className='cookieimg' alt='mambopoa' src='https://bmarketingstrategy.com/wp-content/uploads/2021/11/v1.jpg'></img>
            <p class="description">We use cookies to ensure that we give you the best experience on our website.</p>
            <div class="actions">
               <button class="pref">
                     Manage your preferences
               </button>
               <button class="accept">
                     Accept
               </button>
            </div>
         </div>
      </div>    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
</div>


      <div id="carouselExampleControls" class="carousel carousel-dark slide" data-bs-ride="true">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <div className='carouselcard-wrapper'>
      
      <div class="cookie-card">
         
         <img className='cookieimg' alt='mambopoa' src='https://bmarketingstrategy.com/wp-content/uploads/2021/11/v1.jpg'></img>
            <p class="description">We use cookies to ensure that we give you the best experience on our website.</p>
            <div class="actions">
               <button class="pref">
                     Manage your preferences
               </button>
               <button class="accept">
                     Accept
               </button>
            </div>
       </div>

      <div class="cookie-card">
      
      <img className='cookieimg' alt='mambopoa' src='https://bmarketingstrategy.com/wp-content/uploads/2021/11/v1.jpg'></img>
         <p class="description">We use cookies to ensure that we give you the best experience on our website.</p>
         <div class="actions">
            <button class="pref">
                     Manage your preferences
               </button>
               <button class="accept">
                     Accept
               </button>
            </div>
         </div>

         <div class="cookie-card">
      
      <img className='cookieimg' alt='mambopoa' src='https://bmarketingstrategy.com/wp-content/uploads/2021/11/v1.jpg'></img>
         <p class="description">We use cookies to ensure that we give you the best experience on our website.</p>
         <div class="actions">
            <button class="pref">
                     Manage your preferences
               </button>
               <button class="accept">
                     Accept
               </button>
            </div>
         </div>

         <div class="cookie-card">
         <img className='cookieimg' alt='mambopoa' src='https://bmarketingstrategy.com/wp-content/uploads/2021/11/v1.jpg'></img>
            <p class="description">We use cookies to ensure that we give you the best experience on our website.</p>
            <div class="actions">
               <button class="pref">
                     Manage your preferences
               </button>
               <button class="accept">
                     Accept
               </button>
            </div>
         </div>
      </div>
    </div>
    <div class="carousel-item">
    <div className='carouselcard-wrapper'>
      
      <div class="cookie-card">
         <img className='cookieimg' alt='mambopoa' src='https://img.freepik.com/free-vector/meat-products-advertising-promotion-flat-circular-composition-with-ham-steak-sausages-bacon-meatloaf-beef-shank-illustration_1284-65857.jpg'></img>
            <p class="description">We use cookies to ensure that we give you the best experience on our website.</p>
            <div class="actions">
               <button class="pref">
                     Manage your preferences
               </button>
               <button class="accept">
                     Accept
               </button>
            </div>
         </div>

         <div class="cookie-card">
      
      <img className='cookieimg' alt='mambopoa' src='https://bmarketingstrategy.com/wp-content/uploads/2021/11/v1.jpg'></img>
         <p class="description">We use cookies to ensure that we give you the best experience on our website.</p>
         <div class="actions">
            <button class="pref">
                     Manage your preferences
               </button>
               <button class="accept">
                     Accept
               </button>
            </div>
         </div>

         <div class="cookie-card">
         <img className='cookieimg' alt='mambopoa' src='https://bmarketingstrategy.com/wp-content/uploads/2021/11/v1.jpg'></img>
            <p class="description">We use cookies to ensure that we give you the best experience on our website.</p>
            <div class="actions">
               <button class="pref">
                     Manage your preferences
               </button>
               <button class="accept">
                     Accept
               </button>
            </div>
         </div>

         <div class="cookie-card">
         <img className='cookieimg' alt='mambopoa' src='https://bmarketingstrategy.com/wp-content/uploads/2021/11/v1.jpg'></img>
            <p class="description">We use cookies to ensure that we give you the best experience on our website.</p>
            <div class="actions">
               <button class="pref">
                     Manage your preferences
               </button>
               <button class="accept">
                     Accept
               </button>
            </div>
         </div>
      </div>    </div>
    <div class="carousel-item">
    <div className='carouselcard-wrapper'>
      
      <div class="cookie-card">
         <img className='cookieimg' alt='mambopoa' src='https://img1.exportersindia.com/product_images/bc-full/2021/4/8724210/product-jpeg-500x500--1618209824.jpg'></img>
            <p class="description">We use cookies to ensure that we give you the best experience on our website.</p>
            <div class="actions">
               <button class="pref">
                     Manage your preferences
               </button>
               <button class="accept">
                     Accept
               </button>
            </div>
         </div>

         <div class="cookie-card">
      
      <img className='cookieimg' alt='mambopoa' src='https://bmarketingstrategy.com/wp-content/uploads/2021/11/v1.jpg'></img>
         <p class="description">We use cookies to ensure that we give you the best experience on our website.</p>
         <div class="actions">
            <button class="pref">
                     Manage your preferences
               </button>
               <button class="accept">
                     Accept
               </button>
            </div>
         </div>

         <div class="cookie-card">
         <img className='cookieimg' alt='mambopoa' src='https://bmarketingstrategy.com/wp-content/uploads/2021/11/v1.jpg'></img>
            <p class="description">We use cookies to ensure that we give you the best experience on our website.</p>
            <div class="actions">
               <button class="pref">
                     Manage your preferences
               </button>
               <button class="accept">
                     Accept
               </button>
            </div>
         </div>

         <div class="cookie-card">
         <img className='cookieimg' alt='mambopoa' src='https://bmarketingstrategy.com/wp-content/uploads/2021/11/v1.jpg'></img>
            <p class="description">We use cookies to ensure that we give you the best experience on our website.</p>
            <div class="actions">
               <button class="pref">
                     Manage your preferences
               </button>
               <button class="accept">
                     Accept
               </button>
            </div>
         </div>
      </div>   
       </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>



      <div className='carousel2'>
      
            <div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
      <div class="carousel-inner">
         <div class="carousel-item active" data-bs-interval="10000">
            <img src="https://img1.exportersindia.com/product_images/bc-full/2021/4/8724210/product-jpeg-500x500--1618209824.jpg" class="d-block w-100" alt="..."/>
         </div>
         <div class="carousel-item" data-bs-interval="2000">
            <img src="https://img.pikbest.com/origin/10/04/10/76epIkbEsTzuw.jpg!w700wp" class="d-block w-100" alt="..."/>
         </div>
         <div class="carousel-item">
            <img src="https://cdn.7cart.com/i/o/aHR0cHM6Ly93d3cubXlyaWFkZ3JlZXluLmNvbS9JbWFnZXMvQ2F0ZWdvcmllcy9jb21wdXRlci1hbmQtZWxlY3Ryb25pY3MtYWNjZXNzb3JpZXNfXzU3ODM5Lm9yaWdpbmFsLmpwZw2.jpg" class="d-block w-100" alt="..."/>
         </div>
      </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
         <span class="carousel-control-prev-icon" aria-hidden="true"></span>
         <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="next">
         <span class="carousel-control-next-icon" aria-hidden="true"></span>
         <span class="visually-hidden">Next</span>
      </button>
      </div>
      </div>










      <div id="carouselExampleControls" class="carousel carousel-dark slide" data-bs-ride="true">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <div className='carouselcard-wrapper'>
      
      <div class="cookie-card">
         
         <img className='cookieimg' alt='mambopoa' src='https://bmarketingstrategy.com/wp-content/uploads/2021/11/v1.jpg'></img>
            <p class="description">We use cookies to ensure that we give you the best experience on our website.</p>
            <div class="actions">
               <button class="pref">
                     Manage your preferences
               </button>
               <button class="accept">
                     Accept
               </button>
            </div>
         </div>

      <div class="cookie-card">
      
      <img className='cookieimg' alt='mambopoa' src='https://bmarketingstrategy.com/wp-content/uploads/2021/11/v1.jpg'></img>
         <p class="description">We use cookies to ensure that we give you the best experience on our website.</p>
         <div class="actions">
            <button class="pref">
                     Manage your preferences
               </button>
               <button class="accept">
                     Accept
               </button>
            </div>
         </div>

         <div class="cookie-card">
      
      <img className='cookieimg' alt='mambopoa' src='https://bmarketingstrategy.com/wp-content/uploads/2021/11/v1.jpg'></img>
         <p class="description">We use cookies to ensure that we give you the best experience on our website.</p>
         <div class="actions">
            <button class="pref">
                     Manage your preferences
               </button>
               <button class="accept">
                     Accept
               </button>
            </div>
         </div>

         <div class="cookie-card">
         <img className='cookieimg' alt='mambopoa' src='https://bmarketingstrategy.com/wp-content/uploads/2021/11/v1.jpg'></img>
            <p class="description">We use cookies to ensure that we give you the best experience on our website.</p>
            <div class="actions">
               <button class="pref">
                     Manage your preferences
               </button>
               <button class="accept">
                     Accept
               </button>
            </div>
         </div>
      </div>
    </div>
    <div class="carousel-item">
    <div className='carouselcard-wrapper'>
      
      <div class="cookie-card">
         <img className='cookieimg' alt='mambopoa' src='https://img.freepik.com/free-vector/meat-products-advertising-promotion-flat-circular-composition-with-ham-steak-sausages-bacon-meatloaf-beef-shank-illustration_1284-65857.jpg'></img>
            <p class="description">We use cookies to ensure that we give you the best experience on our website.</p>
            <div class="actions">
               <button class="pref">
                     Manage your preferences
               </button>
               <button class="accept">
                     Accept
               </button>
            </div>
         </div>

         <div class="cookie-card">
      
      <img className='cookieimg' alt='mambopoa' src='https://bmarketingstrategy.com/wp-content/uploads/2021/11/v1.jpg'></img>
         <p class="description">We use cookies to ensure that we give you the best experience on our website.</p>
         <div class="actions">
            <button class="pref">
                     Manage your preferences
               </button>
               <button class="accept">
                     Accept
               </button>
            </div>
         </div>

         <div class="cookie-card">
         <img className='cookieimg' alt='mambopoa' src='https://bmarketingstrategy.com/wp-content/uploads/2021/11/v1.jpg'></img>
            <p class="description">We use cookies to ensure that we give you the best experience on our website.</p>
            <div class="actions">
               <button class="pref">
                     Manage your preferences
               </button>
               <button class="accept">
                     Accept
               </button>
            </div>
         </div>

         <div class="cookie-card">
         <img className='cookieimg' alt='mambopoa' src='https://bmarketingstrategy.com/wp-content/uploads/2021/11/v1.jpg'></img>
            <p class="description">We use cookies to ensure that we give you the best experience on our website.</p>
            <div class="actions">
               <button class="pref">
                     Manage your preferences
               </button>
               <button class="accept">
                     Accept
               </button>
            </div>
         </div>
      </div>    </div>
    <div class="carousel-item">
    <div className='carouselcard-wrapper'>
      
      <div class="cookie-card">
         <img className='cookieimg' alt='mambopoa' src='https://img1.exportersindia.com/product_images/bc-full/2021/4/8724210/product-jpeg-500x500--1618209824.jpg'></img>
            <p class="description">We use cookies to ensure that we give you the best experience on our website.</p>
            <div class="actions">
               <button class="pref">
                     Manage your preferences
               </button>
               <button class="accept">
                     Accept
               </button>
            </div>
         </div>

         <div class="cookie-card">
      
      <img className='cookieimg' alt='mambopoa' src='https://bmarketingstrategy.com/wp-content/uploads/2021/11/v1.jpg'></img>
         <p class="description">We use cookies to ensure that we give you the best experience on our website.</p>
         <div class="actions">
            <button class="pref">
                     Manage your preferences
               </button>
               <button class="accept">
                     Accept
               </button>
            </div>
         </div>

         <div class="cookie-card">
         <img className='cookieimg' alt='mambopoa' src='https://bmarketingstrategy.com/wp-content/uploads/2021/11/v1.jpg'></img>
            <p class="description">We use cookies to ensure that we give you the best experience on our website.</p>
            <div class="actions">
               <button class="pref">
                     Manage your preferences
               </button>
               <button class="accept">
                     Accept
               </button>
            </div>
         </div>

         <div class="cookie-card">
         <img className='cookieimg' alt='mambopoa' src='https://bmarketingstrategy.com/wp-content/uploads/2021/11/v1.jpg'></img>
            <p class="description">We use cookies to ensure that we give you the best experience on our website.</p>
            <div class="actions">
               <button class="pref">
                     Manage your preferences
               </button>
               <button class="accept">
                     Accept
               </button>
            </div>
         </div>
      </div>    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
   




      
    </div>
  )
}

export default Home

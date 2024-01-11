import './App.css';
import { Routes, Route} from 'react-router-dom'
import Home from './Components/Home';
import Category from './Components/Category';
import NavBar from './Components/NavBar';
import SingleProduct from './Components/SingleProduct';

function App() {

  return (
    <div className="App">
      <NavBar />
      <Routes>
        <Route path='/' element={<Home />} />
        <Route path='/category/:categoryName' element={<Category />} />
        <Route path='/category/:categoryName/:productId' element={<SingleProduct />} />
      </Routes>
    </div>
  );
}

export default App;

import './App.css';
import { Routes, Route} from 'react-router-dom'
import Home from './Components/Home';
import Category from './Components/Category';
import NavBar from './Components/NavBar';

function App() {
  return (
    <div className="App">
      <NavBar />
     <Routes>
      <Route path='/' element={<Home />} />
      <Route path='/category/:categoryName' element={<Category />} />
     </Routes>
    </div>
  );
}

export default App;

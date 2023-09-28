import '../App.css';
import { useState, useEffect } from "react";
import { Routes, Route } from "react-router-dom";
import NavBar from './NavBar';
import Home from './Home';
import BookList from './BookList';


function App() {
  const [bookData, setBookData] = useState(0);

  useEffect(() => {
    fetch("/books")
      .then((r) => r.json())
      .then((data) => setBookData(data));
  }, []);

 console.log(bookData)

  return (
    <div className="App">
      <nav className="App-header"> <NavBar/> </nav>
      <Routes>
        <Route path="/" element={<Home/>}/>
        <Route path="/books" element={<BookList bookData={bookData} />}/>
      </Routes>
      
      {/* <BookList bookData={bookData} /> */}
      
    </div>
  );
}

export default App;

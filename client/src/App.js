import { useEffect, useState } from 'react';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <Hello />
        
      </header>
      <main>
        <Contents />
        <Menu />
      </main>
    </div>
  );
}

function Hello() {
  const [message, setMessage] = useState(null);
  useEffect(() => {
    fetch('/heading')
      .then((x) => {
        console.log({ x });
        return x.json();
      })
      .then((x) => {
        console.log({ x });
        return setMessage(x.burritos);
      });
  }, [setMessage]);

  return <div>Burritos. {message}</div>;
}

function Contents() {
  const [contents, setContents] = useState(null);
  useEffect(() => {
    fetch('/show')
    .then((x) => {
      return x.json();
    })
    .then((x) => {
      return setContents(x.contents)
    });
  }, [setContents]);
  return <div>Your burrito currently contains: {contents}</div>
}

function Menu() {
  const [ingredients, setIngredients] = useState(null);
  useEffect(() => {
    fetch('/list')
    .then((x) => {
      console.log({ x });
      return x.json();
    }).then((x) => {
      console.log({ x });
      return setIngredients(x.ingredients)
    });
  }, [setIngredients]);
  return <div>Ingredients: {ingredients} </div> 
}

export default App;

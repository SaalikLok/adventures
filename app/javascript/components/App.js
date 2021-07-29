import React from "react"
import { BrowserRouter, Route, Switch } from "react-router-dom"

const App = () => {
  return (
    <BrowserRouter>
      <Switch>
        <Route exact path="/">
          <div>Hello World Index</div>
        </Route>
        <Route exact path="/regions/:id">
          <div>REGION PAGE</div>
        </Route>
      </Switch>
    </BrowserRouter>
  )
}

export default App

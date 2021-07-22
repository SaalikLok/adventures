import React from "react"
import { BrowserRouter, Route, Switch } from "react-router-dom"

const App = () => {
  return (
    <BrowserRouter>
      <Switch>
        <Route path="/">
          <div>Hello World Index</div>
        </Route>
      </Switch>
    </BrowserRouter>
  )
}

export default App

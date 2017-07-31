import {h} from './link'
import Home from './home'
import {Identity} from './identity'
import Feed from './feed'
import Nav from './nav'

export default props =>
<div class="wrap">
  <Home />
  <Identity />
  <Feed />
  <Nav />
  <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
</div>

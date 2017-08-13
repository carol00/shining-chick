import {h} from './link'
import HomeScreen from './home-screen'
import {Profile} from './profile'
import FeedScreen from './feed-screen'
import Nav from './nav-block'

export default props =>
<div class="wrap">
  <HomeScreen />
  <Profile />
  <FeedScreen />
  <Nav />
  <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
</div>

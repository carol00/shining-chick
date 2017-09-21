import {h} from './link'
import {Nav} from './nav'
import Header from './header'
import {Content} from './location'
import {Popout} from './popout'

export default props =>
<div class="wrap">
  <Header />
  <Content />
  <Nav />
  <Popout />
  <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
</div>

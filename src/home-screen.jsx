import {h} from './link'
import Chick from './chick'
import Egg from './egg'
import Indicator from './indicator'

export default ({name}) =>
<div class="home">
  <p>{name}</p>
  <Egg />
  <div>
    <Chick />
    <Indicator value="5" />
  </div>
</div>

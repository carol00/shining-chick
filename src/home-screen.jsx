import {h} from './link'
import Chick from './chick'
import Egg from './egg'
import Indicator from './indicator'
import {Home} from './home'

const Create = ({name, onClick, onChange}) =>
<div>
  <input placeholder="name" onChange={onChange}/>
  <button class="btn" onClick={onClick}>Create</button>
</div>

const Name = ({name}) =>
<p>{name}</p>

export default ({name, onClick, onChange}) =>
<div class="home">
  {name?
    <Name name={name}/>:
    <Create onClick={onClick} onChange={onChange}/>
  }
  <div class="master">
    <Egg active={name}/>
    <div class="actor">
      <Chick />
      <Indicator value="5" />
    </div>
  </div>
</div>

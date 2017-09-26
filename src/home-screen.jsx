import {h} from './link'
import Chick from './chick'
import Egg from './egg'
import Indicator from './indicator'
import {Home} from './home'
import Ghost from './ghost'

const Create = ({name, onClick, onChange}) =>
<div class="create-set">
  <input placeholder="name" onChange={onChange}/>
  <button class="btn" onClick={onClick}>Create</button>
</div>

const Name = ({name}) =>
<p>{name}</p>

const Actor = ({satisfaction}) =>
<div>
  <Chick />
  <Indicator value={satisfaction} />
</div>

export default ({name, onClick, onChange, satisfaction, ghost}) =>
<div class="home">
  {name?
    <Name name={name}/>:
    <Create onClick={onClick} onChange={onChange}/>
  }
  <div class="master">
    <Egg active={name}/>
    <div class="actor">
      {ghost?
        <Ghost />:<Actor satisfaction={satisfaction}/>
      }
    </div>
  </div>
</div>

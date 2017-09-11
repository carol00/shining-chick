import {h} from './link'

export default ({items}) =>
<div class="feed">
  {items.map(({name, onClick, food}) =>
    <div onClick={onClick}>
      <p>{name}</p>
      {food}
    </div>
  )}
</div>

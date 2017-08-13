import {h} from './link'
import {Profile} from './profile'

export default ({name, birthday, weight}) =>
<div class="identity">
  <div class="item">
    <label>Name：</label><input placeholder={name} />
  </div>
  <div class="item">
    <label>Birthday：</label><span>{birthday}</span>
  </div>
  <div class="item">
    <label>Weight：</label><span>{weight}kg</span>
  </div>
  <button class="btn">Creat</button>
</div>

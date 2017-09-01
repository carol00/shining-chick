import {h} from './link'

export default ({name, birthday, satisfaction}) =>
<div class="identity">
  <div class="item">
    <label>Name：</label><span>{birthday}</span>
  </div>
  <div class="item">
    <label>Birthday：</label><span>{birthday}</span>
  </div>
  <div class="item">
    <label>Satisfaction：</label><span>{satisfaction}</span>
  </div>
</div>

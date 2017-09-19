import {h} from './link'

export default ({name, birthday, satisfaction}) =>
<div class="profile">
  <div class="items">
    <div>
      <label>Name：</label><span>{name}</span>
    </div>
    <div>
      <label>Birthday：</label><span>{birthday}</span>
    </div>
    <div>
      <label>Satisfaction：</label><span>{satisfaction}</span>
    </div>
  </div>

  <div>
    <img src="images/chick-bg.png" />
  </div>
</div>

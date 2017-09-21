import {h} from './link'

export default ({styles, restore, satisfaction}) =>
<div class={styles} onanimationEnd={restore}>
  <div class="content">
    <div class="title">
      <i class="fa fa-bullhorn"></i>
      <h4>Feeding success</h4>
    </div>
    <div class="depiction">
      <span>+{satisfaction}</span>
      <p>satisfaction</p>
    </div>
  </div>
</div>

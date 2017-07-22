import {h} from './link'

const Rice = () =>
<div class="plate">
  <div class="inside">
    {Array.from({length: 65}).map(() =>
      <div class="rice"></div>
    )}
  </div>
</div>


export default () =>
<div class="feed">
  <Rice />
</div>

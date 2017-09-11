import {h} from './link'

const Plate = () =>
<div class="plate">
  <div class="inside">
  </div>
</div>

const Bowl = () =>
<div class="bowl">
  <div class="inside">
    <Rice />
  </div>
  <div class="bottom"></div>
</div>

const Rice = () =>
<div class="rice">
  {Array.from({length: 13}).map(() =>
    <span></span>
  )}
</div>

export {Plate, Bowl}

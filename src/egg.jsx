import {h} from './link'

const Curve = () =>
<div class="curve">
  {Array.from({length: 6}).map(() =>
    <span></span>
  )}
</div>

export default () =>
<div class="egg shake-horizontal">
  <Curve />
</div>

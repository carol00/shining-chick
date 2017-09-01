import {h} from './link'

const Curve = () =>
<div class="curve">
  {Array.from({length: 6}).map(() =>
    <span></span>
  )}
</div>

export default ({active}) =>
<div class={'egg shake-horizontal' + (active? ' burst':'')}>
  <Curve />
</div>

import {h} from './link'

const Curve = ({active}) =>
<div class={'curve ' + (active? 'burst':'')}>
  {Array.from({length: 6}).map(() =>
    <span></span>
  )}
</div>

export default ({active}) =>
<div class="egg shake-horizontal">
  <Curve active={active}/>
</div>

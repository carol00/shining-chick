import {h} from './link'

export default ({value=10}) =>
<div class="indicator">
  <div>
    {Array.from({length: value}).map(() =>
      <span></span>
    )}
  </div>
</div>

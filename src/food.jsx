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

const Grain = () =>
<div>
  <img src="images/grain.png" />
</div>

const Vegetables = () =>
<div>
  <img src="images/vegetables.png" />
</div>

const Bread = () =>
<div>
  <img src="images/bread.png" />
</div>

const Juice = () =>
<div>
  <img src="images/juice.png" />
</div>

export {Grain, Vegetables, Bread, Juice}

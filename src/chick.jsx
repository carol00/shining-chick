import {h} from './link'

const Eggshell = () =>
<div class="eggshell">
  <div>
    {Array.from({length: 5}).map(() =>
      <div></div>
    )}
  </div>
</div>

const Eyes = () =>
<div class="eyes">
  <div></div>
  <div></div>
</div>

const Mouth = () =>
<div class="mouth">
  <div></div>
  <div></div>
</div>

const Hand = () =>
<div class="hand">
  <div></div>
  <div></div>
</div>

const Feet = () =>
<div class="feet">
  <div></div>
  <div></div>
</div>

const Shadow = () =>
<div class="shadow zoom">
</div>

export default () =>
<div class="chick">
  <div class="body">
    <Eggshell />
    <Eyes />
    <Mouth />
    <Hand />
  </div>
  <Feet />
  <Shadow />
</div>

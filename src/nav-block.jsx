import {h} from './link'

export default ({items}) =>
<nav>
  {items.map(({name, icon, onClick, style}) =>
    <div onClick={onClick} class={style}>
      <span class={icon}></span>
      <p>{name}</p>
    </div>
  )}
</nav>

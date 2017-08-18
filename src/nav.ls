import
  \./link : {link}
  \./nav-block : nav-block
  \./location : {location-state}
  \./screens : screens

function fa-icon
  "fa fa-#{it}"

function nav-props pathname: current, bind-action
  items: Object.entries(screens).map ([pathname, {name, icon}]) ->
    name: name
    icon: fa-icon icon
    style: if pathname == current then \active else ''
    on-click: bind-action type: \navigate payload: pathname: pathname

Nav = link nav-block, location-state, nav-props

export {nav-props, Nav}

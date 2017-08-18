import
  \./link : {h, link}
  \./screens : screens

function location-state state
  state.location

updaters = navigate: (, {pathname}) -> {pathname}

function switch-screen {pathname}
  h (screens[pathname] || screens.home).component

Content = link switch-screen, location-state

export {location-state, updaters, switch-screen, Content}

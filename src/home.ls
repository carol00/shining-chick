import
  \./link : {link}
  \./home-screen : home-screen
  \./profile : {profile-state, input-name, create}

function home-props {name}, bind-action
  on-click: bind-action create
  on-change: bind-action input-name
  name: name

Home = link home-screen, profile-state, home-props

export {Home, home-props}

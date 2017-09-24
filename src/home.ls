import
  \./link : {link}
  \./home-screen : home-screen
  \./profile : {profile-state, input-name, create}

function home-props profile, bind-action
  on-click: bind-action create
  on-change: bind-action input-name
  name: profile.name
  satisfaction: profile.satisfaction
  ghost: profile.ghost

Home = link home-screen, profile-state, home-props

export {Home, home-props}

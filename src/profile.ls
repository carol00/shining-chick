import
  \./link : {link}
  \./profile-screen : profile-screen

updaters = create: (, {name}) -> {name}

function profile-state {profile}
  profile

function profile-props {} bind-action
  on-click: bind-action type: \create payload: name: \babo

Profile = link profile-screen, profile-state, profile-props

export {profile-state, Profile, profile-props, updaters}

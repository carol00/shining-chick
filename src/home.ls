import
  \./link : {link}
  \./home-screen : home-screen

function home-state {profile}
 name: profile.name

home = link home-screen, home-state

export {home-state, home}

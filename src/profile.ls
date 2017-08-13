import
  \./link : {link}
  \./profile-screen : profile-screen

function profile-state {profile}
  profile

Profile = link profile-screen, profile-state

export {profile-state, Profile}

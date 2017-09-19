import
  \./link : {link}
  \./profile-screen : profile-screen

function create
  create = type: \create payload: now:
    new Date().toJSON().slice(0, 19).replace('T', ' ')

initial-satifaction = 5

updaters =
  create: (profile, payload) ->
    name: profile.input, satisfaction: initial-satifaction, birthday: payload.now
  \input-name : (, payload) -> input: payload
  feed: (state, payload) ->
    satisfaction: state.satisfaction + payload.satisfaction

function profile-state {profile}
  name: profile.name
  birthday: profile.birthday
  satisfaction: profile.satisfaction

function input-name target: {value}
  type: \input-name payload: value

Profile = link profile-screen, profile-state

export {profile-state, Profile, updaters, input-name, create}

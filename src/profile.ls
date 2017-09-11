import
  \./link : {link}
  \./profile-screen : profile-screen

create = type: \create

initial-satifaction = 5

updaters =
  create: ({input}) -> name: input, satisfaction: initial-satifaction
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

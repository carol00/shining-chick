import
  \./link : {link}
  \./profile-screen : profile-screen
  moment

function create
  type: \create payload: now: new Date().toJSON()

initial-satifaction = 5

updaters =
  create: (profile, payload) ->
    name: profile.input, satisfaction: initial-satifaction
    birthday: payload.now
  \input-name : (, payload) -> input: payload
  feed: (state, payload) ->
    satisfaction = state.satisfaction + payload.satisfaction
    satisfaction: satisfaction
    ghost: satisfaction > 10 || satisfaction <= 0

function profile-state {profile}
  name: profile.name
  birthday: moment(profile.birthday).format('GGGG-MM-DD kk:mm:ss')
  satisfaction: profile.satisfaction
  ghost: profile.ghost

function input-name target: {value}
  type: \input-name payload: value

Profile = link profile-screen, profile-state

export {profile-state, Profile, updaters, input-name, create}

import \../src/profile : {profile-state}

function main t
  state =
    profile:
      name: \babo
      birthday: '2017-07-29 18:26'
      weight: \1

  actual = profile-state state
  expected =
    name: \babo
    birthday: '2017-07-29 18:26'
    weight: \1
  t.deep-equal actual, expected, 'Take the state of profile'

  t.end!

export default: main

import \../src/home : {home-state}

function main t
  state =
    profile: name: \babo

  actual = home-state state
  expected = name: \babo
  t.deep-equal actual, expected, 'take the state to home'

  t.end!

export default: main

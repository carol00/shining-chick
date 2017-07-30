import \../src/identity : {identity-state}

function main t
  state =
    identity:
      name: \babo
      birthday: '2017-07-29 18:26'
      weight: \1

  actual = identity-state state
  expected =
    name: \babo
    birthday: '2017-07-29 18:26'
    weight: \1
  t.deep-equal actual, expected, 'Take the state of identity'

  t.end!

export default: main

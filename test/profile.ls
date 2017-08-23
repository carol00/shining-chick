import \../src/profile : {profile-state, profile-props, updaters}
import \../test/mock : {mock-bind}

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

  actual = profile-props {} mock-bind .on-click
  expected = type: \create payload: name: \babo
  t.deep-equal actual, expected, 'click the create btn'

  payload = name: \babo
  q = updaters.create state, payload
  actual = q.name
  expected = \babo
  t.equal actual, expected, 'set current name'

  t.end!

export default: main

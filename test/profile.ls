import \../src/profile : {profile-state, updaters}
import \../test/mock : {mock-bind}

function main t
  state =
    profile:
      name: \babo
      birthday: '2017-07-29 18:26'
      satisfaction: \1

  actual = profile-state state
  expected =
    name: \babo
    birthday: '2017-07-29 18:26'
    satisfaction: \1
  t.deep-equal actual, expected, 'Take the state of profile'

  payload = \ha
  actual = updaters.\input-name state, payload
  expected = input: \ha
  t.deep-equal actual, expected, 'set input name'

  state = input: \babo
  q = updaters.create state
  actual = q.name
  expected = \babo
  t.equal actual, expected, 'set current name'

  t.end!

export default: main

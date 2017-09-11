import \../src/profile : {profile-state, updaters}
import \../test/mock : {mock-bind}

function main t
  state =
    profile:
      name: \babo
      birthday: '2017-07-29 18:26'
      satisfaction: 5

  actual = profile-state state
  expected =
    name: \babo
    birthday: '2017-07-29 18:26'
    satisfaction: 5
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

  actual = q.satisfaction
  expected = 5
  t.equal actual, expected, 'set initial satisfaction'

  state = satisfaction: 5
  payload = satisfaction: 2
  actual = updaters.feed state, payload
  expected = satisfaction: 7
  t.same actual, expected, 'After feeding to increase satisfaction'

  t.end!

export default: main

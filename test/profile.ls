import \../src/profile : {profile-state, updaters, create}
import \../test/mock : {mock-bind}

function main t
  state =
    profile:
      name: \babo
      birthday: '2017-09-21T12:26:01.839Z'
      satisfaction: 5

  actual = profile-state state
  expected =
    name: \babo
    birthday: '2017-09-21 20:26:01'
    satisfaction: 5
    ghost: void
  t.deep-equal actual, expected, 'Take the state of profile'

  payload = \ha
  actual = updaters.\input-name state, payload
  expected = input: \ha
  t.deep-equal actual, expected, 'set input name'

  state = input: \babo
  payload = now: \now
  q = updaters.create state, payload
  actual = q.name
  expected = \babo
  t.equal actual, expected, 'set current name'

  actual = q.satisfaction
  expected = 5
  t.equal actual, expected, 'set initial satisfaction'

  actual = q.birthday
  expected = payload.now
  t.is actual, expected, 'show the current time'

  state = satisfaction: 5
  payload = satisfaction: 11
  q = updaters.feed state, payload
  actual = q.satisfaction
  expected = 16
  t.is actual, expected, 'after feeding to increase satisfaction'

  actual = q.ghost
  expected = true
  t.is actual, expected, 'show cute ghost'

  t.end!

export default: main

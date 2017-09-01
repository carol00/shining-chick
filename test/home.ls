import \../src/home : {home-props}
import \../test/mock : {mock-bind}

function main t
  profile = name: \babo

  props = home-props profile, mock-bind
  actual = props.on-click
  expected = type: \create
  t.deep-equal actual, expected, 'click to create a chick'

  actual = props.on-change
  expected = type: \input-name payload: \ha
  t.deep-equal actual, expected, 'save the name'

  actual = props.name
  expected = \babo
  t.equal actual, expected, 'name for display'

  t.end!

export default: main

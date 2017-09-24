import \../src/home : {home-props}
import \../test/mock : {mock-bind}
import \../src/profile : {create}

function main t
  profile = name: \babo satisfaction: 5 ghost: void

  props = home-props profile, mock-bind
  actual = props.on-click
  expected = create!
  t.deep-equal actual, expected, 'click to create a chick'

  actual = props.on-change
  expected = type: \input-name payload: \ha
  t.deep-equal actual, expected, 'save the name'

  actual = props.name
  expected = \babo
  t.equal actual, expected, 'name for display'

  actual = props.satisfaction
  expected = 5
  t.equal actual, expected, 'satisfaction for display'

  actual = props.ghost
  t.false actual, 'set whether show to ghost'

  actual = create!
  expected = type: \create payload: now:
    new Date().toJSON().slice(0, 19).replace('T', ' ')
  t.same actual, expected, 'set the current time'

  t.end!

export default: main

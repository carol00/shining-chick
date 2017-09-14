import
  \../src/feed : {feed-props}
  \../test/mock : {mock-bind}
  \../src/food : {Grain, Bread}

function main t
  state =
    feed:
      grain: name: \Grain satisfaction: 1
      bread: name: \Bread satisfaction: 2

  props = feed-props state, mock-bind

  actual = props.items.0.name
  expected = \Grain
  t.equal actual, expected, 'name for display'

  actual = props.items.1.on-click
  expected = type: \feed payload: satisfaction: 2
  t.deep-equal actual, expected, 'click food to feed a chick'

  actual = props.items.0.id
  expected = \grain
  t.equal actual, expected, 'food id'

  actual = props.items.0.food
  expected = Grain()
  t.deep-equal actual, expected, 'component for display'

  actual = props.items.1.food
  expected = Bread()
  t.same actual, expected, 'component for display'

  t.end!

export default: main

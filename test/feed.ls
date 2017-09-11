import
  \../src/feed : {feed-props}
  \../test/mock : {mock-bind}
  \../src/food : {Plate, Bowl}

function main t
  state =
    feed:
      rice: name: \Rice satisfaction: 1
      beef: name: \Beef satisfaction: 2

  props = feed-props state, mock-bind

  actual = props.items.0.name
  expected = \Rice
  t.equal actual, expected, 'name for display'

  actual = props.items.1.on-click
  expected = type: \feed payload: satisfaction: 2
  t.deep-equal actual, expected, 'click food to feed a chick'

  actual = props.items.0.id
  expected = \rice
  t.equal actual, expected, 'id for display'

  actual = props.items.0.food
  expected = Bowl()
  t.deep-equal actual, expected, 'component for display'

  actual = props.items.1.food
  expected = Plate()
  t.same actual, expected, 'component for display'

  t.end!

export default: main

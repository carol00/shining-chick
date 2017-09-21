import
  \../src/popout : {popout-state, popout-props, updaters}
  \../test/mock : {mock-bind}

function main t
  state =
    popout:
      type: \feed
      satisfaction: 2

  actual = popout-state state
  expected = state.popout
  t.is actual, expected, 'popout state'

  props = popout-props state.popout, mock-bind
  actual = props
  expected = styles: 'modal active' satisfaction: 2
  t.same actual, expected, 'activate popout'

  actual = props.restore
  expected = type: \dismiss
  t.same actual, expected, 'restore popout after transition'

  state = type: void
  props = popout-props state, mock-bind
  actual = props.styles
  expected = \modal
  t.is actual, expected, 'close modal'

  payload = satisfaction: 2
  actual = updaters.feed {} payload
  expected = type: \feed satisfaction: 2
  t.same actual, expected, 'handle feed action'

  actual = updaters.dismiss {}
  expected = type: void
  t.same actual, expected, 'handle close modal'

  t.end!

export default: main

import \../src/swipe : {handle-touch, swipe-attrs}

function touch handlers, type, x, y=0
  name = "onTouch#{type.0.to-upper-case! + type[1 to]}"
  event =
    touches: [page-x: x, page-y: y]
    prevent-default: -> event.default-prevented = true
    stop-propagation: -> event.no-propagation = true
    current-target: get-bounding-client-rect: -> width: 64
  handlers[name] event
  event

function main t
  result = release: 0
  handlers =
    on-swipe: -> result.swipe = it
    on-release: ->
      result.release++
      result.data = it
  web-handlers = handle-touch handlers

  touch web-handlers, \start 2 3
  touch web-handlers, \move 3 3

  actual = result.swipe
  t.not-ok actual, 'do nothing when not moving far enough'

  touch web-handlers, \move 3 11

  actual = result.swipe
  t.not-ok actual, 'do nothing when moving toward another direction'

  event = touch web-handlers, \move 11 3

  actual = result.swipe
  t.not-ok actual,
  'ignore following touches after moving toward another direction'

  actual = event.default-prevented || event.no-propagation
  t.not-ok actual,
  'if moving toward another direction, let touch events bubble up'

  touch web-handlers, \end

  actual = result.release
  t.not-ok actual, 'when moving toward another direction, skip end events'

  touch web-handlers, \start 3 2
  event = touch web-handlers, \move 8 6

  actual = result.swipe
  expected = 5
  t.equal actual, expected, 'emit swipe events when touch moving'

  actual = event.default-prevented || event.no-propagation
  t.ok actual, 'block touch events when swiping'

  touch web-handlers, \end

  touch web-handlers, \start 3 2
  touch web-handlers, \move -13 5
  touch web-handlers, \end

  actual = result.release
  expected = 2
  t.equal actual, expected, 'emit release events'

  actual = result.data
  expected = delta: -16 width: 64
  t.deep-equal actual, expected, 'emit release events with data'

  state = {}
  props = index: 2
  attrs = swipe-attrs state, props

  actual = \class of attrs
  t.not-ok actual, 'active class is not set at the beginning'

  actual = attrs.style.transform
  expected = 'translateX(-200%)'
  t.equal actual, expected, 'scroll to display current content block'

  state = movement: 17
  props = index: 3
  attrs = swipe-attrs state, props

  actual = attrs.class
  expected = \active
  t.equal actual, expected, 'set active class when touch moving'

  actual = attrs.style.transform
  expected = 'translateX(calc(-300% + 17px))'
  t.equal actual, expected, 'move content blocks to follow swiping'

  t.end!

export default: main

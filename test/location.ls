import
  \../src/location : {location-state, updaters, switch-screen}
  \../src/nav : {nav-props}
  \../test/mock : {mock-bind}

function main t
  state = location: pathname: \feed
  actual = location-state state
  expected = pathname: \feed
  t.deep-equal actual, expected, 'get current location from state'

  payload = pathname: \feed
  q = updaters.navigate state, payload
  actual = q.pathname
  expected = \feed
  t.equal actual, expected, 'set current pathname'

  items:
    * home: name: \Home icon: \home
    * profile: name: \Profile icon: \id-card
    * feed: name: \feed icon: \cutlery

  props = nav-props pathname: \profile, mock-bind

  actual = props.items.0.name
  expected = \Home
  t.equal actual, expected, 'button names of nav'

  actual = props.items.1.icon
  expected = 'fa fa-id-card'
  t.equal actual, expected, 'button icon of nav'

  actual = props.items.1.style
  expected = \active
  t.equal actual, expected, 'active nav button style'

  actual = props.items.2.on-click
  expected = type: \navigate payload: pathname: \feed
  t.deep-equal actual, expected, 'click on nav button to navigate'

  t.end!

export default: main

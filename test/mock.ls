mock-event = target: value: \ha

function mock-bind create-action, options
  create-action? mock-event, options or create-action

export {mock-bind}

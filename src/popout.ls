import
  \./link : {link}
  \./modal : modal

updaters =
  feed: ({} payload) -> type: \feed satisfaction: payload.satisfaction
  dismiss: -> type: void

function popout-state {popout}
  popout

function popout-props popout, bind-action
  satisfaction: popout.satisfaction
  styles: if popout.type == \feed then 'modal active' else 'modal'
  restore: bind-action type: \dismiss

Popout = link modal, popout-state, popout-props

export {popout-state, popout-props, updaters, Popout}

import
  \./vendor : {combine-reducers, handle-actions}
  \./location : updaters: location
  \./profile : updaters: profile
  \./popout : updaters: popout

empty = {}

function compose-reduce
  handlers =
    location: handle-actions location
    profile: handle-actions profile
    feed: handle-actions {}
    popout: handle-actions popout
  combine-reducers handlers

export default: compose-reduce

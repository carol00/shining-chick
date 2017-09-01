import
  redux: {combine-reducers}
  linking: {handle-actions}
  \./location : updaters: location
  \./profile : updaters: create

empty = {}

function merge-data state, {key, items}
  update = items.map (values) -> (values.id): values
  (key): Object.assign {} state[key], ...update

function compose-reduce
  handlers =
    data: handle-actions load: merge-data
    location: handle-actions location
    profile: handle-actions create
  combine-reducers handlers

export default: compose-reduce

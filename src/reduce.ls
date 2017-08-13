import
  redux: {combine-reducers}
  linking: {handle-actions}

empty = {}

function merge-data state, {key, items}
  update = items.map (values) -> (values.id): values
  (key): Object.assign {} state[key], ...update

function compose-reduce
  handlers =
    data: handle-actions load: merge-data
    profile: handle-actions {}
  combine-reducers handlers

export default: compose-reduce

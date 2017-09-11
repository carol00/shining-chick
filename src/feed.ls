import
  \./link : {link}
  \./feed-screen : feed-screen
  \./food : {Bowl, Plate}

food =
  rice: Bowl
  beef: Plate

function feed-props {feed} bind-action
  items: Object.entries(feed).map ([id, value]) ->
    name: value.name
    on-click: bind-action type: \feed payload: satisfaction: value.satisfaction
    id: id
    food: food[id] {}

Feed = link feed-screen,, feed-props

export {feed-props, Feed}

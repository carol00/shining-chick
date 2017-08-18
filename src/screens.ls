import
  \./home-screen : home
  \./profile : {Profile}
  \./feed-screen : feed

screens =
  home: component: home, name: \Home icon: \home
  profile: component: Profile, name: \Profile icon: \id-card
  feed: component: feed, name: \feed icon: \cutlery

export default: screens

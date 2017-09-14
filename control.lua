require 'includes/say_hi'

remote.add_interface("my_methods", {
  say_hi = sayHi
})


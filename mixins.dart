void main() {
  var x = mixero();
  x.describeCrew();
}

class mixero with Piloted {
  describeCrew();
}

mixin Piloted {
  int astronauts = 1;
  void describeCrew() {
    print('Number of astronauts: $astronauts');
  }
}

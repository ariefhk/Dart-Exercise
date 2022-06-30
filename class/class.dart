class Animal {
  var age;
  var color;

  Animal({required this.color, required this.age});

  animalColor() {
    print('The color is ${this.color}');
  }

  animalAge() {
    print('The animal age is ${this.age}');
  }
}

void main(List<String> args) {
  Animal animal = new Animal(color: 'red', age: 25);

  animal.animalColor();
  animal.animalAge();
}

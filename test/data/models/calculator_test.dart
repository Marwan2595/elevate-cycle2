import 'package:elevate_cycle2/data/models/calculator.dart';
import 'package:test/test.dart';

void main() {
//setUp --> run before each test function
  late Calculator calculator;

  setUp(() {
    print("SetUP===============");
  });
//setUpAll ---> run once before all tests
  setUpAll(() {
    print("SetUPAll===============");
    calculator = Calculator();
  });
//tearDown
  tearDown(() {
    print("tearDown===============");
  });
//tearDownAll
  tearDownAll(() {
    print("tearDownAll===============");
  });
  group("Test Add Function", () {
    test("Add two positive numbers", () {
      //Arrange (Defines)

      //Act
      int result = calculator.add(2, 3);

      //Assert (Compare)
      print("ddddddddddddddddddddddd");
      expect(result, 5);
    });
    test("Add two negative numbers", () {
      //Arrange (Defines)

      //Act
      int result = calculator.add(-2, -3);

      //Assert (Compare)
      expect(result, isA<int>());
      expect(result, isNegative);
      expect(result, -5);
      
    });
  });
  group("Test divide function", () {
    test("divide by 0", () {
      //Arrange (Defines)

      //Act
      double result = calculator.divide(5, 0);

      //Assert (Compare)
      expect(result, 0);
    });
  });
}

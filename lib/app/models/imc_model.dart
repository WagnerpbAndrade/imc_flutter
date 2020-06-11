
class IMCModel {
  double weight;
  double height;

  IMCModel({this.weight, this.height});

  double calculateImc(double weight,  double height) {
    return weight / (height * height);
  }

}
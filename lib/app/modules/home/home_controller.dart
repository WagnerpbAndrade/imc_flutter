
import 'package:flutter/material.dart';
import 'package:imc_flutter/app/models/imc_model.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final TextEditingController tWeight = TextEditingController();
  final TextEditingController tHeight = TextEditingController();
  final GlobalKey formKey = GlobalKey<FormState>();
  IMCModel imcModel;

  @observable
  double result = 0.0;

  @action
  calculateImc() {
    imcModel = IMCModel();
    var w = double.tryParse(tWeight.text.toString());
    var h = double.tryParse(tHeight.text.toString());
    result = imcModel.calculateImc(w, h);
  }
}

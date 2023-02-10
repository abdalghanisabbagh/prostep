import 'package:prostep1/presentation/base/baseviewmodel.dart';

class OnBordingViewModel extends BaseViewModel with OnBordingViewModelInput,OnBordingViewModelOutput {
  @override
  void despose() {
  }

  @override
  void goNext() {
  }

  @override
  void goPrevious() {
  }

  @override
  void onPageChange(int index) {
  }

  @override
  void start() {
  }
  
}


abstract class OnBordingViewModelInput {
  void goNext();
  void goPrevious();
  void onPageChange(int index);
}
abstract class OnBordingViewModelOutput {
  
}

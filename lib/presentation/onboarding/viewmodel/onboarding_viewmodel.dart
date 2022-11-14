import 'package:prostep1/presentation/base/baseviewmodel.dart';

class OnBordingViewModel extends BaseViewModel with OnBordingViewModelInput,OnBordingViewModelOutput {
  @override
  void despose() {
    // TODO: implement despose
  }

  @override
  void goNext() {
    // TODO: implement goNext
  }

  @override
  void goPrevious() {
    // TODO: implement goPrevious
  }

  @override
  void onPageChange(int index) {
    // TODO: implement onPageChange
  }

  @override
  void start() {
    // TODO: implement start
  }
  
}


abstract class OnBordingViewModelInput {
  void goNext();
  void goPrevious();
  void onPageChange(int index);
}
abstract class OnBordingViewModelOutput {
  
}

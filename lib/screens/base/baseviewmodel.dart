abstract class BaseViewModel extends BaseViewModelInput
    with BaseViewModelOutput {
} //shares variables and function that will be used through any view model

abstract class BaseViewModelInput {
  void start(); //start view model job
  void despose(); // will be called when view model dies
}

abstract class BaseViewModelOutput {}

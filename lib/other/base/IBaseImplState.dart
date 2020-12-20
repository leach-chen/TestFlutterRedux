import 'package:TestFlutterRedux/other/store/ReduxState.dart';
import 'package:redux/redux.dart';

abstract class IBaseImplState
{
  initWidget(Store<ReduxState> store);
}
import 'package:TestFlutterRedux/page/mycenter/mycenter_state.dart';
import 'package:redux/redux.dart';

final MyCenterReducer = combineReducers<MyCenterState>([
  TypedReducer<MyCenterState, UpdateMyCenterNameAction>(_update),
]);

MyCenterState _update(MyCenterState myCenterState, UpdateMyCenterNameAction addAction) {
  addAction.myCenterState.name = "22222222222222222";
  myCenterState = addAction.myCenterState;
  return myCenterState;
}

class UpdateMyCenterNameAction {
  MyCenterState myCenterState;
  UpdateMyCenterNameAction(this.myCenterState);
}
import 'package:question_solid_oop/questions/widget_controller_design/model/dispose.dart';
import 'package:question_solid_oop/questions/widget_controller_design/model/handle_animation.dart';
import 'package:question_solid_oop/questions/widget_controller_design/model/handle_network.dart';
import 'package:question_solid_oop/questions/widget_controller_design/model/init_state.dart';

abstract class WidgetController
    implements Dispose, HandleAnimation, HandleNetwork, Initstate {
  @override
  void dispose() {
    // TODO: implement dispose
  }

  @override
  void handleAnimation() {
    // TODO: implement handleAnimation
  }

  @override
  void handleNetwork() {
    // TODO: implement handleNetwork
  }

  @override
  void initState() {
    // TODO: implement initState
  }

  void add();
}

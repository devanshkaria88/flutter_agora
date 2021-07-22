import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:get/get.dart';

videoConfController VideoConfController = videoConfController();
liveStreamControlller LiveStreamController = liveStreamControlller();


class liveStreamControlller extends GetxController {
  var channelName = ''.obs;
  var clientRole = ClientRole.Audience.obs;
}

class videoConfController extends GetxController{
  var roomName = ''.obs;
}
import 'package:agora_uikit/agora_uikit.dart';
import 'package:agora_uikit/models/agora_connection_data.dart';
import 'package:flutter/material.dart';
import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:flutter_agora_trial/constants/constants.dart';
import 'package:flutter_agora_trial/controllers/liveStreamController.dart';

class LiveStreamPage extends StatefulWidget {
  const LiveStreamPage({Key? key}) : super(key: key);

  @override
  _LiveStreamPageState createState() => _LiveStreamPageState();
}

class _LiveStreamPageState extends State<LiveStreamPage> {
  final AgoraClient liveStreamClient = AgoraClient(
    agoraConnectionData: AgoraConnectionData(
      appId: agoraAppId,
      channelName: LiveStreamController.channelName.value,
    ),
    agoraChannelData: AgoraChannelData(
      clientRole: LiveStreamController.clientRole.value,
      channelProfile: ChannelProfile.LiveBroadcasting,
      setCameraAutoFocusFaceModeEnabled: true,
    ),
    enabledPermission: [
      Permission.camera,
      Permission.microphone,
    ],
  );

  @override
  Widget build(BuildContext context) {
    print(LiveStreamController.clientRole.value);
    print(liveStreamClient.sessionController.value.clientRole);
    return Scaffold(
      body: Stack(
        children: [
          AgoraVideoViewer(
            client: liveStreamClient,
            layoutType: Layout.floating,
            floatingLayoutContainerHeight: MediaQuery.of(context).size.height,
            floatingLayoutContainerWidth: MediaQuery.of(context).size.width,
            floatingLayoutMainViewPadding: EdgeInsets.zero,
            floatingLayoutSubViewPadding: EdgeInsets.zero,
            disabledVideoWidget: Container(
              width: 0.0,
              height: 0.0,
            ),
            // showNumberOfUsers: true,
          ),
          AgoraVideoButtons(
            client: liveStreamClient,
            autoHideButtonTime: 5,
            autoHideButtons: true,
          ),
        ],
      ),
    );
  }
}

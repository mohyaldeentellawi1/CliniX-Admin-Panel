import 'package:flutter/material.dart';
import 'package:media_kit_video/media_kit_video.dart';

final configuration = ValueNotifier<VideoControllerConfiguration>(
  const VideoControllerConfiguration(enableHardwareAcceleration: true),
);

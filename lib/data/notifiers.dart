//ValueNotifier: Hold data that can be listened to for changes
//ValueListenableBuilder: Listen to changes in ValueNotifier and rebuild widgets(Don't need the setState method)

import 'package:flutter/material.dart';

ValueNotifier<int> selectedPageNotifier = ValueNotifier(0);
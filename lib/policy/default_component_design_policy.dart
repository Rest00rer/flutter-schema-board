import 'package:diagram_editor/diagram_editor.dart';
import 'package:diagram_editor_apps/widget/port_body_widget.dart';
import 'package:diagram_editor_apps/widget/rect_widget_body.dart';
import 'package:flutter/material.dart';

mixin DefaultComponentDesignPolicy implements ComponentDesignPolicy {
  @override
  Widget showComponentBody(ComponentData componentData) {
    switch (componentData.type) {
      case 'port':
        return PortBodyWidget(componentData: componentData);
        break;
      case 'rect':
        return RectWidgetBody(componentData: componentData);
        break;
      default:
        return null;
        break;
    }
  }
}

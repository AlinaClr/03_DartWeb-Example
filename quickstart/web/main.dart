import 'dart:html';
import 'dart:js';

void main(List<String> args) {
  DivElement dartStatus = querySelector('#container') as DivElement;
  dartStatus.text = 'Dart is running!';

  var myData = JsObject.jsify([
    {'year': '2001年', 'sales': 20},
    {'year': '2002年', 'sales': 30},
    {'year': '2003年', 'sales': 40},
    {'year': '2004年', 'sales': 50},
    {'year': '2005年', 'sales': 80}
  ]);

  var chart = context['chart'];
  chart.callMethod('source', [myData]);
  chart.callMethod('render', []);
}

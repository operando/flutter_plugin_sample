#import "FlutterPluginSamplePlugin.h"
#import <flutter_plugin_sample/flutter_plugin_sample-Swift.h>

@implementation FlutterPluginSamplePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterPluginSamplePlugin registerWithRegistrar:registrar];
}
@end

# https://github.com/grpc/grpc-java/blob/master/android/proguard-rules.txt
-keepclassmembers class io.grpc.okhttp.OkHttpChannelBuilder {
  io.grpc.okhttp.OkHttpChannelBuilder forTarget(java.lang.String);
  io.grpc.okhttp.OkHttpChannelBuilder scheduledExecutorService(java.util.concurrent.ScheduledExecutorService);
  io.grpc.okhttp.OkHttpChannelBuilder sslSocketFactory(javax.net.ssl.SSLSocketFactory);
  io.grpc.okhttp.OkHttpChannelBuilder transportExecutor(java.util.concurrent.Executor);
}

-keep class com.squareup.okhttp.** { *; }
-dontwarn com.squareup.okhttp.**


-keep class io.flutter.app.** { *; }
-keep class io.flutter.plugin.**  { *; }
-keep class io.flutter.util.**  { *; }
-keep class io.flutter.view.**  { *; }
-keep class io.flutter.**  { *; }
-keep class io.flutter.plugins.**  { *; }
-keep class io.flutter.embedding.**  { *; }
-dontwarn io.flutter.embedding.**
-dontwarn com.google.android.play.core.splitcompat.SplitCompatApplication

-dontwarn org.slf4j.impl.StaticLoggerBinder
-dontwarn org.slf4j.impl.StaticMDCBinder
-dontwarn org.slf4j.impl.StaticMarkerBinder

-dontwarn kotlinx.coroutines.internal.ClassValueCtorCache

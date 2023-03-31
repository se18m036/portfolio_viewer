package dev.koller.portfolio_viewer

import android.os.Bundle
import android.os.Build
import io.flutter.embedding.android.FlutterFragmentActivity
import io.flutter.embedding.engine.FlutterEngine
import java.math.BigInteger
import java.security.MessageDigest
import java.util.zip.ZipFile
import dev.koller.portfolio_viewer.BuildConfig
import kotlin.system.exitProcess


import io.flutter.plugins.GeneratedPluginRegistrant

class MainActivity : FlutterFragmentActivity() {
    private fun validateHashes() {
        val arch = Build.SUPPORTED_ABIS[0]
        val validHashes = listOf(
            "22bd880a7133aea20a80f23abf8796677a684f9ca5fbb43e61b9c2b5645e6a45",
            "62e473c38c90e6e696c544c62ec6770b68a39885aa957715ebcc65ab12ba216d",
            "b387edc6d5b216ba757725aa262e15d63614b4b16273fa8ad6c636cb735a6217",
            "74a4f2287fbb0971e15dcf01618da666863943de2f5de64013d2b275da6a92ab",
            "026ce3990b6bf422dfde57b0b26698472049014471256c300cb4a59353bdfaa3",
            "38f6afbfe50ed24ff7e46830eb10acee98aa1a5417591d40509217f707750b1a",
        )
        if (!BuildConfig.DEBUG &&
            (!validHashes.contains(getHashOfFile("lib/$arch/libflutter.so"))
                    || !validHashes.contains(getHashOfFile("lib/$arch/libapp.so")))
        ) {
            exitProcess(0)
        }
    }

    private fun getHashOfFile(path: String): String {
        val zip = ZipFile(applicationContext.packageCodePath)
        val entry = zip.getEntry(path)
        val inputStream = zip.getInputStream(entry)
        val digest = MessageDigest.getInstance("SHA-256")
        val hashBytes = digest.digest(inputStream.readBytes())
        return String.format("%064x", BigInteger(1, hashBytes))
    }


    override fun onCreate(savedInstanceState: Bundle?) {
        validateHashes();
        super.onCreate(savedInstanceState)
    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
    }
}

package com.example.fireflyrn


import android.content.Intent
import android.net.Uri
import android.os.Build
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.provider.Settings
import android.widget.Button
import com.facebook.react.ReactFragment
import com.facebook.react.modules.core.DefaultHardwareBackBtnHandler


class MainActivity : AppCompatActivity(), DefaultHardwareBackBtnHandler {
    private lateinit var button: Button

    companion object {
        const val OVERLAY_PERMISSION_REQ_CODE = 1  // Choose any value
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        button = findViewById(R.id.button)
        button.setOnClickListener {
            val reactNativeFragment = ReactFragment.Builder()
                .setComponentName("FireflyRnDemo")
                .setLaunchOptions(getLaunchOptions("test message"))
                .build()

            getSupportFragmentManager()
                .beginTransaction()
                .add(R.id.reactNativeFragment, reactNativeFragment)
                .commit()
        }

    }

    override fun invokeDefaultOnBackPressed() {
        super.onBackPressed()
    }

    private fun getLaunchOptions(message: String) = Bundle().apply {
        putString("message", message)
    }

}
package io.ionic.portalstestapp

import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import io.ionic.portalslibrary.Test

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        Test.helloWorld(this)
    }
}
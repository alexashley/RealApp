package com.realapp

import com.facebook.react.ReactApplication
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Test

class MainApplicationTest {
    private val app = MainApplication()

    @Test
    fun shouldImplementReactApplication() {
        assertNotNull(app as? ReactApplication)
    }

    @Test
    fun shouldSetDeveloperSupport() {
        val reactNativeHost = app.reactNativeHost

        assertEquals(BuildConfig.DEBUG, reactNativeHost.useDeveloperSupport)
    }

    @Test
    fun shouldMaybeFail() {
        val shouldFail = System.getenv("FAIL_BUILD")?.toBoolean() ?: false

        assertFalse(shouldFail)
    }
}

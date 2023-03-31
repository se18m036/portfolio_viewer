package dev.koller.portfolio_viewer

import org.junit.Rule
import org.junit.runner.RunWith
import pl.leancode.patrol.PatrolTestRule
import pl.leancode.patrol.PatrolTestRunner


@RunWith(PatrolTestRunner::class)
class MainActivityTest {
    @Rule
    @JvmField
    val rule: PatrolTestRule<MainActivity> = PatrolTestRule(MainActivity::class.java)
}


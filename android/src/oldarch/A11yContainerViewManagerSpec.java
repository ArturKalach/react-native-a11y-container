package com.a11ycontainer;

import android.view.View;

import androidx.annotation.Nullable;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.uimanager.SimpleViewManager;

public abstract class A11yContainerViewManagerSpec<T extends View> extends SimpleViewManager<T> {
  public abstract void setType(T view, @Nullable int value);
}

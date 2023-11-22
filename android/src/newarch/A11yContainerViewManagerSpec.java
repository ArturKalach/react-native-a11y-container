package com.a11ycontainer;

import android.view.View;

import androidx.annotation.Nullable;

import com.facebook.react.uimanager.SimpleViewManager;
import com.facebook.react.uimanager.ViewManagerDelegate;
import com.facebook.react.viewmanagers.A11yContainerViewManagerDelegate;
import com.facebook.react.viewmanagers.A11yContainerViewManagerInterface;

public abstract class A11yContainerViewManagerSpec<T extends View> extends SimpleViewManager<T> implements A11yContainerViewManagerInterface<T> {
  private final ViewManagerDelegate<T> mDelegate;

  public A11yContainerViewManagerSpec() {
    mDelegate = new A11yContainerViewManagerDelegate(this);
  }

  @Nullable
  @Override
  protected ViewManagerDelegate<T> getDelegate() {
    return mDelegate;
  }
}

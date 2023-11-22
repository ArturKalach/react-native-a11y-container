package com.a11ycontainer;

import android.graphics.Color;

import androidx.annotation.Nullable;

import com.facebook.react.module.annotations.ReactModule;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.annotations.ReactProp;

@ReactModule(name = A11yContainerViewManager.NAME)
public class A11yContainerViewManager extends A11yContainerViewManagerSpec<A11yContainerView> {

  public static final String NAME = "A11yContainerView";

  @Override
  public String getName() {
    return NAME;
  }

  @Override
  public A11yContainerView createViewInstance(ThemedReactContext context) {
    return new A11yContainerView(context);
  }

  @Override
  @ReactProp(name = "type")
  public void setType(A11yContainerView view, @Nullable int color) {
    //stub
  }
}

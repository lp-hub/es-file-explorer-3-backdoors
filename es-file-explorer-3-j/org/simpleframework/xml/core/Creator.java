package org.simpleframework.xml.core;

import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public interface Creator {
    List<Initializer> getInitializers();

    Object getInstance(Context context);

    Object getInstance(Context context, Criteria criteria);

    Parameter getParameter(String str);

    List<Parameter> getParameters();

    boolean isDefault();
}

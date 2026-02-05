package de.aflx.sardine.model;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class Locktoken {
    protected List<String> href;

    public List<String> getHref() {
        if (this.href == null) {
            this.href = new ArrayList();
        }
        return this.href;
    }
}

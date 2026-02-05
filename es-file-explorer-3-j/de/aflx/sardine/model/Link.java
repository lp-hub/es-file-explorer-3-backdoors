package de.aflx.sardine.model;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class Link {
    protected List<String> dst;
    protected List<String> src;

    public List<String> getDst() {
        if (this.dst == null) {
            this.dst = new ArrayList();
        }
        return this.dst;
    }

    public List<String> getSrc() {
        if (this.src == null) {
            this.src = new ArrayList();
        }
        return this.src;
    }
}

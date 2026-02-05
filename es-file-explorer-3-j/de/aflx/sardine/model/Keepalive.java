package de.aflx.sardine.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class Keepalive {
    protected List<Serializable> content;

    public List<Serializable> getContent() {
        if (this.content == null) {
            this.content = new ArrayList();
        }
        return this.content;
    }
}

package de.aflx.sardine.model;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class Owner {
    protected List<Object> content;

    public List<Object> getContent() {
        if (this.content == null) {
            this.content = new ArrayList();
        }
        return this.content;
    }
}

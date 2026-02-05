package de.aflx.sardine.model;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class Source {
    protected List<Link> link;

    public List<Link> getLink() {
        if (this.link == null) {
            this.link = new ArrayList();
        }
        return this.link;
    }
}

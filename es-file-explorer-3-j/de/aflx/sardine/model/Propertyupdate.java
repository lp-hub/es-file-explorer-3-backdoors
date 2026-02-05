package de.aflx.sardine.model;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class Propertyupdate {
    protected List<Object> removeOrSet;

    public List<Object> getRemoveOrSet() {
        if (this.removeOrSet == null) {
            this.removeOrSet = new ArrayList();
        }
        return this.removeOrSet;
    }
}

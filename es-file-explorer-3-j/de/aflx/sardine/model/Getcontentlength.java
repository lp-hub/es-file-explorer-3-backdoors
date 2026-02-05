package de.aflx.sardine.model;

import java.util.ArrayList;
import java.util.List;
import org.simpleframework.xml.ElementList;

/* loaded from: classes.dex */
public class Getcontentlength {

    @ElementList
    protected List<String> content;

    public List<String> getContent() {
        if (this.content == null) {
            this.content = new ArrayList();
        }
        return this.content;
    }
}

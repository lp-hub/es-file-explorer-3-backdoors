package de.aflx.sardine.model;

import java.util.ArrayList;
import java.util.List;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementList;

/* loaded from: classes.dex */
public class Prop {

    @Element(required = false)
    protected List<Element> any;

    @Element(required = false)
    private String creationdate;

    @Element(required = false)
    private String getcontentlength;

    @ElementList(entry = "getcontenttype", inline = true, required = false)
    private List<String> getcontenttype;

    @Element(required = false)
    private String getetag;

    @Element(required = false)
    private String getlastmodified;

    @Element(required = false)
    private Resourcetype resourcetype;

    public List<Element> getAny() {
        if (this.any == null) {
            this.any = new ArrayList();
        }
        return this.any;
    }

    public String getCreationdate() {
        return this.creationdate;
    }

    public String getGetcontentlength() {
        return this.getcontentlength;
    }

    public String getGetcontenttype() {
        if (this.getcontenttype == null || this.getcontenttype.size() == 0) {
            return null;
        }
        return this.getcontenttype.get(this.getcontenttype.size() - 1);
    }

    public String getGetetag() {
        return this.getetag;
    }

    public String getGetlastmodified() {
        return this.getlastmodified;
    }

    public Resourcetype getResourcetype() {
        return this.resourcetype;
    }
}

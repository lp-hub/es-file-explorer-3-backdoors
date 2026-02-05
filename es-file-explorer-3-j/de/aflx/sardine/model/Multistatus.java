package de.aflx.sardine.model;

import java.util.ArrayList;
import java.util.List;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

@Root
/* loaded from: classes.dex */
public class Multistatus {

    @ElementList(inline = true)
    protected List<Response> response;

    @Element(required = false)
    protected String responsedescription;

    public List<Response> getResponse() {
        if (this.response == null) {
            this.response = new ArrayList();
        }
        return this.response;
    }

    public String getResponsedescription() {
        return this.responsedescription;
    }

    public void setResponsedescription(String str) {
        this.responsedescription = str;
    }
}

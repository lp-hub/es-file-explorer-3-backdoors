package de.aflx.sardine.model;

import org.simpleframework.xml.Element;

/* loaded from: classes.dex */
public class Response {

    @Element(required = false)
    protected Error error;

    @Element
    protected String href;

    @Element(required = false)
    protected Propstat propstat;

    @Element(required = false)
    protected String responsedescription;

    @Element(required = false)
    protected String status;

    public Error getError() {
        return this.error;
    }

    public String getHref() {
        if (this.href == null) {
            this.href = new String();
        }
        return this.href;
    }

    public Propstat getPropstat() {
        if (this.propstat == null) {
            this.propstat = new Propstat();
        }
        return this.propstat;
    }

    public String getResponsedescription() {
        return this.responsedescription;
    }

    public String getStatus() {
        return this.status;
    }

    public void setError(Error error) {
        this.error = error;
    }

    public void setResponsedescription(String str) {
        this.responsedescription = str;
    }

    public void setStatus(String str) {
        this.status = str;
    }
}

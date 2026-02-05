package de.aflx.sardine;

import de.aflx.sardine.model.Propstat;
import de.aflx.sardine.model.Resourcetype;
import de.aflx.sardine.model.Response;
import de.aflx.sardine.util.Logger;
import de.aflx.sardine.util.QName;
import de.aflx.sardine.util.SardineUtil;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class DavResource {
    public static final long DEFAULT_CONTENT_LENGTH = -1;
    public static final String DEFAULT_CONTENT_TYPE = "application/octetstream";
    public static final String HTTPD_UNIX_DIRECTORY_CONTENT_TYPE = "httpd/unix-directory";
    private static final String SEPARATOR = "/";
    private static Logger log = new Logger();
    private final Long contentLength;
    private final String contentType;
    private final Date creation;
    private final Map<QName, String> customProps;
    private final String etag;
    private final URI href;
    private final Date modified;

    public DavResource(Response response) {
        URL url;
        try {
            url = new URL(response.getHref());
        } catch (MalformedURLException e) {
            e.printStackTrace();
            url = null;
        }
        if (url != null) {
            this.href = new URI(url.getProtocol(), url.getHost(), url.getPath(), url.getQuery(), null);
        } else {
            this.href = new URI(response.getHref());
        }
        this.creation = SardineUtil.parseDate(getCreationDate(response));
        this.modified = SardineUtil.parseDate(getModifiedDate(response));
        this.contentLength = Long.valueOf(getContentLength(response));
        this.contentType = getContentType(response);
        this.etag = getEtag(response);
        this.customProps = getCustomProps(response);
    }

    protected DavResource(String str, Date date, Date date2, String str2, Long l, String str3, Map<QName, String> map) {
        this.href = new URI(str);
        this.creation = date;
        this.modified = date2;
        this.contentType = str2;
        this.contentLength = l;
        this.etag = str3;
        this.customProps = map;
    }

    private long getContentLength(Response response) {
        Propstat propstat = response.getPropstat();
        if (propstat.equals("") || propstat == null) {
            return -1L;
        }
        try {
            return Long.parseLong(propstat.getProp().getGetcontentlength());
        } catch (Exception e) {
            return -1L;
        }
    }

    private String getContentType(Response response) {
        Propstat propstat = response.getPropstat();
        if (propstat.equals("") || propstat == null) {
            return null;
        }
        String getcontenttype = propstat.getProp().getGetcontenttype();
        if (getcontenttype != null) {
            Resourcetype resourcetype = propstat.getProp().getResourcetype();
            return (resourcetype == null || resourcetype.getCollection() == null) ? getcontenttype : HTTPD_UNIX_DIRECTORY_CONTENT_TYPE;
        }
        if (getHref().toString().endsWith(SEPARATOR) || this.contentLength.longValue() == -1) {
            return HTTPD_UNIX_DIRECTORY_CONTENT_TYPE;
        }
        Resourcetype resourcetype2 = propstat.getProp().getResourcetype();
        return (resourcetype2 == null || resourcetype2.getCollection() == null) ? DEFAULT_CONTENT_TYPE : HTTPD_UNIX_DIRECTORY_CONTENT_TYPE;
    }

    private String getCreationDate(Response response) {
        Propstat propstat = response.getPropstat();
        if (propstat.equals("") || propstat == null) {
            return null;
        }
        return propstat.getProp().getCreationdate();
    }

    private Map<QName, String> getCustomProps(Response response) {
        return null;
    }

    private String getEtag(Response response) {
        Propstat propstat = response.getPropstat();
        if (propstat.equals("") || propstat == null) {
            return null;
        }
        return propstat.getProp().getGetetag();
    }

    private String getModifiedDate(Response response) {
        Propstat propstat = response.getPropstat();
        if (propstat.equals("") || propstat == null) {
            return null;
        }
        return propstat.getProp().getGetlastmodified();
    }

    public Long getContentLength() {
        return this.contentLength;
    }

    public String getContentType() {
        return this.contentType;
    }

    public Date getCreation() {
        return this.creation;
    }

    public Map<String, String> getCustomProps() {
        HashMap hashMap = new HashMap();
        Map<QName, String> customPropsNS = getCustomPropsNS();
        for (QName qName : customPropsNS.keySet()) {
            hashMap.put(qName.getLocalPart(), customPropsNS.get(qName));
        }
        return hashMap;
    }

    public Map<QName, String> getCustomPropsNS() {
        return this.customProps;
    }

    public String getEtag() {
        return this.etag;
    }

    public URI getHref() {
        return this.href;
    }

    public Date getModified() {
        return this.modified;
    }

    public String getName() {
        String path = this.href.getPath();
        try {
            if (path.endsWith(SEPARATOR)) {
                path = path.substring(0, path.length() - 1);
            }
            return path.substring(path.lastIndexOf(47) + 1);
        } catch (StringIndexOutOfBoundsException e) {
            log.warn(String.format("Failed to parse name from path %s", path));
            return null;
        }
    }

    public String getPath() {
        return this.href.getPath();
    }

    public boolean isDirectory() {
        return HTTPD_UNIX_DIRECTORY_CONTENT_TYPE.equals(this.contentType) || this.contentLength.longValue() == -1;
    }

    public String toString() {
        return getPath();
    }
}

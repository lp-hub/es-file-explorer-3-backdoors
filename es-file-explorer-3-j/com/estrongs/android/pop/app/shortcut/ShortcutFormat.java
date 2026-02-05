package com.estrongs.android.pop.app.shortcut;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
import oauth.signpost.OAuth;

/* loaded from: classes.dex */
public class ShortcutFormat implements Serializable {
    private static final long serialVersionUID = 7052862220747674236L;
    public String host;
    public boolean needAuth;
    public String path;
    public int port;
    public String schema;
    public String shortcutName;
    public String targetLocation;
    protected String type;
    public boolean deleteAble = true;
    public Map<String, Object> attribute = new HashMap();
    private String bffVersion = OAuth.VERSION_1_0;
    private Map<String, String> atts = new HashMap(5);

    public String getAttribute(String str) {
        return this.atts.get(str);
    }

    public String getFormatVersion() {
        return this.bffVersion;
    }

    public void putAttribute(String str, String str2) {
        this.atts.put(str, str2);
    }
}

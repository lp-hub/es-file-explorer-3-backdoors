package de.aflx.sardine.util;

import java.io.Serializable;
import java.security.AccessController;
import java.security.PrivilegedAction;
import oauth.signpost.OAuth;
import org.apache.commons.net.ftp.FTPReply;

/* loaded from: classes.dex */
public class QName implements Serializable {
    private static final long compatibleSerialVersionUID = 4418622981026545151L;
    private static final long defaultSerialVersionUID = -9120448754896609940L;
    private static final long serialVersionUID;
    private static boolean useDefaultSerialVersionUID;
    private final String localPart;
    private final String namespaceURI;
    private final String prefix;

    static {
        useDefaultSerialVersionUID = true;
        try {
            String str = (String) AccessController.doPrivileged(new PrivilegedAction() { // from class: de.aflx.sardine.util.QName.1
                @Override // java.security.PrivilegedAction
                public Object run() {
                    return System.getProperty("com.sun.xml.namespace.QName.useCompatibleSerialVersionUID");
                }
            });
            useDefaultSerialVersionUID = str == null || !str.equals(OAuth.VERSION_1_0);
        } catch (Exception e) {
            useDefaultSerialVersionUID = true;
        }
        if (useDefaultSerialVersionUID) {
            serialVersionUID = defaultSerialVersionUID;
        } else {
            serialVersionUID = compatibleSerialVersionUID;
        }
    }

    public QName(String str) {
        this("", str, "");
    }

    public QName(String str, String str2) {
        this(str, str2, "");
    }

    public QName(String str, String str2, String str3) {
        if (str == null) {
            this.namespaceURI = "";
        } else {
            this.namespaceURI = str;
        }
        if (str2 == null) {
            throw new IllegalArgumentException("local part cannot be \"null\" when creating a QName");
        }
        this.localPart = str2;
        if (str3 == null) {
            throw new IllegalArgumentException("prefix cannot be \"null\" when creating a QName");
        }
        this.prefix = str3;
    }

    public static QName valueOf(String str) {
        if (str == null) {
            throw new IllegalArgumentException("cannot create QName from \"null\" or \"\" String");
        }
        if (str.length() != 0 && str.charAt(0) == '{') {
            if (str.startsWith("{}")) {
                throw new IllegalArgumentException("Namespace URI .equals(XMLConstants.NULL_NS_URI), .equals(\"\"), only the local part, \"" + str.substring("".length() + 2) + "\", should be provided.");
            }
            int indexOf = str.indexOf(FTPReply.DATA_CONNECTION_ALREADY_OPEN);
            if (indexOf == -1) {
                throw new IllegalArgumentException("cannot create QName from \"" + str + "\", missing closing \"}\"");
            }
            return new QName(str.substring(1, indexOf), str.substring(indexOf + 1), "");
        }
        return new QName("", str, "");
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof QName)) {
            return false;
        }
        QName qName = (QName) obj;
        return this.namespaceURI.equals(qName.namespaceURI) && this.localPart.equals(qName.localPart);
    }

    public String getLocalPart() {
        return this.localPart;
    }

    public String getNamespaceURI() {
        return this.namespaceURI;
    }

    public String getPrefix() {
        return this.prefix;
    }

    public final int hashCode() {
        return this.namespaceURI.hashCode() ^ this.localPart.hashCode();
    }

    public String toString() {
        return this.namespaceURI.equals("") ? this.localPart : "{" + this.namespaceURI + "}" + this.localPart;
    }
}

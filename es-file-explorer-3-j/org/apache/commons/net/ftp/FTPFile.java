package org.apache.commons.net.ftp;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.Calendar;
import java.util.Formatter;

/* loaded from: classes.dex */
public class FTPFile implements Serializable {
    public static final int DIRECTORY_TYPE = 1;
    public static final int EXECUTE_PERMISSION = 2;
    public static final int FILE_TYPE = 0;
    public static final int GROUP_ACCESS = 1;
    public static final int READ_PERMISSION = 0;
    public static final int SYMBOLIC_LINK_TYPE = 2;
    public static final int UNKNOWN_TYPE = 3;
    public static final int USER_ACCESS = 0;
    public static final int WORLD_ACCESS = 2;
    public static final int WRITE_PERMISSION = 1;
    private static final long serialVersionUID = 9010790363003271996L;
    private String _link;
    private boolean[][] _permissions = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, 3, 3);
    private String _rawListing = null;
    private int _type = 3;
    private int _hardLinkCount = 0;
    private long _size = -1;
    private String _user = "";
    private String _group = "";
    private Calendar _date = null;
    private String _name = null;

    private char formatType() {
        switch (this._type) {
            case 0:
                return '-';
            case 1:
                return 'd';
            case 2:
                return 'l';
            default:
                return '?';
        }
    }

    private String permissionToString(int i) {
        StringBuilder sb = new StringBuilder();
        if (hasPermission(i, 0)) {
            sb.append('r');
        } else {
            sb.append('-');
        }
        if (hasPermission(i, 1)) {
            sb.append('w');
        } else {
            sb.append('-');
        }
        if (hasPermission(i, 2)) {
            sb.append('x');
        } else {
            sb.append('-');
        }
        return sb.toString();
    }

    public String getGroup() {
        return this._group;
    }

    public int getHardLinkCount() {
        return this._hardLinkCount;
    }

    public String getLink() {
        return this._link;
    }

    public String getName() {
        return this._name;
    }

    public String getRawListing() {
        return this._rawListing;
    }

    public long getSize() {
        return this._size;
    }

    public Calendar getTimestamp() {
        return this._date;
    }

    public int getType() {
        return this._type;
    }

    public String getUser() {
        return this._user;
    }

    public boolean hasPermission(int i, int i2) {
        return this._permissions[i][i2];
    }

    public boolean isDirectory() {
        return this._type == 1;
    }

    public boolean isFile() {
        return this._type == 0;
    }

    public boolean isSymbolicLink() {
        return this._type == 2;
    }

    public boolean isUnknown() {
        return this._type == 3;
    }

    public void setGroup(String str) {
        this._group = str;
    }

    public void setHardLinkCount(int i) {
        this._hardLinkCount = i;
    }

    public void setLink(String str) {
        this._link = str;
    }

    public void setName(String str) {
        this._name = str;
    }

    public void setPermission(int i, int i2, boolean z) {
        this._permissions[i][i2] = z;
    }

    public void setRawListing(String str) {
        this._rawListing = str;
    }

    public void setSize(long j) {
        this._size = j;
    }

    public void setTimestamp(Calendar calendar) {
        this._date = calendar;
    }

    public void setType(int i) {
        this._type = i;
    }

    public void setUser(String str) {
        this._user = str;
    }

    public String toFormattedString() {
        StringBuilder sb = new StringBuilder();
        Formatter formatter = new Formatter(sb);
        sb.append(formatType());
        sb.append(permissionToString(0));
        sb.append(permissionToString(1));
        sb.append(permissionToString(2));
        formatter.format(" %4d", Integer.valueOf(getHardLinkCount()));
        formatter.format(" %-8s %-8s", getGroup(), getUser());
        formatter.format(" %8d", Long.valueOf(getSize()));
        Calendar timestamp = getTimestamp();
        if (timestamp != null) {
            formatter.format(" %1$tY-%1$tm-%1$td %1$tH:%1$tM:%1$tS", timestamp);
            formatter.format(" %1$tZ", timestamp);
            sb.append(' ');
        }
        sb.append(' ');
        sb.append(getName());
        return sb.toString();
    }

    public String toString() {
        return getRawListing();
    }
}

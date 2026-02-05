package de.innosystec.unrar.rarfile;

/* loaded from: classes.dex */
public enum HostSystem {
    msdos((byte) 0),
    os2((byte) 1),
    win32((byte) 2),
    unix((byte) 3),
    macos((byte) 4),
    beos((byte) 5);

    private byte hostByte;

    HostSystem(byte b2) {
        this.hostByte = b2;
    }

    public static HostSystem findHostSystem(byte b2) {
        if (msdos.equals(b2)) {
            return msdos;
        }
        if (os2.equals(b2)) {
            return os2;
        }
        if (win32.equals(b2)) {
            return win32;
        }
        if (unix.equals(b2)) {
            return unix;
        }
        if (macos.equals(b2)) {
            return macos;
        }
        if (beos.equals(b2)) {
            return beos;
        }
        return null;
    }

    public boolean equals(byte b2) {
        return this.hostByte == b2;
    }

    public byte getHostByte() {
        return this.hostByte;
    }
}

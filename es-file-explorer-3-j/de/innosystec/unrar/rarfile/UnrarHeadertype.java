package de.innosystec.unrar.rarfile;

/* loaded from: classes.dex */
public enum UnrarHeadertype {
    MainHeader((byte) 115),
    MarkHeader((byte) 114),
    FileHeader((byte) 116),
    CommHeader((byte) 117),
    AvHeader((byte) 118),
    SubHeader((byte) 119),
    ProtectHeader((byte) 120),
    SignHeader((byte) 121),
    NewSubHeader((byte) 122),
    EndArcHeader((byte) 123);

    private byte headerByte;

    UnrarHeadertype(byte b2) {
        this.headerByte = b2;
    }

    public static UnrarHeadertype findType(byte b2) {
        if (MarkHeader.equals(b2)) {
            return MarkHeader;
        }
        if (MainHeader.equals(b2)) {
            return MainHeader;
        }
        if (FileHeader.equals(b2)) {
            return FileHeader;
        }
        if (EndArcHeader.equals(b2)) {
            return EndArcHeader;
        }
        if (NewSubHeader.equals(b2)) {
            return NewSubHeader;
        }
        if (SubHeader.equals(b2)) {
            return SubHeader;
        }
        if (SignHeader.equals(b2)) {
            return SignHeader;
        }
        if (ProtectHeader.equals(b2)) {
            return ProtectHeader;
        }
        if (MarkHeader.equals(b2)) {
            return MarkHeader;
        }
        if (MainHeader.equals(b2)) {
            return MainHeader;
        }
        if (FileHeader.equals(b2)) {
            return FileHeader;
        }
        if (EndArcHeader.equals(b2)) {
            return EndArcHeader;
        }
        if (CommHeader.equals(b2)) {
            return CommHeader;
        }
        if (AvHeader.equals(b2)) {
            return AvHeader;
        }
        return null;
    }

    public boolean equals(byte b2) {
        return this.headerByte == b2;
    }

    public byte getHeaderByte() {
        return this.headerByte;
    }
}

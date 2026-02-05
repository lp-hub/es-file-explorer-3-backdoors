package jcifs.smb;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import jcifs.util.Encdec;

/* loaded from: classes.dex */
public class SmbRandomAccessFile implements DataInput, DataOutput {
    private static final int WRITE_OPTIONS = 2114;
    private int access;
    private int ch;
    private SmbFile file;
    private long fp;
    private int openFlags;
    private int options;
    private int readSize;
    private byte[] tmp;
    private int writeSize;
    private SmbComWriteAndXResponse write_andx_resp;

    public SmbRandomAccessFile(String str, String str2, int i) {
        this(new SmbFile(str, "", null, i), str2);
    }

    public SmbRandomAccessFile(SmbFile smbFile, String str) {
        this.access = 0;
        this.options = 0;
        this.tmp = new byte[8];
        this.write_andx_resp = null;
        this.file = smbFile;
        if (str.equals("r")) {
            this.openFlags = 17;
        } else {
            if (!str.equals("rw")) {
                throw new IllegalArgumentException("Invalid mode");
            }
            this.openFlags = 23;
            this.write_andx_resp = new SmbComWriteAndXResponse();
            this.options = WRITE_OPTIONS;
            this.access = 3;
        }
        smbFile.open(this.openFlags, this.access, 128, this.options);
        this.readSize = smbFile.tree.session.transport.rcv_buf_size - 70;
        this.writeSize = smbFile.tree.session.transport.snd_buf_size - 70;
        this.fp = 0L;
    }

    public void close() {
        this.file.close();
    }

    public long getFilePointer() {
        return this.fp;
    }

    public long length() {
        return this.file.length();
    }

    public int read() {
        if (read(this.tmp, 0, 1) == -1) {
            return -1;
        }
        return this.tmp[0] & 255;
    }

    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    public int read(byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        if (i2 <= 0) {
            return 0;
        }
        long j = this.fp;
        if (!this.file.isOpen()) {
            this.file.open(this.openFlags, 0, 128, this.options);
        }
        SmbComReadAndXResponse smbComReadAndXResponse = new SmbComReadAndXResponse(bArr, i);
        do {
            i3 = i2 > this.readSize ? this.readSize : i2;
            this.file.send(new SmbComReadAndX(this.file.fid, this.fp, i3, null), smbComReadAndXResponse);
            i4 = smbComReadAndXResponse.dataLength;
            if (i4 > 0) {
                this.fp += i4;
                i2 -= i4;
                smbComReadAndXResponse.off += i4;
                if (i2 <= 0) {
                    break;
                }
            } else {
                return (int) (this.fp - j > 0 ? this.fp - j : -1L);
            }
        } while (i4 == i3);
        return (int) (this.fp - j);
    }

    @Override // java.io.DataInput
    public final boolean readBoolean() {
        if (read(this.tmp, 0, 1) < 0) {
            throw new SmbException("EOF");
        }
        return this.tmp[0] != 0;
    }

    @Override // java.io.DataInput
    public final byte readByte() {
        if (read(this.tmp, 0, 1) < 0) {
            throw new SmbException("EOF");
        }
        return this.tmp[0];
    }

    @Override // java.io.DataInput
    public final char readChar() {
        if (read(this.tmp, 0, 2) < 0) {
            throw new SmbException("EOF");
        }
        return (char) Encdec.dec_uint16be(this.tmp, 0);
    }

    @Override // java.io.DataInput
    public final double readDouble() {
        if (read(this.tmp, 0, 8) < 0) {
            throw new SmbException("EOF");
        }
        return Encdec.dec_doublebe(this.tmp, 0);
    }

    @Override // java.io.DataInput
    public final float readFloat() {
        if (read(this.tmp, 0, 4) < 0) {
            throw new SmbException("EOF");
        }
        return Encdec.dec_floatbe(this.tmp, 0);
    }

    @Override // java.io.DataInput
    public final void readFully(byte[] bArr) {
        readFully(bArr, 0, bArr.length);
    }

    @Override // java.io.DataInput
    public final void readFully(byte[] bArr, int i, int i2) {
        int i3 = 0;
        do {
            int read = read(bArr, i + i3, i2 - i3);
            if (read < 0) {
                throw new SmbException("EOF");
            }
            i3 += read;
            this.fp += read;
        } while (i3 < i2);
    }

    @Override // java.io.DataInput
    public final int readInt() {
        if (read(this.tmp, 0, 4) < 0) {
            throw new SmbException("EOF");
        }
        return Encdec.dec_uint32be(this.tmp, 0);
    }

    @Override // java.io.DataInput
    public final String readLine() {
        StringBuffer stringBuffer = new StringBuffer();
        boolean z = false;
        int i = -1;
        while (!z) {
            i = read();
            switch (i) {
                case -1:
                case 10:
                    z = true;
                    break;
                case 13:
                    long j = this.fp;
                    if (read() == 10) {
                        z = true;
                        break;
                    } else {
                        this.fp = j;
                        z = true;
                        break;
                    }
                default:
                    stringBuffer.append((char) i);
                    break;
            }
        }
        if (i == -1 && stringBuffer.length() == 0) {
            return null;
        }
        return stringBuffer.toString();
    }

    @Override // java.io.DataInput
    public final long readLong() {
        if (read(this.tmp, 0, 8) < 0) {
            throw new SmbException("EOF");
        }
        return Encdec.dec_uint64be(this.tmp, 0);
    }

    @Override // java.io.DataInput
    public final short readShort() {
        if (read(this.tmp, 0, 2) < 0) {
            throw new SmbException("EOF");
        }
        return Encdec.dec_uint16be(this.tmp, 0);
    }

    @Override // java.io.DataInput
    public final String readUTF() {
        int readUnsignedShort = readUnsignedShort();
        byte[] bArr = new byte[readUnsignedShort];
        read(bArr, 0, readUnsignedShort);
        try {
            return Encdec.dec_utf8(bArr, 0, readUnsignedShort);
        } catch (IOException e) {
            throw new SmbException("", e);
        }
    }

    @Override // java.io.DataInput
    public final int readUnsignedByte() {
        if (read(this.tmp, 0, 1) < 0) {
            throw new SmbException("EOF");
        }
        return this.tmp[0] & 255;
    }

    @Override // java.io.DataInput
    public final int readUnsignedShort() {
        if (read(this.tmp, 0, 2) < 0) {
            throw new SmbException("EOF");
        }
        return Encdec.dec_uint16be(this.tmp, 0) & 65535;
    }

    public void seek(long j) {
        this.fp = j;
    }

    public void setLength(long j) {
        if (!this.file.isOpen()) {
            this.file.open(this.openFlags, 0, 128, this.options);
        }
        this.file.send(new SmbComWrite(this.file.fid, (int) (4294967295L & j), 0, this.tmp, 0, 0), new SmbComWriteResponse());
    }

    @Override // java.io.DataInput
    public int skipBytes(int i) {
        if (i <= 0) {
            return 0;
        }
        this.fp += i;
        return i;
    }

    @Override // java.io.DataOutput
    public void write(int i) {
        this.tmp[0] = (byte) i;
        write(this.tmp, 0, 1);
    }

    @Override // java.io.DataOutput
    public void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.DataOutput
    public void write(byte[] bArr, int i, int i2) {
        if (i2 <= 0) {
            return;
        }
        if (!this.file.isOpen()) {
            this.file.open(this.openFlags, 0, 128, this.options);
        }
        do {
            int i3 = i;
            int i4 = i2 > this.writeSize ? this.writeSize : i2;
            this.file.send(new SmbComWriteAndX(this.file.fid, this.fp, i2 - i4, bArr, i3, i4, null), this.write_andx_resp);
            this.fp += this.write_andx_resp.count;
            i2 = (int) (i2 - this.write_andx_resp.count);
            i = (int) (i3 + this.write_andx_resp.count);
        } while (i2 > 0);
    }

    @Override // java.io.DataOutput
    public final void writeBoolean(boolean z) {
        this.tmp[0] = (byte) (z ? 1 : 0);
        write(this.tmp, 0, 1);
    }

    @Override // java.io.DataOutput
    public final void writeByte(int i) {
        this.tmp[0] = (byte) i;
        write(this.tmp, 0, 1);
    }

    @Override // java.io.DataOutput
    public final void writeBytes(String str) {
        byte[] bytes = str.getBytes();
        write(bytes, 0, bytes.length);
    }

    @Override // java.io.DataOutput
    public final void writeChar(int i) {
        Encdec.enc_uint16be((short) i, this.tmp, 0);
        write(this.tmp, 0, 2);
    }

    @Override // java.io.DataOutput
    public final void writeChars(String str) {
        int length = str.length();
        int i = length * 2;
        byte[] bArr = new byte[i];
        char[] cArr = new char[length];
        str.getChars(0, length, cArr, 0);
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            int i4 = i2 + 1;
            bArr[i2] = (byte) (cArr[i3] >>> '\b');
            i2 = i4 + 1;
            bArr[i4] = (byte) (cArr[i3] >>> 0);
        }
        write(bArr, 0, i);
    }

    @Override // java.io.DataOutput
    public final void writeDouble(double d) {
        Encdec.enc_doublebe(d, this.tmp, 0);
        write(this.tmp, 0, 8);
    }

    @Override // java.io.DataOutput
    public final void writeFloat(float f) {
        Encdec.enc_floatbe(f, this.tmp, 0);
        write(this.tmp, 0, 4);
    }

    @Override // java.io.DataOutput
    public final void writeInt(int i) {
        Encdec.enc_uint32be(i, this.tmp, 0);
        write(this.tmp, 0, 4);
    }

    @Override // java.io.DataOutput
    public final void writeLong(long j) {
        Encdec.enc_uint64be(j, this.tmp, 0);
        write(this.tmp, 0, 8);
    }

    @Override // java.io.DataOutput
    public final void writeShort(int i) {
        Encdec.enc_uint16be((short) i, this.tmp, 0);
        write(this.tmp, 0, 2);
    }

    @Override // java.io.DataOutput
    public final void writeUTF(String str) {
        int length = str.length();
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            char charAt = str.charAt(i2);
            i += charAt > 127 ? charAt > 2047 ? 3 : 2 : 1;
        }
        byte[] bArr = new byte[i];
        writeShort(i);
        try {
            Encdec.enc_utf8(str, bArr, 0, i);
            write(bArr, 0, i);
        } catch (IOException e) {
            throw new SmbException("", e);
        }
    }
}

package jcifs.dcerpc.ndr;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import jcifs.smb.SmbConstants;
import jcifs.util.Encdec;

/* loaded from: classes.dex */
public class NdrBuffer {
    public byte[] buf;
    public int index;
    int referent;
    HashMap referents;
    public int start;
    public int length = 0;
    public NdrBuffer deferred = this;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class Entry {
        Object obj;
        int referent;

        Entry() {
        }
    }

    public NdrBuffer(byte[] bArr, int i) {
        this.buf = bArr;
        this.index = i;
        this.start = i;
    }

    private int getDceReferent(Object obj) {
        if (this.referents == null) {
            this.referents = new HashMap();
            this.referent = 1;
        }
        Entry entry = (Entry) this.referents.get(obj);
        if (entry == null) {
            entry = new Entry();
            int i = this.referent;
            this.referent = i + 1;
            entry.referent = i;
            entry.obj = obj;
            this.referents.put(obj, entry);
        }
        return entry.referent;
    }

    public void advance(int i) {
        this.index += i;
        if (this.index - this.start > this.deferred.length) {
            this.deferred.length = this.index - this.start;
        }
    }

    public int align(int i) {
        int i2 = i - 1;
        int i3 = this.index - this.start;
        int i4 = ((i2 ^ (-1)) & (i3 + i2)) - i3;
        advance(i4);
        return i4;
    }

    public int align(int i, byte b2) {
        int align = align(i);
        for (int i2 = align; i2 > 0; i2--) {
            this.buf[this.index - i2] = b2;
        }
        return align;
    }

    public long dec_ndr_hyper() {
        align(8);
        long dec_uint64le = Encdec.dec_uint64le(this.buf, this.index);
        advance(8);
        return dec_uint64le;
    }

    public int dec_ndr_long() {
        align(4);
        int dec_uint32le = Encdec.dec_uint32le(this.buf, this.index);
        advance(4);
        return dec_uint32le;
    }

    public int dec_ndr_short() {
        align(2);
        short dec_uint16le = Encdec.dec_uint16le(this.buf, this.index);
        advance(2);
        return dec_uint16le;
    }

    public int dec_ndr_small() {
        int i = this.buf[this.index] & 255;
        advance(1);
        return i;
    }

    public String dec_ndr_string() {
        String str;
        int i;
        align(4);
        int i2 = this.index;
        int dec_uint32le = Encdec.dec_uint32le(this.buf, i2);
        int i3 = i2 + 12;
        if (dec_uint32le != 0) {
            int i4 = (dec_uint32le - 1) * 2;
            try {
                if (i4 < 0 || i4 > 65535) {
                    throw new NdrException(NdrException.INVALID_CONFORMANCE);
                }
                str = new String(this.buf, i3, i4, SmbConstants.UNI_ENCODING);
                i = i4 + 2 + i3;
            } catch (UnsupportedEncodingException e) {
                str = null;
                i = i3;
            }
        } else {
            str = null;
            i = i3;
        }
        advance(i - this.index);
        return str;
    }

    public NdrBuffer derive(int i) {
        NdrBuffer ndrBuffer = new NdrBuffer(this.buf, this.start);
        ndrBuffer.index = i;
        ndrBuffer.deferred = this.deferred;
        return ndrBuffer;
    }

    public void enc_ndr_hyper(long j) {
        align(8);
        Encdec.enc_uint64le(j, this.buf, this.index);
        advance(8);
    }

    public void enc_ndr_long(int i) {
        align(4);
        Encdec.enc_uint32le(i, this.buf, this.index);
        advance(4);
    }

    public void enc_ndr_referent(Object obj, int i) {
        if (obj == null) {
            enc_ndr_long(0);
            return;
        }
        switch (i) {
            case 1:
            case 3:
                enc_ndr_long(System.identityHashCode(obj));
                return;
            case 2:
                enc_ndr_long(getDceReferent(obj));
                return;
            default:
                return;
        }
    }

    public void enc_ndr_short(int i) {
        align(2);
        Encdec.enc_uint16le((short) i, this.buf, this.index);
        advance(2);
    }

    public void enc_ndr_small(int i) {
        this.buf[this.index] = (byte) (i & 255);
        advance(1);
    }

    public void enc_ndr_string(String str) {
        align(4);
        int i = this.index;
        int length = str.length();
        Encdec.enc_uint32le(length + 1, this.buf, i);
        int i2 = i + 4;
        Encdec.enc_uint32le(0, this.buf, i2);
        int i3 = i2 + 4;
        Encdec.enc_uint32le(length + 1, this.buf, i3);
        int i4 = i3 + 4;
        try {
            System.arraycopy(str.getBytes(SmbConstants.UNI_ENCODING), 0, this.buf, i4, length * 2);
        } catch (UnsupportedEncodingException e) {
        }
        int i5 = i4 + (length * 2);
        int i6 = i5 + 1;
        this.buf[i5] = 0;
        this.buf[i6] = 0;
        advance((i6 + 1) - this.index);
    }

    public byte[] getBuffer() {
        return this.buf;
    }

    public int getCapacity() {
        return this.buf.length - this.start;
    }

    public int getIndex() {
        return this.index;
    }

    public int getLength() {
        return this.deferred.length;
    }

    public int getTailSpace() {
        return this.buf.length - this.index;
    }

    public void readOctetArray(byte[] bArr, int i, int i2) {
        System.arraycopy(this.buf, this.index, bArr, i, i2);
        advance(i2);
    }

    public void reset() {
        this.index = this.start;
        this.length = 0;
        this.deferred = this;
    }

    public void setIndex(int i) {
        this.index = i;
    }

    public void setLength(int i) {
        this.deferred.length = i;
    }

    public String toString() {
        return "start=" + this.start + ",index=" + this.index + ",length=" + getLength();
    }

    public void writeOctetArray(byte[] bArr, int i, int i2) {
        System.arraycopy(bArr, i, this.buf, this.index, i2);
        advance(i2);
    }
}

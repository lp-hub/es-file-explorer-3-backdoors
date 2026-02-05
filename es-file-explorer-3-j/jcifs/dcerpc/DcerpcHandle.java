package jcifs.dcerpc;

import java.io.IOException;
import java.security.Principal;
import jcifs.dcerpc.ndr.NdrBuffer;
import jcifs.smb.BufferCache;
import jcifs.smb.NtlmPasswordAuthentication;

/* loaded from: classes.dex */
public abstract class DcerpcHandle implements DcerpcConstants {
    private static int call_id = 1;
    protected DcerpcBinding binding;
    protected int max_xmit = 4280;
    protected int max_recv = this.max_xmit;
    protected int state = 0;
    protected DcerpcSecurityProvider securityProvider = null;

    public static DcerpcHandle getHandle(String str, NtlmPasswordAuthentication ntlmPasswordAuthentication) {
        if (str.startsWith("ncacn_np:")) {
            return new DcerpcPipeHandle(str, ntlmPasswordAuthentication);
        }
        throw new DcerpcException("DCERPC transport not supported: " + str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static DcerpcBinding parseBinding(String str) {
        char[] charArray = str.toCharArray();
        int i = 0;
        DcerpcBinding dcerpcBinding = null;
        String str2 = null;
        String str3 = null;
        int i2 = 0;
        char c = 0;
        do {
            char c2 = charArray[i];
            switch (c) {
                case 0:
                    if (c2 == ':') {
                        str3 = str.substring(i2, i);
                        i2 = i + 1;
                        c = 1;
                        break;
                    }
                    break;
                case 1:
                    if (c2 != '\\') {
                        c = 2;
                        break;
                    } else {
                        i2 = i + 1;
                        break;
                    }
                case 2:
                    break;
                case 3:
                case 4:
                default:
                    i = charArray.length;
                    break;
                case 5:
                    if (c2 != '=') {
                        if (c2 == ',' || c2 == ']') {
                            String trim = str.substring(i2, i).trim();
                            if (str2 == null) {
                                str2 = "endpoint";
                            }
                            dcerpcBinding.setOption(str2, trim);
                            str2 = null;
                            break;
                        }
                    } else {
                        str2 = str.substring(i2, i).trim();
                        i2 = i + 1;
                        break;
                    }
                    break;
            }
            if (c2 == '[') {
                if (str.substring(i2, i).trim().length() == 0) {
                }
                dcerpcBinding = new DcerpcBinding(str3, str.substring(i2, i));
                i2 = i + 1;
                c = 5;
            }
            i++;
        } while (i < charArray.length);
        if (dcerpcBinding == null || dcerpcBinding.endpoint == null) {
            throw new DcerpcException("Invalid binding URL: " + str);
        }
        return dcerpcBinding;
    }

    public void bind() {
        synchronized (this) {
            try {
                this.state = 1;
                sendrecv(new DcerpcBind(this.binding, this));
            } catch (IOException e) {
                this.state = 0;
                throw e;
            }
        }
    }

    public abstract void close();

    protected abstract void doReceiveFragment(byte[] bArr, boolean z);

    protected abstract void doSendFragment(byte[] bArr, int i, int i2, boolean z);

    public Principal getPrincipal() {
        if (this instanceof DcerpcPipeHandle) {
            return ((DcerpcPipeHandle) this).pipe.getPrincipal();
        }
        return null;
    }

    public String getServer() {
        if (this instanceof DcerpcPipeHandle) {
            return ((DcerpcPipeHandle) this).pipe.getServer();
        }
        return null;
    }

    public void sendrecv(DcerpcMessage dcerpcMessage) {
        boolean z;
        int i = 24;
        if (this.state == 0) {
            bind();
        }
        boolean z2 = true;
        byte[] buffer = BufferCache.getBuffer();
        try {
            NdrBuffer ndrBuffer = new NdrBuffer(buffer, 0);
            dcerpcMessage.flags = 3;
            int i2 = call_id;
            call_id = i2 + 1;
            dcerpcMessage.call_id = i2;
            dcerpcMessage.encode(ndrBuffer);
            if (this.securityProvider != null) {
                ndrBuffer.setIndex(0);
                this.securityProvider.wrap(ndrBuffer);
            }
            int length = ndrBuffer.getLength() - 24;
            int i3 = 0;
            while (i3 < length) {
                int i4 = length - i3;
                if (i4 + 24 > this.max_xmit) {
                    dcerpcMessage.flags &= -3;
                    i4 = this.max_xmit - 24;
                    z = z2;
                } else {
                    dcerpcMessage.flags |= 2;
                    dcerpcMessage.alloc_hint = i4;
                    z = false;
                }
                dcerpcMessage.length = i4 + 24;
                if (i3 > 0) {
                    dcerpcMessage.flags &= -2;
                }
                if ((dcerpcMessage.flags & 3) != 3) {
                    ndrBuffer.start = i3;
                    ndrBuffer.reset();
                    dcerpcMessage.encode_header(ndrBuffer);
                    ndrBuffer.enc_ndr_long(dcerpcMessage.alloc_hint);
                    ndrBuffer.enc_ndr_short(0);
                    ndrBuffer.enc_ndr_short(dcerpcMessage.getOpnum());
                }
                doSendFragment(buffer, i3, dcerpcMessage.length, z);
                i3 = i4 + i3;
                z2 = z;
            }
            doReceiveFragment(buffer, z2);
            ndrBuffer.reset();
            ndrBuffer.setIndex(8);
            ndrBuffer.setLength(ndrBuffer.dec_ndr_short());
            if (this.securityProvider != null) {
                this.securityProvider.unwrap(ndrBuffer);
            }
            ndrBuffer.setIndex(0);
            dcerpcMessage.decode_header(ndrBuffer);
            if (dcerpcMessage.ptype == 2 && !dcerpcMessage.isFlagSet(2)) {
                i = dcerpcMessage.length;
            }
            byte[] bArr = null;
            NdrBuffer ndrBuffer2 = null;
            while (!dcerpcMessage.isFlagSet(2)) {
                if (bArr == null) {
                    bArr = new byte[this.max_recv];
                    ndrBuffer2 = new NdrBuffer(bArr, 0);
                }
                doReceiveFragment(bArr, z2);
                ndrBuffer2.reset();
                ndrBuffer2.setIndex(8);
                ndrBuffer2.setLength(ndrBuffer2.dec_ndr_short());
                if (this.securityProvider != null) {
                    this.securityProvider.unwrap(ndrBuffer2);
                }
                ndrBuffer2.reset();
                dcerpcMessage.decode_header(ndrBuffer2);
                int i5 = dcerpcMessage.length - 24;
                if (i + i5 > buffer.length) {
                    byte[] bArr2 = new byte[i + i5];
                    System.arraycopy(buffer, 0, bArr2, 0, i);
                    buffer = bArr2;
                }
                System.arraycopy(bArr, 24, buffer, i, i5);
                i += i5;
            }
            dcerpcMessage.decode(new NdrBuffer(buffer, 0));
            BufferCache.releaseBuffer(buffer);
            DcerpcException result = dcerpcMessage.getResult();
            if (result != null) {
                throw result;
            }
        } catch (Throwable th) {
            BufferCache.releaseBuffer(buffer);
            throw th;
        }
    }

    public void setDcerpcSecurityProvider(DcerpcSecurityProvider dcerpcSecurityProvider) {
        this.securityProvider = dcerpcSecurityProvider;
    }

    public String toString() {
        return this.binding.toString();
    }
}

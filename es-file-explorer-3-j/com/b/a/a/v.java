package com.b.a.a;

import com.dropbox.client2.exception.DropboxServerException;
import java.io.ByteArrayOutputStream;
import java.io.EOFException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.UnsupportedEncodingException;
import jcifs.netbios.NbtException;
import org.apache.commons.net.ftp.FTPReply;

/* loaded from: classes.dex */
abstract class v {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte a(int i) {
        return (byte) ((i >> 8) & 255);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(byte b2, byte b3) {
        return ((b2 << 8) & 65280) + (b3 & 255);
    }

    public static String a(byte b2) {
        return c(b2 & 255);
    }

    static String a(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < bArr.length; i += 2) {
            stringBuffer.append((char) a(bArr[i], bArr[i + 1]));
        }
        return stringBuffer.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(InputStream inputStream, i iVar, byte[] bArr) {
        a(inputStream, iVar, bArr, 0, bArr.length);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(InputStream inputStream, i iVar, byte[] bArr, int i, int i2) {
        int available;
        if (i2 < 0) {
            throw new IndexOutOfBoundsException();
        }
        int i3 = 0;
        do {
            if (iVar.f103a) {
                long currentTimeMillis = System.currentTimeMillis() + iVar.f104b;
                do {
                    available = inputStream.available();
                    if (available == 0) {
                        if (System.currentTimeMillis() > currentTimeMillis) {
                            throw new InterruptedIOException("OBEX read timeout");
                        }
                        try {
                            Thread.sleep(100L);
                        } catch (InterruptedException e) {
                            throw new InterruptedIOException();
                        }
                    }
                } while (available == 0);
            }
            int read = inputStream.read(bArr, i + i3, i2 - i3);
            if (read < 0) {
                throw new EOFException("EOF while reading OBEX packet");
            }
            i3 += read;
        } while (i3 < i2);
    }

    static byte[] a(String str) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            byteArrayOutputStream.write(a(charAt));
            byteArrayOutputStream.write(b(charAt));
        }
        return byteArrayOutputStream.toByteArray();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte b(int i) {
        return (byte) (i & 255);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b(byte[] bArr) {
        try {
            return new String(bArr, "UTF-16BE");
        } catch (UnsupportedEncodingException e) {
            return a(bArr);
        } catch (IllegalArgumentException e2) {
            return a(bArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] b(String str) {
        try {
            return str.getBytes("UTF-16BE");
        } catch (UnsupportedEncodingException e) {
            return a(str);
        } catch (IllegalArgumentException e2) {
            return a(str);
        }
    }

    public static String c(int i) {
        switch (i) {
            case 2:
                return "PUT";
            case 3:
                return "GET";
            case 5:
                return "SETPATH";
            case 7:
                return "SESSION";
            case 128:
                return "CONNECT";
            case NbtException.NOT_LISTENING_CALLING /* 129 */:
                return "DISCONNECT";
            case 130:
                return "PUT FINAL";
            case 131:
                return "GET FINAL";
            case 133:
                return "SETPATH FINAL";
            case 135:
                return "SESSION FINAL";
            case 144:
                return "OBEX_RESPONSE_CONTINUE";
            case 160:
                return "OBEX_HTTP_OK";
            case 161:
                return "OBEX_HTTP_CREATED";
            case 162:
                return "OBEX_HTTP_ACCEPTED";
            case 163:
                return "OBEX_HTTP_NOT_AUTHORITATIVE";
            case 164:
                return "OBEX_HTTP_NO_CONTENT";
            case 165:
                return "OBEX_HTTP_RESET";
            case 166:
                return "OBEX_HTTP_PARTIAL";
            case 176:
                return "OBEX_HTTP_MULT_CHOICE";
            case 177:
                return "OBEX_HTTP_MOVED_PERM";
            case 178:
                return "OBEX_HTTP_MOVED_TEMP";
            case 179:
                return "OBEX_HTTP_SEE_OTHER";
            case 180:
                return "OBEX_HTTP_NOT_MODIFIED";
            case 181:
                return "OBEX_HTTP_USE_PROXY";
            case 192:
                return "OBEX_HTTP_BAD_REQUEST";
            case 193:
                return "OBEX_HTTP_UNAUTHORIZED";
            case 194:
                return "OBEX_HTTP_PAYMENT_REQUIRED";
            case 195:
                return "OBEX_HTTP_FORBIDDEN";
            case 196:
                return "OBEX_HTTP_NOT_FOUND";
            case 197:
                return "OBEX_HTTP_BAD_METHOD";
            case 198:
                return "OBEX_HTTP_NOT_ACCEPTABLE";
            case 199:
                return "OBEX_HTTP_PROXY_AUTH";
            case 200:
                return "OBEX_HTTP_TIMEOUT";
            case 201:
                return "OBEX_HTTP_CONFLICT";
            case FTPReply.COMMAND_IS_SUPERFLUOUS /* 202 */:
                return "OBEX_HTTP_GONE";
            case 203:
                return "OBEX_HTTP_LENGTH_REQUIRED";
            case 204:
                return "OBEX_HTTP_PRECON_FAILED";
            case 205:
                return "OBEX_HTTP_ENTITY_TOO_LARGE";
            case DropboxServerException._206_PARTIAL_CONTENT /* 206 */:
                return "OBEX_HTTP_REQ_TOO_LARGE";
            case 207:
                return "OBEX_HTTP_UNSUPPORTED_TYPE";
            case 208:
                return "OBEX_HTTP_INTERNAL_ERROR";
            case 209:
                return "OBEX_HTTP_NOT_IMPLEMENTED";
            case 210:
                return "OBEX_HTTP_BAD_GATEWAY";
            case FTPReply.SYSTEM_STATUS /* 211 */:
                return "OBEX_HTTP_UNAVAILABLE";
            case FTPReply.DIRECTORY_STATUS /* 212 */:
                return "OBEX_HTTP_GATEWAY_TIMEOUT";
            case FTPReply.FILE_STATUS /* 213 */:
                return "OBEX_HTTP_VERSION";
            case 224:
                return "OBEX_DATABASE_FULL";
            case FTPReply.DATA_CONNECTION_OPEN /* 225 */:
                return "OBEX_DATABASE_LOCKED";
            case 255:
                return "ABORT";
            default:
                return "Unknown 0x" + Integer.toHexString(i);
        }
    }
}

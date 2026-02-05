package com.estrongs.android.pop.netfs.utils;

import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import jcifs.smb.SmbConstants;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.ProtocolVersion;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.message.BasicStatusLine;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

/* loaded from: classes.dex */
public class HttpUtils {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static int BUFFER_SIZE;
    private static final char[] legalChars;

    static {
        $assertionsDisabled = !HttpUtils.class.desiredAssertionStatus();
        BUFFER_SIZE = 2048;
        legalChars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".toCharArray();
    }

    public static byte[] base64Decode(String str) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            decode(str, byteArrayOutputStream);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            try {
                byteArrayOutputStream.close();
            } catch (IOException e) {
                System.err.println("Error while decoding BASE64: " + e.toString());
            }
            return byteArray;
        } catch (IOException e2) {
            throw new RuntimeException();
        }
    }

    public static String base64Encode(byte[] bArr) {
        int length = bArr.length;
        StringBuffer stringBuffer = new StringBuffer((bArr.length * 3) / 2);
        int i = length - 3;
        int i2 = 0;
        int i3 = 0;
        while (i3 <= i) {
            int i4 = ((bArr[i3] & 255) << 16) | ((bArr[i3 + 1] & 255) << 8) | (bArr[i3 + 2] & 255);
            stringBuffer.append(legalChars[(i4 >> 18) & 63]);
            stringBuffer.append(legalChars[(i4 >> 12) & 63]);
            stringBuffer.append(legalChars[(i4 >> 6) & 63]);
            stringBuffer.append(legalChars[i4 & 63]);
            int i5 = i3 + 3;
            int i6 = i2 + 1;
            if (i2 >= 14) {
                stringBuffer.append(" ");
                i2 = 0;
                i3 = i5;
            } else {
                i2 = i6;
                i3 = i5;
            }
        }
        if (i3 == (0 + length) - 2) {
            int i7 = ((bArr[i3] & 255) << 16) | ((bArr[i3 + 1] & 255) << 8);
            stringBuffer.append(legalChars[(i7 >> 18) & 63]);
            stringBuffer.append(legalChars[(i7 >> 12) & 63]);
            stringBuffer.append(legalChars[(i7 >> 6) & 63]);
            stringBuffer.append("=");
        } else if (i3 == (0 + length) - 1) {
            int i8 = (bArr[i3] & 255) << 16;
            stringBuffer.append(legalChars[(i8 >> 18) & 63]);
            stringBuffer.append(legalChars[(i8 >> 12) & 63]);
            stringBuffer.append("==");
        }
        return stringBuffer.toString();
    }

    public static String buildGetUrl(String str, Object[] objArr) {
        return buildGetUrl(str, objArr, false);
    }

    public static String buildGetUrl(String str, Object[] objArr, boolean z) {
        try {
            String encode = URLEncoder.encode(str);
            String replace = z ? encode.replace("%2F", "/").replace("+", "%20").replace("%7E", "~") : encode.replace("%2F", "/").replace("+", "%20");
            String str2 = "";
            boolean z2 = true;
            for (int i = 0; i < objArr.length; i += 2) {
                if (objArr[i + 1] != null) {
                    if (z2) {
                        z2 = false;
                    } else {
                        str2 = String.valueOf(str2) + "&";
                    }
                    str2 = z ? String.valueOf(str2) + URLEncoder.encode(new StringBuilder().append(objArr[i]).toString(), "UTF-8").replace("+", "%20").replace("%7E", "~") + "=" + URLEncoder.encode(new StringBuilder().append(objArr[i + 1]).toString(), "UTF-8").replace("+", "%20").replace("%7E", "~") : String.valueOf(str2) + URLEncoder.encode(new StringBuilder().append(objArr[i]).toString(), "UTF-8") + "=" + URLEncoder.encode(new StringBuilder().append(objArr[i + 1]).toString(), "UTF-8");
                }
            }
            return str2.length() != 0 ? String.valueOf(replace) + "?" + str2 : replace;
        } catch (UnsupportedEncodingException e) {
            return null;
        }
    }

    private static int decode(char c) {
        if (c >= 'A' && c <= 'Z') {
            return c - 'A';
        }
        if (c >= 'a' && c <= 'z') {
            return (c - 'a') + 26;
        }
        if (c >= '0' && c <= '9') {
            return (c - '0') + 26 + 26;
        }
        switch (c) {
            case '+':
                return 62;
            case '/':
                return 63;
            case '=':
                return 0;
            default:
                throw new RuntimeException("unexpected code: " + c);
        }
    }

    private static void decode(String str, OutputStream outputStream) {
        int i = 0;
        int length = str.length();
        while (true) {
            if (i < length && str.charAt(i) <= ' ') {
                i++;
            } else {
                if (i == length) {
                    return;
                }
                int decode = (decode(str.charAt(i)) << 18) + (decode(str.charAt(i + 1)) << 12) + (decode(str.charAt(i + 2)) << 6) + decode(str.charAt(i + 3));
                outputStream.write((decode >> 16) & 255);
                if (str.charAt(i + 2) == '=') {
                    return;
                }
                outputStream.write((decode >> 8) & 255);
                if (str.charAt(i + 3) == '=') {
                    return;
                }
                outputStream.write(decode & 255);
                i += 4;
            }
        }
    }

    public static HttpClient getClient() {
        BasicHttpParams basicHttpParams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(basicHttpParams, SmbConstants.DEFAULT_RESPONSE_TIMEOUT);
        HttpConnectionParams.setSoTimeout(basicHttpParams, SmbConstants.DEFAULT_RESPONSE_TIMEOUT);
        return new DefaultHttpClient(basicHttpParams);
    }

    private static Character getHexChar(int i) {
        return i < 10 ? Character.valueOf((char) (i + 48)) : Character.valueOf((char) ((i + 97) - 10));
    }

    public static int getInt(Object obj, String str) {
        Object obj2;
        try {
            Map map = (Map) obj;
            if (map == null || (obj2 = map.get(str)) == null) {
                return -1;
            }
            return (obj2 == null || !(obj2 instanceof Number)) ? (obj2 == null || !(obj2 instanceof String)) ? -1 : Integer.parseInt((String) obj2) : ((Number) obj2).intValue();
        } catch (Exception e) {
            return -1;
        }
    }

    public static Map parseAsJSON(HttpResponse httpResponse) {
        String readResponse = readResponse(httpResponse);
        if (httpResponse.getStatusLine().getStatusCode() != 200) {
            HashMap hashMap = new HashMap();
            hashMap.put("ERROR", httpResponse.getStatusLine());
            hashMap.put("RESULT", readResponse);
            return hashMap;
        }
        if (readResponse.equals("OK")) {
            HashMap hashMap2 = new HashMap();
            hashMap2.put("RESULT", readResponse);
            return hashMap2;
        }
        try {
            return (Map) new JSONParser().parse(readResponse);
        } catch (ParseException e) {
            HashMap hashMap3 = new HashMap();
            hashMap3.put("ERROR", new BasicStatusLine(new ProtocolVersion("HTTP", 1, 1), 999, "Bad JSON From Server: " + e.toString()));
            hashMap3.put("RESULT", readResponse);
            return hashMap3;
        }
    }

    public static String readResponse(HttpResponse httpResponse) {
        HttpEntity entity = httpResponse.getEntity();
        if (entity == null) {
            return "";
        }
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(entity.getContent()), BUFFER_SIZE);
        String str = "";
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                httpResponse.getEntity().consumeContent();
                return str;
            }
            str = String.valueOf(str) + readLine;
        }
    }

    public static void setParameters(HttpPost httpPost, Object[] objArr) {
        if (objArr != null) {
            try {
                if (objArr.length >= 2) {
                    if (!$assertionsDisabled && objArr.length % 2 != 0) {
                        throw new AssertionError("Params must have an even number of elements.");
                    }
                    ArrayList arrayList = new ArrayList();
                    for (int i = 0; i < objArr.length; i += 2) {
                        if (objArr[i + 1] != null) {
                            arrayList.add(new BasicNameValuePair(new StringBuilder().append(objArr[i]).toString(), new StringBuilder().append(objArr[i + 1]).toString()));
                        }
                    }
                    httpPost.setEntity(new UrlEncodedFormEntity(arrayList, "UTF-8"));
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static String toHexStr(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < bArr.length; i++) {
            sb.append(getHexChar((bArr[i] & 255) / 16));
            sb.append(getHexChar((bArr[i] & 255) % 16));
        }
        return sb.toString();
    }
}

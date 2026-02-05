package jcifs.http;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Authenticator;
import java.net.HttpURLConnection;
import java.net.PasswordAuthentication;
import java.net.URL;
import java.net.URLDecoder;
import java.security.Permission;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import jcifs.Config;
import jcifs.ntlmssp.NtlmMessage;
import jcifs.ntlmssp.Type1Message;
import jcifs.ntlmssp.Type2Message;
import jcifs.ntlmssp.Type3Message;
import jcifs.util.Base64;
import oauth.signpost.OAuth;

/* loaded from: classes.dex */
public class NtlmHttpURLConnection extends HttpURLConnection {
    private static final String DEFAULT_DOMAIN;
    private String authMethod;
    private String authProperty;
    private ByteArrayOutputStream cachedOutput;
    private HttpURLConnection connection;
    private boolean handshakeComplete;
    private Map headerFields;
    private Map requestProperties;
    private static final int MAX_REDIRECTS = Integer.parseInt(System.getProperty("http.maxRedirects", "20"));
    private static final int LM_COMPATIBILITY = Config.getInt("jcifs.smb.lmCompatibility", 0);

    /* loaded from: classes.dex */
    class CacheStream extends OutputStream {
        private final OutputStream collector;
        private final OutputStream stream;

        public CacheStream(OutputStream outputStream, OutputStream outputStream2) {
            this.stream = outputStream;
            this.collector = outputStream2;
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.stream.close();
            this.collector.close();
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public void flush() {
            this.stream.flush();
            this.collector.flush();
        }

        @Override // java.io.OutputStream
        public void write(int i) {
            this.stream.write(i);
            this.collector.write(i);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) {
            this.stream.write(bArr);
            this.collector.write(bArr);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) {
            this.stream.write(bArr, i, i2);
            this.collector.write(bArr, i, i2);
        }
    }

    static {
        String property = System.getProperty("http.auth.ntlm.domain");
        if (property == null) {
            property = Type3Message.getDefaultDomain();
        }
        DEFAULT_DOMAIN = property;
    }

    public NtlmHttpURLConnection(HttpURLConnection httpURLConnection) {
        super(httpURLConnection.getURL());
        this.connection = httpURLConnection;
        this.requestProperties = new HashMap();
    }

    private NtlmMessage attemptNegotiation(int i) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        NtlmMessage type3Message;
        String str7;
        this.authProperty = null;
        this.authMethod = null;
        InputStream errorStream = this.connection.getErrorStream();
        if (errorStream != null && errorStream.available() != 0) {
            do {
            } while (errorStream.read(new byte[1024], 0, 1024) != -1);
        }
        if (i == 401) {
            str = "WWW-Authenticate";
            this.authProperty = OAuth.HTTP_AUTHORIZATION_HEADER;
        } else {
            str = "Proxy-Authenticate";
            this.authProperty = "Proxy-Authorization";
        }
        List list = (List) getHeaderFields0().get(str);
        if (list == null) {
            return null;
        }
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                str2 = null;
                break;
            }
            String str8 = (String) it.next();
            if (str8.startsWith("NTLM")) {
                if (str8.length() == 4) {
                    this.authMethod = "NTLM";
                    str2 = null;
                    break;
                }
                if (str8.indexOf(32) == 4) {
                    this.authMethod = "NTLM";
                    str2 = str8.substring(5).trim();
                    break;
                }
            } else if (!str8.startsWith("Negotiate")) {
                continue;
            } else {
                if (str8.length() == 9) {
                    this.authMethod = "Negotiate";
                    str2 = null;
                    break;
                }
                if (str8.indexOf(32) == 9) {
                    this.authMethod = "Negotiate";
                    str2 = str8.substring(10).trim();
                    break;
                }
            }
        }
        if (this.authMethod == null) {
            return null;
        }
        Type2Message type2Message = str2 != null ? new Type2Message(Base64.decode(str2)) : null;
        reconnect();
        if (type2Message == null) {
            type3Message = new Type1Message();
            if (LM_COMPATIBILITY > 2) {
                type3Message.setFlag(4, true);
            }
        } else {
            String str9 = DEFAULT_DOMAIN;
            String defaultUser = Type3Message.getDefaultUser();
            String defaultPassword = Type3Message.getDefaultPassword();
            String userInfo = this.url.getUserInfo();
            if (userInfo != null) {
                String decode = URLDecoder.decode(userInfo);
                int indexOf = decode.indexOf(58);
                String substring = indexOf != -1 ? decode.substring(0, indexOf) : decode;
                if (indexOf != -1) {
                    defaultPassword = decode.substring(indexOf + 1);
                }
                int indexOf2 = substring.indexOf(92);
                if (indexOf2 == -1) {
                    indexOf2 = substring.indexOf(47);
                }
                if (indexOf2 != -1) {
                    str9 = substring.substring(0, indexOf2);
                }
                if (indexOf2 != -1) {
                    substring = substring.substring(indexOf2 + 1);
                }
                defaultUser = substring;
                str3 = str9;
                str4 = defaultPassword;
            } else {
                str3 = str9;
                str4 = defaultPassword;
            }
            if (defaultUser != null) {
                str5 = str4;
                str6 = defaultUser;
            } else {
                if (!this.allowUserInteraction) {
                    return null;
                }
                try {
                    URL url = getURL();
                    String protocol = url.getProtocol();
                    int port = url.getPort();
                    if (port == -1) {
                        port = "https".equalsIgnoreCase(protocol) ? jcifs.https.Handler.DEFAULT_HTTPS_PORT : 80;
                    }
                    PasswordAuthentication requestPasswordAuthentication = Authenticator.requestPasswordAuthentication(null, port, protocol, "", this.authMethod);
                    if (requestPasswordAuthentication == null) {
                        return null;
                    }
                    str7 = requestPasswordAuthentication.getUserName();
                    try {
                        str5 = new String(requestPasswordAuthentication.getPassword());
                        str6 = str7;
                    } catch (Exception e) {
                        str5 = str4;
                        str6 = str7;
                        type3Message = new Type3Message(type2Message, str5, str3, str6, Type3Message.getDefaultWorkstation(), 0);
                        return type3Message;
                    }
                } catch (Exception e2) {
                    str7 = defaultUser;
                }
            }
            type3Message = new Type3Message(type2Message, str5, str3, str6, Type3Message.getDefaultWorkstation(), 0);
        }
        return type3Message;
    }

    private void doHandshake() {
        connect();
        try {
            int parseResponseCode = parseResponseCode();
            if (parseResponseCode == 401 || parseResponseCode == 407) {
                Type1Message type1Message = (Type1Message) attemptNegotiation(parseResponseCode);
                if (type1Message == null) {
                    return;
                }
                int i = 0;
                while (i < MAX_REDIRECTS) {
                    this.connection.setRequestProperty(this.authProperty, this.authMethod + ' ' + Base64.encode(type1Message.toByteArray()));
                    this.connection.connect();
                    int parseResponseCode2 = parseResponseCode();
                    if (parseResponseCode2 != 401 && parseResponseCode2 != 407) {
                        return;
                    }
                    Type3Message type3Message = (Type3Message) attemptNegotiation(parseResponseCode2);
                    if (type3Message == null) {
                        return;
                    }
                    this.connection.setRequestProperty(this.authProperty, this.authMethod + ' ' + Base64.encode(type3Message.toByteArray()));
                    this.connection.connect();
                    if (this.cachedOutput != null && this.doOutput) {
                        OutputStream outputStream = this.connection.getOutputStream();
                        this.cachedOutput.writeTo(outputStream);
                        outputStream.flush();
                    }
                    int parseResponseCode3 = parseResponseCode();
                    if (parseResponseCode3 != 401 && parseResponseCode3 != 407) {
                        return;
                    }
                    int i2 = i + 1;
                    if (!this.allowUserInteraction || i2 >= MAX_REDIRECTS) {
                        break;
                    }
                    reconnect();
                    i = i2;
                }
                throw new IOException("Unable to negotiate NTLM authentication.");
            }
        } finally {
            this.cachedOutput = null;
        }
    }

    private Map getHeaderFields0() {
        if (this.headerFields != null) {
            return this.headerFields;
        }
        HashMap hashMap = new HashMap();
        String headerFieldKey = this.connection.getHeaderFieldKey(0);
        String headerField = this.connection.getHeaderField(0);
        int i = 1;
        while (true) {
            if (headerFieldKey == null && headerField == null) {
                break;
            }
            List list = (List) hashMap.get(headerFieldKey);
            if (list == null) {
                list = new ArrayList();
                hashMap.put(headerFieldKey, list);
            }
            list.add(headerField);
            headerFieldKey = this.connection.getHeaderFieldKey(i);
            headerField = this.connection.getHeaderField(i);
            i++;
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
        }
        Map unmodifiableMap = Collections.unmodifiableMap(hashMap);
        this.headerFields = unmodifiableMap;
        return unmodifiableMap;
    }

    private void handshake() {
        if (this.handshakeComplete) {
            return;
        }
        doHandshake();
        this.handshakeComplete = true;
    }

    private int parseResponseCode() {
        try {
            String headerField = this.connection.getHeaderField(0);
            int indexOf = headerField.indexOf(32);
            while (headerField.charAt(indexOf) == ' ') {
                indexOf++;
            }
            return Integer.parseInt(headerField.substring(indexOf, indexOf + 3));
        } catch (Exception e) {
            throw new IOException(e.getMessage());
        }
    }

    private void reconnect() {
        this.connection = (HttpURLConnection) this.connection.getURL().openConnection();
        this.connection.setRequestMethod(this.method);
        this.headerFields = null;
        for (Map.Entry entry : this.requestProperties.entrySet()) {
            String str = (String) entry.getKey();
            StringBuffer stringBuffer = new StringBuffer();
            Iterator it = ((List) entry.getValue()).iterator();
            while (it.hasNext()) {
                stringBuffer.append(it.next());
                if (it.hasNext()) {
                    stringBuffer.append(", ");
                }
            }
            this.connection.setRequestProperty(str, stringBuffer.toString());
        }
        this.connection.setAllowUserInteraction(this.allowUserInteraction);
        this.connection.setDoInput(this.doInput);
        this.connection.setDoOutput(this.doOutput);
        this.connection.setIfModifiedSince(this.ifModifiedSince);
        this.connection.setUseCaches(this.useCaches);
    }

    @Override // java.net.URLConnection
    public void addRequestProperty(String str, String str2) {
        List list;
        if (str == null) {
            throw new NullPointerException();
        }
        Iterator it = this.requestProperties.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                list = null;
                break;
            }
            Map.Entry entry = (Map.Entry) it.next();
            if (str.equalsIgnoreCase((String) entry.getKey())) {
                list = (List) entry.getValue();
                list.add(str2);
                break;
            }
        }
        if (list == null) {
            list = new ArrayList();
            list.add(str2);
            this.requestProperties.put(str, list);
        }
        StringBuffer stringBuffer = new StringBuffer();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            stringBuffer.append(it2.next());
            if (it2.hasNext()) {
                stringBuffer.append(", ");
            }
        }
        this.connection.setRequestProperty(str, stringBuffer.toString());
    }

    @Override // java.net.URLConnection
    public void connect() {
        if (this.connected) {
            return;
        }
        this.connection.connect();
        this.connected = true;
    }

    @Override // java.net.HttpURLConnection
    public void disconnect() {
        this.connection.disconnect();
        this.handshakeComplete = false;
        this.connected = false;
    }

    @Override // java.net.URLConnection
    public boolean getAllowUserInteraction() {
        return this.connection.getAllowUserInteraction();
    }

    @Override // java.net.URLConnection
    public Object getContent() {
        try {
            handshake();
        } catch (IOException e) {
        }
        return this.connection.getContent();
    }

    @Override // java.net.URLConnection
    public Object getContent(Class[] clsArr) {
        try {
            handshake();
        } catch (IOException e) {
        }
        return this.connection.getContent(clsArr);
    }

    @Override // java.net.URLConnection
    public String getContentEncoding() {
        try {
            handshake();
        } catch (IOException e) {
        }
        return this.connection.getContentEncoding();
    }

    @Override // java.net.URLConnection
    public int getContentLength() {
        try {
            handshake();
        } catch (IOException e) {
        }
        return this.connection.getContentLength();
    }

    @Override // java.net.URLConnection
    public String getContentType() {
        try {
            handshake();
        } catch (IOException e) {
        }
        return this.connection.getContentType();
    }

    @Override // java.net.URLConnection
    public long getDate() {
        try {
            handshake();
        } catch (IOException e) {
        }
        return this.connection.getDate();
    }

    @Override // java.net.URLConnection
    public boolean getDefaultUseCaches() {
        return this.connection.getDefaultUseCaches();
    }

    @Override // java.net.URLConnection
    public boolean getDoInput() {
        return this.connection.getDoInput();
    }

    @Override // java.net.URLConnection
    public boolean getDoOutput() {
        return this.connection.getDoOutput();
    }

    @Override // java.net.HttpURLConnection
    public InputStream getErrorStream() {
        try {
            handshake();
        } catch (IOException e) {
        }
        return this.connection.getErrorStream();
    }

    @Override // java.net.URLConnection
    public long getExpiration() {
        try {
            handshake();
        } catch (IOException e) {
        }
        return this.connection.getExpiration();
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public String getHeaderField(int i) {
        try {
            handshake();
        } catch (IOException e) {
        }
        return this.connection.getHeaderField(i);
    }

    @Override // java.net.URLConnection
    public String getHeaderField(String str) {
        try {
            handshake();
        } catch (IOException e) {
        }
        return this.connection.getHeaderField(str);
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public long getHeaderFieldDate(String str, long j) {
        try {
            handshake();
        } catch (IOException e) {
        }
        return this.connection.getHeaderFieldDate(str, j);
    }

    @Override // java.net.URLConnection
    public int getHeaderFieldInt(String str, int i) {
        try {
            handshake();
        } catch (IOException e) {
        }
        return this.connection.getHeaderFieldInt(str, i);
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public String getHeaderFieldKey(int i) {
        try {
            handshake();
        } catch (IOException e) {
        }
        return this.connection.getHeaderFieldKey(i);
    }

    @Override // java.net.URLConnection
    public Map getHeaderFields() {
        if (this.headerFields != null) {
            return this.headerFields;
        }
        try {
            handshake();
        } catch (IOException e) {
        }
        return getHeaderFields0();
    }

    @Override // java.net.URLConnection
    public long getIfModifiedSince() {
        return this.connection.getIfModifiedSince();
    }

    @Override // java.net.URLConnection
    public InputStream getInputStream() {
        try {
            handshake();
        } catch (IOException e) {
        }
        return this.connection.getInputStream();
    }

    @Override // java.net.HttpURLConnection
    public boolean getInstanceFollowRedirects() {
        return this.connection.getInstanceFollowRedirects();
    }

    @Override // java.net.URLConnection
    public long getLastModified() {
        try {
            handshake();
        } catch (IOException e) {
        }
        return this.connection.getLastModified();
    }

    @Override // java.net.URLConnection
    public OutputStream getOutputStream() {
        try {
            connect();
        } catch (IOException e) {
        }
        OutputStream outputStream = this.connection.getOutputStream();
        this.cachedOutput = new ByteArrayOutputStream();
        return new CacheStream(outputStream, this.cachedOutput);
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public Permission getPermission() {
        return this.connection.getPermission();
    }

    @Override // java.net.HttpURLConnection
    public String getRequestMethod() {
        return this.connection.getRequestMethod();
    }

    @Override // java.net.URLConnection
    public Map getRequestProperties() {
        HashMap hashMap = new HashMap();
        for (Map.Entry entry : this.requestProperties.entrySet()) {
            hashMap.put(entry.getKey(), Collections.unmodifiableList((List) entry.getValue()));
        }
        return Collections.unmodifiableMap(hashMap);
    }

    @Override // java.net.URLConnection
    public String getRequestProperty(String str) {
        return this.connection.getRequestProperty(str);
    }

    @Override // java.net.HttpURLConnection
    public int getResponseCode() {
        try {
            handshake();
        } catch (IOException e) {
        }
        return this.connection.getResponseCode();
    }

    @Override // java.net.HttpURLConnection
    public String getResponseMessage() {
        try {
            handshake();
        } catch (IOException e) {
        }
        return this.connection.getResponseMessage();
    }

    @Override // java.net.URLConnection
    public URL getURL() {
        return this.connection.getURL();
    }

    @Override // java.net.URLConnection
    public boolean getUseCaches() {
        return this.connection.getUseCaches();
    }

    @Override // java.net.URLConnection
    public void setAllowUserInteraction(boolean z) {
        this.connection.setAllowUserInteraction(z);
        this.allowUserInteraction = z;
    }

    @Override // java.net.URLConnection
    public void setDefaultUseCaches(boolean z) {
        this.connection.setDefaultUseCaches(z);
    }

    @Override // java.net.URLConnection
    public void setDoInput(boolean z) {
        this.connection.setDoInput(z);
        this.doInput = z;
    }

    @Override // java.net.URLConnection
    public void setDoOutput(boolean z) {
        this.connection.setDoOutput(z);
        this.doOutput = z;
    }

    @Override // java.net.URLConnection
    public void setIfModifiedSince(long j) {
        this.connection.setIfModifiedSince(j);
        this.ifModifiedSince = j;
    }

    @Override // java.net.HttpURLConnection
    public void setInstanceFollowRedirects(boolean z) {
        this.connection.setInstanceFollowRedirects(z);
    }

    @Override // java.net.HttpURLConnection
    public void setRequestMethod(String str) {
        this.connection.setRequestMethod(str);
        this.method = str;
    }

    @Override // java.net.URLConnection
    public void setRequestProperty(String str, String str2) {
        boolean z;
        if (str == null) {
            throw new NullPointerException();
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(str2);
        Iterator it = this.requestProperties.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            }
            Map.Entry entry = (Map.Entry) it.next();
            if (str.equalsIgnoreCase((String) entry.getKey())) {
                entry.setValue(arrayList);
                z = true;
                break;
            }
        }
        if (!z) {
            this.requestProperties.put(str, arrayList);
        }
        this.connection.setRequestProperty(str, str2);
    }

    @Override // java.net.URLConnection
    public void setUseCaches(boolean z) {
        this.connection.setUseCaches(z);
        this.useCaches = z;
    }

    @Override // java.net.URLConnection
    public String toString() {
        return this.connection.toString();
    }

    @Override // java.net.HttpURLConnection
    public boolean usingProxy() {
        return this.connection.usingProxy();
    }
}

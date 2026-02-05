package jcifs.http;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLStreamHandler;
import java.net.URLStreamHandlerFactory;
import java.util.HashMap;
import java.util.Map;
import java.util.StringTokenizer;

/* loaded from: classes.dex */
public class Handler extends URLStreamHandler {
    public static final int DEFAULT_HTTP_PORT = 80;
    private static final String HANDLER_PKGS_PROPERTY = "java.protocol.handler.pkgs";
    private static URLStreamHandlerFactory factory;
    private static final Map PROTOCOL_HANDLERS = new HashMap();
    private static final String[] JVM_VENDOR_DEFAULT_PKGS = {"sun.net.www.protocol"};

    private static URLStreamHandler getDefaultStreamHandler(String str) {
        URLStreamHandler uRLStreamHandler;
        Class<?> cls;
        Class<?> cls2;
        synchronized (PROTOCOL_HANDLERS) {
            uRLStreamHandler = (URLStreamHandler) PROTOCOL_HANDLERS.get(str);
            if (uRLStreamHandler == null) {
                URLStreamHandler createURLStreamHandler = factory != null ? factory.createURLStreamHandler(str) : uRLStreamHandler;
                if (createURLStreamHandler == null) {
                    StringTokenizer stringTokenizer = new StringTokenizer(System.getProperty(HANDLER_PKGS_PROPERTY), "|");
                    while (stringTokenizer.hasMoreTokens()) {
                        String trim = stringTokenizer.nextToken().trim();
                        if (!trim.equals("jcifs")) {
                            String str2 = trim + "." + str + ".Handler";
                            try {
                                cls2 = Class.forName(str2);
                            } catch (Exception e) {
                                cls2 = null;
                            }
                            if (cls2 == null) {
                                try {
                                    cls2 = ClassLoader.getSystemClassLoader().loadClass(str2);
                                } catch (Exception e2) {
                                }
                            }
                            uRLStreamHandler = (URLStreamHandler) cls2.newInstance();
                            break;
                        }
                    }
                }
                uRLStreamHandler = createURLStreamHandler;
                if (uRLStreamHandler == null) {
                    int i = 0;
                    while (true) {
                        int i2 = i;
                        URLStreamHandler uRLStreamHandler2 = uRLStreamHandler;
                        if (i2 >= JVM_VENDOR_DEFAULT_PKGS.length) {
                            uRLStreamHandler = uRLStreamHandler2;
                            break;
                        }
                        String str3 = JVM_VENDOR_DEFAULT_PKGS[i2] + "." + str + ".Handler";
                        try {
                            cls = Class.forName(str3);
                        } catch (Exception e3) {
                            cls = null;
                        }
                        if (cls == null) {
                            try {
                                cls = ClassLoader.getSystemClassLoader().loadClass(str3);
                            } catch (Exception e4) {
                                uRLStreamHandler = uRLStreamHandler2;
                            }
                        }
                        uRLStreamHandler = (URLStreamHandler) cls.newInstance();
                        if (uRLStreamHandler != null) {
                            break;
                        }
                        i = i2 + 1;
                    }
                }
                if (uRLStreamHandler == null) {
                    throw new IOException("Unable to find default handler for protocol: " + str);
                }
                PROTOCOL_HANDLERS.put(str, uRLStreamHandler);
            }
        }
        return uRLStreamHandler;
    }

    public static void setURLStreamHandlerFactory(URLStreamHandlerFactory uRLStreamHandlerFactory) {
        synchronized (PROTOCOL_HANDLERS) {
            if (factory != null) {
                throw new IllegalStateException("URLStreamHandlerFactory already set.");
            }
            PROTOCOL_HANDLERS.clear();
            factory = uRLStreamHandlerFactory;
        }
    }

    @Override // java.net.URLStreamHandler
    protected int getDefaultPort() {
        return 80;
    }

    @Override // java.net.URLStreamHandler
    protected URLConnection openConnection(URL url) {
        return new NtlmHttpURLConnection((HttpURLConnection) new URL(url, url.toExternalForm(), getDefaultStreamHandler(url.getProtocol())).openConnection());
    }
}

package com.estrongs.android.c;

import android.net.Uri;
import com.estrongs.android.util.ak;
import com.estrongs.android.util.m;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.Socket;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;
import java.util.Properties;
import java.util.StringTokenizer;
import java.util.Vector;
import org.apache.commons.net.SocketClient;

/* loaded from: classes.dex */
class i implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ g f270a;

    /* renamed from: b, reason: collision with root package name */
    private Socket f271b;

    public i(g gVar, Socket socket) {
        this.f270a = gVar;
        this.f271b = socket;
        Thread thread = new Thread(this);
        thread.setDaemon(true);
        thread.start();
    }

    private int a(byte[] bArr, int i) {
        while (i < bArr.length) {
            if (bArr[i] == 13) {
                i++;
                if (bArr[i] == 10) {
                    i++;
                    if (bArr[i] == 13) {
                        i++;
                        if (bArr[i] == 10) {
                            break;
                        }
                    } else {
                        continue;
                    }
                } else {
                    continue;
                }
            }
            i++;
        }
        return i + 1;
    }

    private String a(String str) {
        try {
            return Uri.decode(str);
        } catch (Exception e) {
            a("400 Bad Request", "BAD REQUEST: Bad percent-encoding.");
            return null;
        }
    }

    private String a(byte[] bArr, int i, int i2) {
        if (i2 <= 0) {
            return "";
        }
        try {
            File createTempFile = File.createTempFile("NanoHTTPD", "", new File(System.getProperty("java.io.tmpdir")));
            FileOutputStream fileOutputStream = new FileOutputStream(createTempFile);
            fileOutputStream.write(bArr, i, i2);
            fileOutputStream.close();
            return createTempFile.getAbsolutePath();
        } catch (Exception e) {
            System.err.println("Error: " + e.getMessage());
            return "";
        }
    }

    private void a(BufferedReader bufferedReader, Properties properties, Properties properties2, Properties properties3) {
        String nextToken;
        String a2;
        try {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                return;
            }
            StringTokenizer stringTokenizer = new StringTokenizer(readLine);
            if (!stringTokenizer.hasMoreTokens()) {
                a("400 Bad Request", "BAD REQUEST: Syntax error. Usage: GET /example/file.html");
            }
            String nextToken2 = stringTokenizer.nextToken();
            properties.put("method", nextToken2);
            if (!stringTokenizer.hasMoreTokens()) {
                a("400 Bad Request", "BAD REQUEST: Missing URI. Usage: GET /example/file.html");
            }
            int length = nextToken2.length() + readLine.indexOf(nextToken2) + 1;
            int indexOf = readLine.indexOf("HTTP/1") - 1;
            if (indexOf < 0) {
                indexOf = readLine.indexOf("http/1") - 1;
            }
            if (indexOf > 0) {
                nextToken = readLine.substring(length, indexOf);
                stringTokenizer.nextToken();
            } else {
                nextToken = stringTokenizer.nextToken();
            }
            int indexOf2 = nextToken.indexOf(63);
            if (indexOf2 >= 0) {
                a(nextToken.substring(indexOf2 + 1), properties2);
                a2 = a(nextToken.substring(0, indexOf2));
            } else {
                a2 = a(nextToken);
            }
            if (stringTokenizer.hasMoreTokens()) {
                String readLine2 = bufferedReader.readLine();
                while (readLine2 != null && readLine2.trim().length() > 0) {
                    int indexOf3 = readLine2.indexOf(58);
                    if (indexOf3 >= 0) {
                        properties3.put(readLine2.substring(0, indexOf3).trim().toLowerCase(), readLine2.substring(indexOf3 + 1).trim());
                    }
                    readLine2 = bufferedReader.readLine();
                }
            }
            properties.put("uri", a2);
        } catch (IOException e) {
            a("500 Internal Server Error", "SERVER INTERNAL ERROR: IOException: " + e.getMessage());
        }
    }

    private void a(String str, String str2) {
        a(str, "text/plain", (Properties) null, new ByteArrayInputStream(str2.getBytes()));
        throw new InterruptedException();
    }

    private void a(String str, String str2, Properties properties, InputStream inputStream) {
        SimpleDateFormat simpleDateFormat;
        Thread.currentThread().getId();
        try {
            try {
                m.a();
                if (str == null) {
                    throw new Error("sendResponse(): Status can't be null.");
                }
                OutputStream outputStream = this.f271b.getOutputStream();
                PrintWriter printWriter = new PrintWriter(outputStream);
                printWriter.print("HTTP/1.0 " + str + " \r\n");
                if (str2 != null) {
                    printWriter.print("Content-Type: " + str2 + SocketClient.NETASCII_EOL);
                }
                if (properties == null || properties.getProperty("Date") == null) {
                    StringBuilder append = new StringBuilder().append("Date: ");
                    simpleDateFormat = g.i;
                    printWriter.print(append.append(simpleDateFormat.format(new Date())).append(SocketClient.NETASCII_EOL).toString());
                }
                if (properties != null) {
                    Enumeration keys = properties.keys();
                    while (keys.hasMoreElements()) {
                        String str3 = (String) keys.nextElement();
                        printWriter.print(str3 + ": " + properties.getProperty(str3) + SocketClient.NETASCII_EOL);
                    }
                }
                printWriter.print(SocketClient.NETASCII_EOL);
                printWriter.flush();
                if (inputStream != null) {
                    byte[] bArr = new byte[16384];
                    while (true) {
                        int read = inputStream.read(bArr, 0, 16384);
                        if (read <= 0) {
                            break;
                        } else {
                            outputStream.write(bArr, 0, read);
                        }
                    }
                }
                outputStream.flush();
                outputStream.close();
                if (inputStream != null) {
                    inputStream.close();
                }
            } finally {
                m.b();
            }
        } catch (IOException e) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (Exception e2) {
                }
            }
            try {
                this.f271b.close();
            } catch (Throwable th) {
            }
        }
    }

    private void a(String str, Properties properties) {
        if (str == null) {
            return;
        }
        StringTokenizer stringTokenizer = new StringTokenizer(str, "&");
        while (stringTokenizer.hasMoreTokens()) {
            String nextToken = stringTokenizer.nextToken();
            int indexOf = nextToken.indexOf(61);
            if (indexOf >= 0) {
                properties.put(a(nextToken.substring(0, indexOf)).trim(), a(nextToken.substring(indexOf + 1)));
            }
        }
    }

    private void a(String str, byte[] bArr, BufferedReader bufferedReader, Properties properties, Properties properties2) {
        String substring;
        String readLine;
        try {
            int[] a2 = a(bArr, str.getBytes());
            int i = 1;
            String readLine2 = bufferedReader.readLine();
            while (readLine2 != null) {
                if (readLine2.indexOf(str) == -1) {
                    a("400 Bad Request", "BAD REQUEST: Content type is multipart/form-data but next chunk does not start with boundary. Usage: GET /example/file.html");
                }
                int i2 = i + 1;
                Properties properties3 = new Properties();
                readLine2 = bufferedReader.readLine();
                while (readLine2 != null && readLine2.trim().length() > 0) {
                    int indexOf = readLine2.indexOf(58);
                    if (indexOf != -1) {
                        properties3.put(readLine2.substring(0, indexOf).trim().toLowerCase(), readLine2.substring(indexOf + 1).trim());
                    }
                    readLine2 = bufferedReader.readLine();
                }
                if (readLine2 != null) {
                    String property = properties3.getProperty("content-disposition");
                    if (property == null) {
                        a("400 Bad Request", "BAD REQUEST: Content type is multipart/form-data but no content-disposition info found. Usage: GET /example/file.html");
                    }
                    StringTokenizer stringTokenizer = new StringTokenizer(property, "; ");
                    Properties properties4 = new Properties();
                    while (stringTokenizer.hasMoreTokens()) {
                        String nextToken = stringTokenizer.nextToken();
                        int indexOf2 = nextToken.indexOf(61);
                        if (indexOf2 != -1) {
                            properties4.put(nextToken.substring(0, indexOf2).trim().toLowerCase(), nextToken.substring(indexOf2 + 1).trim());
                        }
                    }
                    String substring2 = properties4.getProperty("name").substring(1, r1.length() - 1);
                    if (properties3.getProperty("content-type") != null) {
                        if (i2 > a2.length) {
                            a("500 Internal Server Error", "Error processing request");
                        }
                        properties2.put(substring2, a(bArr, a(bArr, a2[i2 - 2]), (a2[i2 - 1] - r0) - 4));
                        substring = properties4.getProperty("filename").substring(1, r0.length() - 1);
                        do {
                            readLine = bufferedReader.readLine();
                            if (readLine == null) {
                                break;
                            }
                        } while (readLine.indexOf(str) == -1);
                    } else {
                        readLine = readLine2;
                        substring = "";
                        while (readLine != null && readLine.indexOf(str) == -1) {
                            readLine = bufferedReader.readLine();
                            if (readLine != null) {
                                int indexOf3 = readLine.indexOf(str);
                                substring = indexOf3 == -1 ? substring + readLine : substring + readLine.substring(0, indexOf3 - 2);
                            }
                        }
                    }
                    String str2 = substring;
                    readLine2 = readLine;
                    properties.put(substring2, str2);
                }
                i = i2;
            }
        } catch (IOException e) {
            a("500 Internal Server Error", "SERVER INTERNAL ERROR: IOException: " + e.getMessage());
        }
    }

    public int[] a(byte[] bArr, byte[] bArr2) {
        Vector vector = new Vector();
        int i = 0;
        int i2 = -1;
        int i3 = 0;
        while (i < bArr.length) {
            if (bArr[i] == bArr2[i3]) {
                if (i3 == 0) {
                    i2 = i;
                }
                i3++;
                if (i3 == bArr2.length) {
                    vector.addElement(new Integer(i2));
                    i2 = -1;
                    i3 = 0;
                }
            } else {
                i -= i3;
                i2 = -1;
                i3 = 0;
            }
            i++;
        }
        int[] iArr = new int[vector.size()];
        for (int i4 = 0; i4 < iArr.length; i4++) {
            iArr[i4] = ((Integer) vector.elementAt(i4)).intValue();
        }
        return iArr;
    }

    @Override // java.lang.Runnable
    public void run() {
        byte[] bArr;
        int read;
        int i;
        boolean z;
        boolean b2;
        j a2;
        try {
            InputStream inputStream = this.f271b.getInputStream();
            if (inputStream != null && (read = inputStream.read((bArr = new byte[8192]), 0, 8192)) > 0) {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(bArr, 0, read)));
                Properties properties = new Properties();
                Properties properties2 = new Properties();
                Properties properties3 = new Properties();
                Properties properties4 = new Properties();
                a(bufferedReader, properties, properties2, properties3);
                String property = properties.getProperty("method");
                String property2 = properties.getProperty("uri");
                long j = Long.MAX_VALUE;
                String property3 = properties3.getProperty("content-length");
                if (property3 != null) {
                    try {
                        j = Integer.parseInt(property3);
                    } catch (NumberFormatException e) {
                    }
                }
                int i2 = 0;
                while (true) {
                    if (i2 >= read) {
                        i = i2;
                        z = false;
                        break;
                    }
                    if (bArr[i2] == 13) {
                        i2++;
                        if (bArr[i2] == 10) {
                            i2++;
                            if (bArr[i2] == 13) {
                                i2++;
                                if (bArr[i2] == 10) {
                                    i = i2;
                                    z = true;
                                    break;
                                }
                            } else {
                                continue;
                            }
                        } else {
                            continue;
                        }
                    }
                    i2++;
                }
                int i3 = i + 1;
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                if (i3 < read) {
                    byteArrayOutputStream.write(bArr, i3, read - i3);
                }
                if (i3 < read) {
                    j -= (read - i3) + 1;
                } else if (!z || j == Long.MAX_VALUE) {
                    j = 0;
                }
                byte[] bArr2 = new byte[512];
                int i4 = read;
                while (i4 >= 0 && j > 0) {
                    i4 = inputStream.read(bArr2, 0, 512);
                    j -= i4;
                    if (i4 > 0) {
                        byteArrayOutputStream.write(bArr2, 0, i4);
                    }
                }
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                this.f270a.d = byteArrayOutputStream.toByteArray();
                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(byteArray)));
                if (property.equalsIgnoreCase("POST")) {
                    StringTokenizer stringTokenizer = new StringTokenizer(properties3.getProperty("content-type"), "; ");
                    if ((stringTokenizer.hasMoreTokens() ? stringTokenizer.nextToken() : "").equalsIgnoreCase("multipart/form-data")) {
                        if (!stringTokenizer.hasMoreTokens()) {
                            a("400 Bad Request", "BAD REQUEST: Content type is multipart/form-data but boundary missing. Usage: GET /example/file.html");
                        }
                        StringTokenizer stringTokenizer2 = new StringTokenizer(stringTokenizer.nextToken(), "=");
                        if (stringTokenizer2.countTokens() != 2) {
                            a("400 Bad Request", "BAD REQUEST: Content type is multipart/form-data but boundary syntax error. Usage: GET /example/file.html");
                        }
                        stringTokenizer2.nextToken();
                        a(stringTokenizer2.nextToken(), byteArray, bufferedReader2, properties2, properties4);
                    } else {
                        String str = "";
                        char[] cArr = new char[512];
                        for (int read2 = bufferedReader2.read(cArr); read2 >= 0 && !str.endsWith(SocketClient.NETASCII_EOL); read2 = bufferedReader2.read(cArr)) {
                            str = str + String.valueOf(cArr, 0, read2);
                        }
                        a(str.trim(), properties2);
                    }
                }
                String be = ak.be(property2);
                if (be == null || ak.E(be) == 0) {
                    String inetAddress = this.f271b.getInetAddress().toString();
                    int indexOf = inetAddress.indexOf(47);
                    if (indexOf != -1) {
                        inetAddress = inetAddress.substring(indexOf + 1);
                    }
                    b2 = g.b(inetAddress);
                    a2 = !b2 ? null : this.f270a.a(property2, property, properties3, properties2, properties4);
                } else {
                    a2 = this.f270a.a(property2, property, properties3, properties2, properties4);
                }
                if (a2 == null) {
                    a("500 Internal Server Error", "SERVER INTERNAL ERROR: Serve() returned a null response.");
                } else {
                    a(a2.f272a, a2.f273b, a2.d, a2.c);
                }
                bufferedReader2.close();
                inputStream.close();
            }
        } catch (IOException e2) {
            try {
                a("500 Internal Server Error", "SERVER INTERNAL ERROR: IOException: " + e2.getMessage());
            } catch (Throwable th) {
            }
        } catch (InterruptedException e3) {
        }
    }
}

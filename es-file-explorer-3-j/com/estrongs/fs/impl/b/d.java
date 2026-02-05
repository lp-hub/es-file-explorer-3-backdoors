package com.estrongs.fs.impl.b;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.baidu.sapi2.BDAccountManager;
import com.baidu.sapi2.callback.LoginCallBack;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.p;
import com.estrongs.android.pop.q;
import com.estrongs.android.pop.utils.y;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.ab;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.b.t;
import com.estrongs.fs.h;
import com.estrongs.fs.k;
import com.estrongs.fs.l;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.StringReader;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.net.UnknownHostException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import oauth.signpost.OAuth;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.entity.mime.MIME;
import org.apache.http.params.HttpParams;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

/* loaded from: classes.dex */
public class d extends k {

    /* renamed from: a, reason: collision with root package name */
    private Context f3053a;

    public d(Context context) {
        this.f3053a = context;
    }

    private int a(PackageManager packageManager, ApplicationInfo applicationInfo, String str, HashMap<String, String> hashMap) {
        String a2 = y.a(packageManager, applicationInfo);
        if (com.estrongs.fs.impl.local.d.a(str + a2 + a(packageManager, applicationInfo) + ".apk")) {
            return 3;
        }
        return (hashMap == null || hashMap.get(a2) == null) ? 1 : 2;
    }

    private static String a(PackageManager packageManager, List<com.estrongs.fs.g> list) {
        JSONArray jSONArray = new JSONArray();
        Iterator<com.estrongs.fs.g> it = list.iterator();
        while (it.hasNext()) {
            c cVar = (c) it.next();
            JSONObject jSONObject = new JSONObject();
            String str = cVar.c().packageName;
            jSONObject.put("package", str);
            jSONObject.put("versioncode", Integer.valueOf(y.a(packageManager, str)));
            jSONObject.put("signmd5", y.b(packageManager, str));
            jSONArray.add(jSONObject);
        }
        return jSONArray.toString();
    }

    private String a(String str, String str2, String str3) {
        return str + str2 + "_" + str3 + ".zip";
    }

    private List<com.estrongs.fs.g> a() {
        LinkedList linkedList = new LinkedList();
        a(q.a(this.f3053a).A(), linkedList);
        return linkedList;
    }

    public static List<com.estrongs.fs.g> a(Context context, List<com.estrongs.fs.g> list) {
        c cVar;
        HttpClient a2;
        HttpResponse execute;
        Iterator<com.estrongs.fs.g> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                cVar = null;
                break;
            }
            cVar = (c) it.next();
            if ("com.estrongs.android.pop".equals(cVar.c().packageName)) {
                break;
            }
        }
        if (cVar != null) {
            list.remove(cVar);
        }
        ArrayList arrayList = new ArrayList();
        try {
            com.estrongs.android.ui.h.a.a(context).b();
            a2 = ab.a((HttpParams) null);
            execute = a2.execute(new HttpGet("http://m.baidu.com/api?from=1002320s&token=es&type=app&index=3"));
        } catch (ProtocolException e) {
            if (com.estrongs.a.a.getCurrentTask() != null) {
                ((t) com.estrongs.a.a.getCurrentTask()).i = true;
            }
        } catch (UnknownHostException e2) {
            if (com.estrongs.a.a.getCurrentTask() != null) {
                ((t) com.estrongs.a.a.getCurrentTask()).i = true;
            }
        } catch (IOException e3) {
            if (com.estrongs.a.a.getCurrentTask() != null) {
                ((t) com.estrongs.a.a.getCurrentTask()).i = true;
            }
        } catch (ParserConfigurationException e4) {
        } catch (SAXException e5) {
        } catch (Exception e6) {
        }
        if (execute.getStatusLine().getStatusCode() != 200) {
            return null;
        }
        String trim = ab.a(execute).trim();
        ab.a(a2);
        DocumentBuilder newDocumentBuilder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
        Element documentElement = newDocumentBuilder.parse(new InputSource(new StringReader(trim))).getDocumentElement();
        if ("0".equals(documentElement.getElementsByTagName("statuscode").item(0).getTextContent())) {
            String str = documentElement.getElementsByTagName("url").item(0).getTextContent() + "&from=1002320s&token=es&type=app";
            HashMap hashMap = new HashMap();
            Iterator<com.estrongs.fs.g> it2 = list.iterator();
            while (it2.hasNext()) {
                c cVar2 = (c) it2.next();
                hashMap.put(cVar2.c().packageName, cVar2);
            }
            String a3 = a(context.getPackageManager(), list);
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setRequestProperty(MIME.CONTENT_TYPE, OAuth.FORM_ENCODED);
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setDoInput(true);
            httpURLConnection.setRequestProperty("Connection", "Keep-Alive");
            httpURLConnection.connect();
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(httpURLConnection.getOutputStream());
            bufferedOutputStream.write(a3.getBytes());
            bufferedOutputStream.flush();
            bufferedOutputStream.close();
            InputStream inputStream = httpURLConnection.getInputStream();
            StringBuilder sb = new StringBuilder();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream), LoginCallBack.REQUEST_LOGINPROTECT);
            for (String readLine = bufferedReader.readLine(); readLine != null; readLine = bufferedReader.readLine()) {
                sb.append(readLine);
            }
            inputStream.close();
            Element documentElement2 = newDocumentBuilder.parse(new InputSource(new StringReader(sb.toString()))).getDocumentElement();
            if ("0".equals(documentElement2.getElementsByTagName("statuscode").item(0).getTextContent())) {
                NodeList childNodes = ((Element) documentElement2.getElementsByTagName("result").item(0)).getElementsByTagName("apps").item(0).getChildNodes();
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
                int i = 0;
                while (true) {
                    int i2 = i;
                    if (i2 >= childNodes.getLength()) {
                        return arrayList;
                    }
                    Element element = (Element) childNodes.item(i2);
                    String textContent = element.getElementsByTagName("sname").item(0).getTextContent();
                    String textContent2 = element.getElementsByTagName("package").item(0).getTextContent();
                    String textContent3 = element.getElementsByTagName("versionname").item(0).getTextContent();
                    String textContent4 = element.getElementsByTagName("versioncode").item(0).getTextContent();
                    String textContent5 = element.getElementsByTagName("signmd5").item(0).getTextContent();
                    String textContent6 = element.getElementsByTagName("usersignmd5").item(0).getTextContent();
                    long parseLong = Long.parseLong(element.getElementsByTagName("size").item(0).getTextContent());
                    long j = -1;
                    try {
                        j = simpleDateFormat.parse(element.getElementsByTagName("updatetime").item(0).getTextContent()).getTime();
                    } catch (ParseException e7) {
                    }
                    String textContent7 = element.getElementsByTagName("download_url").item(0).getTextContent();
                    String textContent8 = element.getElementsByTagName("changelog").item(0).getTextContent();
                    c cVar3 = (c) hashMap.get(textContent2);
                    boolean z = !textContent5.equals(textContent6);
                    cVar3.a(new g(textContent, textContent2, textContent3, textContent4, textContent7, parseLong, j, textContent8, z));
                    if (z) {
                        cVar3.setDisplayName(cVar3.getName() + "(" + context.getString(C0000R.string.inconsistent_signature) + ")");
                    }
                    arrayList.add(cVar3);
                    i = i2 + 1;
                }
            }
        }
        return arrayList;
    }

    private void a(String str, List<com.estrongs.fs.g> list) {
        List<com.estrongs.fs.g> list2;
        String[] d;
        LinkedList linkedList = null;
        try {
            list2 = com.estrongs.fs.d.a(this.f3053a).a(str);
        } catch (FileSystemException e) {
            e.printStackTrace();
            list2 = null;
        }
        if (list2 != null) {
            for (com.estrongs.fs.g gVar : list2) {
                if (gVar.getFileType().a()) {
                    if (linkedList == null) {
                        linkedList = new LinkedList();
                    }
                    linkedList.add(gVar);
                } else if (gVar.getName().endsWith(".apk") && (d = d(gVar.getName())) != null) {
                    String str2 = d[0];
                    String str3 = d[1];
                    f fVar = new f(new File(gVar.getAbsolutePath()));
                    fVar.c(str2);
                    fVar.a(str3);
                    String a2 = a(str, str2, str3);
                    try {
                        if (com.estrongs.fs.d.a(this.f3053a).b(a2)) {
                            fVar.b(a2);
                        }
                    } catch (FileSystemException e2) {
                        e2.printStackTrace();
                    }
                    list.add(fVar);
                }
            }
            if (linkedList != null) {
                Iterator it = linkedList.iterator();
                while (it.hasNext()) {
                    a(((com.estrongs.fs.g) it.next()).getPath(), list);
                }
            }
        }
    }

    public static String b(PackageManager packageManager, ApplicationInfo applicationInfo) {
        PackageInfo packageInfo = null;
        try {
            packageInfo = packageManager.getPackageInfo(applicationInfo.packageName, 8192);
        } catch (PackageManager.NameNotFoundException e) {
        }
        return packageInfo == null ? "" : packageInfo.versionName != null ? packageInfo.versionName : "" + packageInfo.versionCode;
    }

    private String[] d(String str) {
        int lastIndexOf = str.lastIndexOf("_");
        if (lastIndexOf > 0) {
            return new String[]{str.substring(0, lastIndexOf), str.substring(lastIndexOf + 1, str.indexOf(".apk"))};
        }
        return null;
    }

    public String a(PackageManager packageManager, ApplicationInfo applicationInfo) {
        return applicationInfo != null ? "_" + b(packageManager, applicationInfo) : "";
    }

    @Override // com.estrongs.fs.k, com.estrongs.fs.j
    public List<com.estrongs.fs.g> a(com.estrongs.fs.g gVar, h hVar, TypedMap typedMap) {
        HashMap<String, String> hashMap;
        List<com.estrongs.fs.g> a2;
        String substring = gVar.getPath().substring("app://".length());
        if ("backuped".equals(substring)) {
            return a();
        }
        if ("update".equals(substring) && (a2 = com.estrongs.android.pop.utils.c.a()) != null && a2.size() >= 1) {
            com.estrongs.android.pop.utils.c.b();
            return a(this.f3053a, a2);
        }
        String A = q.a(this.f3053a).A();
        PackageManager packageManager = this.f3053a.getPackageManager();
        List<ApplicationInfo> installedApplications = packageManager.getInstalledApplications(8192);
        com.estrongs.a.a currentTask = com.estrongs.a.a.getCurrentTask();
        String[] list = new File(A).list(new e(this));
        if (list != null) {
            hashMap = new HashMap<>(list.length);
            for (String str : list) {
                int lastIndexOf = str.lastIndexOf("_");
                if (lastIndexOf > 0) {
                    String substring2 = str.substring(0, lastIndexOf);
                    String substring3 = str.substring(lastIndexOf);
                    if (hashMap.get(substring2) == null) {
                        hashMap.put(substring2, substring3);
                    } else if (hashMap.get(substring2).compareTo(substring3) < 0) {
                        hashMap.put(substring2, substring3);
                    }
                }
            }
        } else {
            hashMap = null;
        }
        LinkedList linkedList = new LinkedList();
        for (ApplicationInfo applicationInfo : installedApplications) {
            if (currentTask != null && currentTask.taskStopped()) {
                return null;
            }
            c cVar = new c(applicationInfo.sourceDir, l.f3184b, y.a(packageManager, applicationInfo), applicationInfo);
            cVar.a(b(packageManager, applicationInfo));
            cVar.a(a(packageManager, applicationInfo, A, hashMap));
            linkedList.add(cVar);
        }
        return "update".equals(substring) ? a(this.f3053a, a(linkedList, "user")) : a(linkedList, substring);
    }

    public List<com.estrongs.fs.g> a(List<c> list, String str) {
        b aVar = p.a() >= 8 ? new a() : new b();
        if ("user".equals(str)) {
            aVar.f3050a = 2;
        } else if ("system".equals(str)) {
            aVar.f3050a = 1;
        } else if (BDAccountManager.KEY_PHONE.equals(str)) {
            aVar.f3050a = 3;
        } else if ("sdcard".equals(str)) {
            aVar.f3050a = 4;
        }
        LinkedList linkedList = new LinkedList();
        for (c cVar : list) {
            if (aVar.a(cVar)) {
                linkedList.add(cVar);
            }
        }
        return linkedList;
    }
}

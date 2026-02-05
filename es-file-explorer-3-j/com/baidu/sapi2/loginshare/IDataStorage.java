package com.baidu.sapi2.loginshare;

import org.json.JSONArray;

/* loaded from: classes.dex */
public interface IDataStorage {
    void close();

    boolean commit();

    JSONArray getJSONArray(String str);

    String getString(String str);

    void put(String str, String str2);

    void put(String str, JSONArray jSONArray);
}

package com.estrongs.android.util;

import java.util.Comparator;

/* loaded from: classes.dex */
final class al implements Comparator<String> {
    @Override // java.util.Comparator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(String str, String str2) {
        return str2.length() - str.length();
    }
}

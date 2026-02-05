package com.estrongs.android.ui.a;

import java.io.File;
import java.text.Collator;
import java.util.Comparator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class t implements Comparator<File> {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ s f1605a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(s sVar) {
        this.f1605a = sVar;
    }

    @Override // java.util.Comparator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(File file, File file2) {
        Collator collator;
        collator = this.f1605a.j;
        return collator.compare(file.getName(), file2.getName());
    }
}

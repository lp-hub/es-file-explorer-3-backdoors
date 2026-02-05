package com.estrongs.android.ui.b;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
public class ev extends ag {
    public ev(Context context, long j, long j2) {
        this(context, j, j2, null, null);
    }

    public ev(Context context, long j, long j2, String str, String str2) {
        super(context);
        View inflate = com.estrongs.android.pop.esclasses.e.a(context).inflate(C0000R.layout.space_not_enough_dialog, (ViewGroup) null);
        ((TextView) inflate.findViewById(C0000R.id.required_space)).setText(com.estrongs.fs.c.d.c(j));
        ((TextView) inflate.findViewById(C0000R.id.available_space)).setText(com.estrongs.fs.c.d.c(j2));
        if (str2 != null) {
            ((TextView) inflate.findViewById(C0000R.id.message)).setText(str2);
        }
        setContentView(inflate);
        if (str == null) {
            setTitle(C0000R.string.action_copy);
        } else {
            setTitle(str);
        }
    }
}

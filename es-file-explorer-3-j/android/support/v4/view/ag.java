package android.support.v4.view;

import android.content.Context;
import android.text.method.SingleLineTransformationMethod;
import android.view.View;
import java.util.Locale;

/* loaded from: classes.dex */
class ag extends SingleLineTransformationMethod {

    /* renamed from: a, reason: collision with root package name */
    private Locale f67a;

    public ag(Context context) {
        this.f67a = context.getResources().getConfiguration().locale;
    }

    @Override // android.text.method.ReplacementTransformationMethod, android.text.method.TransformationMethod
    public CharSequence getTransformation(CharSequence charSequence, View view) {
        CharSequence transformation = super.getTransformation(charSequence, view);
        if (transformation != null) {
            return transformation.toString().toUpperCase(this.f67a);
        }
        return null;
    }
}

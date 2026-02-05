package com.estrongs.android.pop.esclasses;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.ui.theme.al;
import com.estrongs.android.util.aj;
import java.io.InputStream;

/* loaded from: classes.dex */
public class i extends Resources {

    /* renamed from: a, reason: collision with root package name */
    private static i f1139a = null;

    /* renamed from: b, reason: collision with root package name */
    private static Resources f1140b = null;

    protected i(Resources resources) {
        super(resources.getAssets(), resources.getDisplayMetrics(), resources.getConfiguration());
        f1140b = resources;
        super.updateConfiguration(resources.getConfiguration(), resources.getDisplayMetrics());
        Object a2 = new aj(resources).a("getCompatibilityInfo");
        if (a2 != null) {
            new aj(this).a("setCompatibilityInfo", a2);
        }
    }

    public static synchronized i a(Resources resources) {
        i iVar;
        synchronized (i.class) {
            if (f1139a == null) {
                f1139a = new i(resources);
            }
            iVar = f1139a;
        }
        return iVar;
    }

    private boolean b(int i) {
        if (c.f1130a == null) {
            return false;
        }
        if (!c.f1130a.equalsIgnoreCase("it") && !c.f1130a.equalsIgnoreCase("tw") && !c.f1130a.equalsIgnoreCase("cn")) {
            return false;
        }
        String resourceEntryName = getResourceEntryName(i);
        return resourceEntryName.startsWith("help_") || resourceEntryName.equalsIgnoreCase("index");
    }

    public Drawable a(int i) {
        return super.getDrawable(i);
    }

    public InputStream a(int i, TypedValue typedValue) {
        return super.openRawResource(i, typedValue);
    }

    public void a() {
        if (f1140b != null) {
            updateConfiguration(f1140b.getConfiguration(), f1140b.getDisplayMetrics());
        }
    }

    @Override // android.content.res.Resources
    public Drawable getDrawable(int i) {
        return al.a(FexApplication.a()).a(i);
    }

    @Override // android.content.res.Resources
    public String getString(int i) {
        String b2 = c.b(i);
        if (b2 != null) {
            return b2;
        }
        String string = super.getString(i);
        return (string != null && com.estrongs.android.pop.m.E && c.a(i)) ? string.replaceAll("WLAN", "Wifi") : string;
    }

    @Override // android.content.res.Resources
    public String getString(int i, Object... objArr) {
        String b2 = c.b(i);
        if (b2 != null) {
            return String.format(b2, objArr);
        }
        String string = super.getString(i, objArr);
        return (string != null && com.estrongs.android.pop.m.E && c.a(i)) ? string.replaceAll("WLAN", "Wifi") : string;
    }

    @Override // android.content.res.Resources
    public String[] getStringArray(int i) {
        String[] c = c.c(i);
        return c == null ? super.getStringArray(i) : c;
    }

    @Override // android.content.res.Resources
    public CharSequence getText(int i) {
        String b2 = c.b(i);
        if (b2 != null) {
            return b2;
        }
        CharSequence text = super.getText(i);
        return (text != null && com.estrongs.android.pop.m.E && c.a(i)) ? text.toString().replaceAll("WLAN", "Wifi") : text;
    }

    @Override // android.content.res.Resources
    public CharSequence getText(int i, CharSequence charSequence) {
        String b2 = c.b(i);
        if (b2 != null) {
            return b2;
        }
        String str = (String) super.getText(i, charSequence);
        return (str != null && com.estrongs.android.pop.m.E && c.a(i)) ? str.replaceAll("WLAN", "Wifi") : str;
    }

    @Override // android.content.res.Resources
    public CharSequence[] getTextArray(int i) {
        CharSequence[] d = c.d(i);
        return d == null ? super.getTextArray(i) : d;
    }

    @Override // android.content.res.Resources
    public void getValue(int i, TypedValue typedValue, boolean z) {
        super.getValue(i, typedValue, z);
    }

    @Override // android.content.res.Resources
    public void getValue(String str, TypedValue typedValue, boolean z) {
        super.getValue(str, typedValue, z);
    }

    @Override // android.content.res.Resources
    public InputStream openRawResource(int i) {
        int identifier;
        if (b(i) && (identifier = getIdentifier(getResourceEntryName(i) + "_" + c.f1130a.toLowerCase(), "raw", getResourcePackageName(i))) != 0) {
            i = identifier;
        }
        return super.openRawResource(i);
    }

    @Override // android.content.res.Resources
    public InputStream openRawResource(int i, TypedValue typedValue) {
        return al.a(FexApplication.a()).a(i, typedValue);
    }
}

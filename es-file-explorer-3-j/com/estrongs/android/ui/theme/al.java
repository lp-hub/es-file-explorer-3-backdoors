package com.estrongs.android.ui.theme;

import android.R;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.TypedValue;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.io.File;
import java.io.InputStream;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class al {

    /* renamed from: a, reason: collision with root package name */
    private static al f2533a = null;

    /* renamed from: b, reason: collision with root package name */
    private Context f2534b;
    private Context c;
    private ai d;
    private List<ai> e;

    private al(Context context) {
        this.f2534b = context;
        this.c = context;
        b();
    }

    public static al a(Context context) {
        if (f2533a == null) {
            f2533a = new al(context);
        }
        return f2533a;
    }

    private boolean b(ai aiVar) {
        return aiVar.g >= 7;
    }

    public static void l() {
        if (f2533a != null) {
            f2533a.k();
        }
        f2533a = null;
    }

    private void m() {
        try {
            k();
            File filesDir = this.f2534b.getFilesDir();
            filesDir.mkdirs();
            if (filesDir.exists()) {
                File file = new File(filesDir.getAbsolutePath() + "/custom_background");
                if (file.exists()) {
                    file.delete();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public Drawable a(int i) {
        Drawable a2;
        try {
            a2 = c(e(i));
        } catch (Exception e) {
            if (this.f2534b == null) {
                this.f2534b = FexApplication.a();
            }
            Resources resources = this.f2534b.getResources();
            a2 = resources instanceof com.estrongs.android.pop.esclasses.i ? ((com.estrongs.android.pop.esclasses.i) resources).a(i) : resources.getDrawable(i);
        }
        if (a2 != null) {
            a2.setChangingConfigurations(a2.getChangingConfigurations() | 8);
        }
        return a2;
    }

    public Drawable a(int i, int i2) {
        return a(new am[]{new am(new int[]{R.attr.state_focused, R.attr.state_pressed}, i2), new am(new int[]{R.attr.state_pressed}, i2), new am(new int[]{R.attr.state_focused}, i2), new am(new int[0], i)});
    }

    public StateListDrawable a(am[] amVarArr) {
        StateListDrawable stateListDrawable = new StateListDrawable();
        for (am amVar : amVarArr) {
            stateListDrawable.addState(amVar.f2535a, a(amVar.f2536b));
        }
        return stateListDrawable;
    }

    public ai a() {
        return this.d;
    }

    public InputStream a(int i, TypedValue typedValue) {
        try {
            int identifier = this.c.getResources().getIdentifier(this.f2534b.getResources().getResourceEntryName(i), "drawable", this.c.getPackageName());
            return this.c.getResources() instanceof com.estrongs.android.pop.esclasses.i ? ((com.estrongs.android.pop.esclasses.i) this.c.getResources()).a(identifier, typedValue) : this.c.getResources().openRawResource(identifier, typedValue);
        } catch (Resources.NotFoundException e) {
            return this.f2534b.getResources() instanceof com.estrongs.android.pop.esclasses.i ? ((com.estrongs.android.pop.esclasses.i) this.f2534b.getResources()).a(i, typedValue) : this.f2534b.getResources().openRawResource(i, typedValue);
        }
    }

    public void a(ai aiVar) {
        this.c = aiVar.a(this.f2534b);
        if (this.d != null) {
            this.d.k();
        }
        this.d = aiVar;
        this.d.e();
    }

    public void a(List<ai> list) {
        if (list != null) {
            this.e = list;
        }
        if (this.e != null) {
            for (ai aiVar : this.e) {
                if (this.c.getPackageName().equals(aiVar.f2528b)) {
                    this.d = aiVar;
                    return;
                }
            }
        }
    }

    public boolean a(PackageInfo packageInfo) {
        ai aiVar;
        if (packageInfo == null) {
            return false;
        }
        String str = packageInfo.packageName;
        if (this.e != null) {
            Iterator<ai> it = this.e.iterator();
            while (it.hasNext()) {
                aiVar = it.next();
                if (str.equals(aiVar.f2528b)) {
                    break;
                }
            }
        }
        aiVar = null;
        if (aiVar == null) {
            aiVar = new ai();
            aiVar.f2528b = packageInfo.packageName;
            aiVar.g = packageInfo.versionCode;
        }
        a(aiVar);
        b(packageInfo.packageName);
        m();
        return true;
    }

    public boolean a(String str) {
        if (str == null) {
            return false;
        }
        return a(d(str));
    }

    public Drawable b(int i) {
        Bitmap decodeResource;
        try {
            decodeResource = BitmapFactory.decodeResource(this.c.getResources(), this.c.getResources().getIdentifier(e(i), "drawable", this.c.getPackageName()));
            if (decodeResource == null) {
                decodeResource = BitmapFactory.decodeResource(this.f2534b.getResources(), i);
            }
        } catch (Exception e) {
            decodeResource = BitmapFactory.decodeResource(this.f2534b.getResources(), i);
        }
        BitmapDrawable bitmapDrawable = new BitmapDrawable(decodeResource);
        bitmapDrawable.setTileModeXY(Shader.TileMode.REPEAT, Shader.TileMode.REPEAT);
        return bitmapDrawable;
    }

    public void b() {
        String N = com.estrongs.android.pop.q.a(this.f2534b).N();
        PackageInfo d = d(N);
        if (d != null) {
            ai aiVar = new ai();
            aiVar.f2528b = N;
            aiVar.g = d.versionCode;
            if (b(aiVar)) {
                a(aiVar);
            } else {
                a(this.f2534b.getPackageName());
            }
        } else {
            a(this.f2534b.getPackageName());
        }
        com.estrongs.android.d.d.a(com.estrongs.fs.l.f3183a.c(), j());
    }

    public void b(String str) {
        com.estrongs.android.pop.q.a(this.f2534b).o(str);
    }

    public Drawable c(int i) {
        Drawable a2 = a(i);
        if (a2 != null) {
            a2.setBounds(0, 0, a2.getIntrinsicWidth(), a2.getIntrinsicHeight());
        }
        return a2;
    }

    public Drawable c(String str) {
        int identifier = this.c.getResources().getIdentifier(str, "drawable", this.c.getPackageName());
        return this.c.getResources() instanceof com.estrongs.android.pop.esclasses.i ? ((com.estrongs.android.pop.esclasses.i) this.c.getResources()).a(identifier) : this.c.getResources().getDrawable(identifier);
    }

    public boolean c() {
        return (this.c instanceof FileExplorerActivity) || (this.c instanceof FexApplication);
    }

    public int d(int i) {
        if (i == 0) {
            return 0;
        }
        try {
            return this.c.getResources().getColor(this.c.getResources().getIdentifier(e(i), "color", this.c.getPackageName()));
        } catch (Resources.NotFoundException e) {
            return this.f2534b.getResources().getColor(i);
        }
    }

    public PackageInfo d(String str) {
        try {
            return this.f2534b.getPackageManager().getPackageInfo(str, 1);
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    public String d() {
        return this.c.getPackageName();
    }

    public int e() {
        if (this.e == null) {
            return 0;
        }
        for (int i = 0; i < this.e.size(); i++) {
            if (this.c.getPackageName().equals(this.e.get(i).f2528b)) {
                return i;
            }
        }
        return 0;
    }

    public String e(int i) {
        return this.f2534b.getResources().getResourceEntryName(i);
    }

    public List<ai> f() {
        return this.e;
    }

    public void f(int i) {
        this.d.a(this.f2534b, e(i), true);
    }

    public Drawable g() {
        Drawable h = this.d.h();
        return h != null ? h : a(C0000R.drawable.background);
    }

    public Drawable g(int i) {
        try {
            BitmapDrawable a2 = this.d.a(this.c, i);
            return a2 == null ? a(i) : a2;
        } catch (Exception e) {
            return a(C0000R.drawable.format_folder);
        }
    }

    public int h() {
        int i = this.d.i();
        return i != Integer.MIN_VALUE ? i : d(C0000R.color.main_content_text);
    }

    public int i() {
        int identifier;
        String g = this.d.g();
        return (g == null || (identifier = this.f2534b.getResources().getIdentifier(g, "drawable", this.f2534b.getPackageName())) == -1) ? C0000R.drawable.format_folder : identifier;
    }

    public Drawable j() {
        try {
            String g = this.d.g();
            return g != null ? c(g) : a(C0000R.drawable.format_folder);
        } catch (Exception e) {
            return a(C0000R.drawable.format_folder);
        }
    }

    public void k() {
        if (this.e != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= this.e.size()) {
                    break;
                }
                this.e.get(i2).k();
                i = i2 + 1;
            }
        }
        if (this.d != null) {
            this.d.k();
        }
    }
}

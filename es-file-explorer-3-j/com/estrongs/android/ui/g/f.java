package com.estrongs.android.ui.g;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.ui.theme.al;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class f extends PopupWindow implements View.OnKeyListener {

    /* renamed from: a, reason: collision with root package name */
    private Context f2225a;

    /* renamed from: b, reason: collision with root package name */
    private View f2226b;
    private View c;
    private Rect d;
    private String e;
    private Map<View, String> f;
    private Map<String, ImageView> g;
    private Map<String, Integer> h;
    private Map<String, Integer> i;
    private Map<String, Integer> j;
    private int k;
    private View l;

    public f(Context context, View view, View view2, String str) {
        super(context);
        this.e = "all";
        this.f = new HashMap();
        this.g = new HashMap();
        this.h = new HashMap();
        this.i = new HashMap();
        this.j = new HashMap();
        this.k = 6;
        this.f2225a = context;
        b(view2);
        a(view);
        c();
        if (str != null) {
            b(str);
        }
    }

    private void b(View view) {
        this.c = view;
    }

    private Rect c(View view) {
        if (this.d == null) {
            this.d = new Rect();
            int[] iArr = new int[2];
            view.getLocationInWindow(iArr);
            this.d = new Rect(iArr[0], iArr[1], iArr[0] + view.getMeasuredWidth(), iArr[1] + view.getMeasuredHeight());
        }
        return this.d;
    }

    private void c() {
        setWindowLayoutMode(0, 0);
        c(this.l);
        setWidth((this.d.right - this.d.left) - this.k);
        setAnimationStyle(C0000R.style.Animation_longclick_menu);
        View inflate = com.estrongs.android.pop.esclasses.e.a(this.f2225a).inflate(C0000R.layout.search_category, (ViewGroup) null);
        this.f2226b = inflate.findViewById(C0000R.id.content_mutiwindow);
        this.f2226b.measure(0, 0);
        setHeight(this.f2226b.getMeasuredHeight());
        setContentView(inflate);
        setBackgroundDrawable(this.f2225a.getResources().getDrawable(C0000R.drawable.blank));
        ImageView imageView = (ImageView) this.f2226b.findViewById(C0000R.id.muti_window_bg_left);
        ImageView imageView2 = (ImageView) this.f2226b.findViewById(C0000R.id.muti_window_bg_middle);
        ImageView imageView3 = (ImageView) this.f2226b.findViewById(C0000R.id.muti_window_bg_right);
        imageView.setBackgroundDrawable(this.f2225a.getResources().getDrawable(C0000R.drawable.search_category_bg_left));
        imageView2.setBackgroundDrawable(this.f2225a.getResources().getDrawable(C0000R.drawable.search_category_bg_middle));
        imageView3.setBackgroundDrawable(this.f2225a.getResources().getDrawable(C0000R.drawable.search_category_bg_right));
        ((RelativeLayout.LayoutParams) this.f2226b.getLayoutParams()).addRule(10, -1);
        g gVar = new g(this);
        LinearLayout linearLayout = (LinearLayout) this.f2226b.findViewById(C0000R.id.search_category_all_container);
        linearLayout.setOnClickListener(gVar);
        this.f.put(linearLayout, "all");
        this.g.put("all", (ImageView) linearLayout.findViewById(C0000R.id.search_category_all));
        this.h.put("all", Integer.valueOf(C0000R.drawable.search_category_all));
        this.i.put("all", Integer.valueOf(C0000R.drawable.search_category_all_click));
        this.j.put("all", Integer.valueOf(C0000R.drawable.search_all));
        LinearLayout linearLayout2 = (LinearLayout) this.f2226b.findViewById(C0000R.id.search_category_image_container);
        linearLayout2.setOnClickListener(gVar);
        this.f.put(linearLayout2, "image");
        this.g.put("image", (ImageView) linearLayout2.findViewById(C0000R.id.search_category_image));
        this.h.put("image", Integer.valueOf(C0000R.drawable.search_category_image));
        this.i.put("image", Integer.valueOf(C0000R.drawable.search_category_image_click));
        this.j.put("image", Integer.valueOf(C0000R.drawable.search_image));
        LinearLayout linearLayout3 = (LinearLayout) this.f2226b.findViewById(C0000R.id.search_category_music_container);
        linearLayout3.setOnClickListener(gVar);
        this.f.put(linearLayout3, "music");
        this.g.put("music", (ImageView) linearLayout3.findViewById(C0000R.id.search_category_music));
        this.h.put("music", Integer.valueOf(C0000R.drawable.search_category_music));
        this.i.put("music", Integer.valueOf(C0000R.drawable.search_category_music_click));
        this.j.put("music", Integer.valueOf(C0000R.drawable.search_music));
        LinearLayout linearLayout4 = (LinearLayout) this.f2226b.findViewById(C0000R.id.search_category_video_container);
        linearLayout4.setOnClickListener(gVar);
        this.f.put(linearLayout4, "video");
        this.g.put("video", (ImageView) linearLayout4.findViewById(C0000R.id.search_category_video));
        this.h.put("video", Integer.valueOf(C0000R.drawable.search_category_video));
        this.i.put("video", Integer.valueOf(C0000R.drawable.search_category_video_click));
        this.j.put("video", Integer.valueOf(C0000R.drawable.search_video));
        LinearLayout linearLayout5 = (LinearLayout) this.f2226b.findViewById(C0000R.id.search_category_apk_container);
        linearLayout5.setOnClickListener(gVar);
        this.f.put(linearLayout5, "apk");
        this.g.put("apk", (ImageView) linearLayout5.findViewById(C0000R.id.search_category_apk));
        this.h.put("apk", Integer.valueOf(C0000R.drawable.search_category_apk));
        this.i.put("apk", Integer.valueOf(C0000R.drawable.search_category_apk_click));
        this.j.put("apk", Integer.valueOf(C0000R.drawable.search_apk));
        LinearLayout linearLayout6 = (LinearLayout) this.f2226b.findViewById(C0000R.id.search_category_compressed_container);
        linearLayout6.setOnClickListener(gVar);
        this.f.put(linearLayout6, "compressed");
        this.g.put("compressed", (ImageView) linearLayout6.findViewById(C0000R.id.search_category_compressed));
        this.h.put("compressed", Integer.valueOf(C0000R.drawable.search_category_compressed));
        this.i.put("compressed", Integer.valueOf(C0000R.drawable.search_category_compressed_click));
        this.j.put("compressed", Integer.valueOf(C0000R.drawable.search_compressed));
        ((LinearLayout) this.f2226b.findViewById(C0000R.id.search_advanced)).setOnClickListener(new h(this));
        setFocusable(true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a() {
    }

    public void a(View view) {
        this.l = view;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(String str) {
    }

    public void b() {
        int[] iArr = new int[2];
        this.c.getLocationInWindow(iArr);
        int i = iArr[0];
        this.l.getLocationInWindow(iArr);
        int i2 = i - iArr[0];
        int width = i2 + ((this.c.getWidth() * 2) / 3);
        int intrinsicWidth = this.f2225a.getResources().getDrawable(C0000R.drawable.search_category_bg_middle).getIntrinsicWidth() / 2;
        ((ImageView) this.f2226b.findViewById(C0000R.id.muti_window_bg_left)).getLayoutParams().width = (width - intrinsicWidth) - (this.k / 2);
        showAsDropDown(this.c, -(i2 - (this.k / 2)), 12);
    }

    public void b(String str) {
        if (this.e != null) {
            this.g.get(this.e).setImageDrawable(al.a(this.f2225a).a(this.h.get(this.e).intValue()));
        }
        if (str == null) {
            str = "all";
        }
        this.e = str;
        this.g.get(this.e).setImageDrawable(al.a(this.f2225a).a(this.i.get(this.e).intValue()));
    }

    public Drawable c(String str) {
        al a2 = al.a(this.f2225a);
        Map<String, Integer> map = this.j;
        if (str == null) {
            str = "all";
        }
        return a2.a(map.get(str).intValue());
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (i != 4) {
            return false;
        }
        dismiss();
        return true;
    }
}

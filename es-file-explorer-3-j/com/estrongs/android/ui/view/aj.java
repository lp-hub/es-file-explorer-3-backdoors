package com.estrongs.android.ui.view;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.NinePatchDrawable;
import android.text.Layout;
import android.text.TextPaint;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
public class aj {

    /* renamed from: a */
    final /* synthetic */ IndicatorView f2603a;

    /* renamed from: b */
    private Drawable f2604b;
    private String c;
    private int d;
    private int e;
    private int f;
    private int g;
    private int h;
    private NinePatchDrawable i;
    private float j;

    public aj(IndicatorView indicatorView, com.estrongs.android.ui.d.d dVar) {
        this.f2603a = indicatorView;
        this.f = com.estrongs.android.ui.d.a.a(indicatorView.getContext(), 1.0f);
        this.g = com.estrongs.android.ui.d.a.a(indicatorView.getContext(), 2.0f);
        a(dVar);
    }

    private Drawable a(int i) {
        int i2;
        switch (i) {
            case 2:
                i2 = C0000R.drawable.indicator_icon_lan;
                break;
            case 3:
            case 14:
                i2 = C0000R.drawable.indicator_icon_ftp;
                break;
            case 4:
                i2 = C0000R.drawable.indicator_icon_device;
                break;
            case 5:
                i2 = C0000R.drawable.indicator_icon_net;
                break;
            case 6:
                i2 = C0000R.drawable.indicator_icon_picture;
                break;
            case 7:
                i2 = C0000R.drawable.indicator_icon_music;
                break;
            case 8:
                i2 = C0000R.drawable.indicator_icon_media;
                break;
            case 9:
                i2 = C0000R.drawable.indicator_icon_books;
                break;
            case 10:
                i2 = C0000R.drawable.indicator_icon_download;
                break;
            case 11:
                i2 = C0000R.drawable.indicator_icon_apk;
                break;
            case 12:
                i2 = C0000R.drawable.indicator_icon_pcs;
                break;
            case 13:
                i2 = C0000R.drawable.indicator_icon_diskusage;
                break;
            case 15:
                i2 = C0000R.drawable.indicator_icon_compress;
                break;
            case 16:
            case 17:
            case 18:
            case 19:
            case 22:
            default:
                i2 = C0000R.drawable.indicator_icon_phone;
                break;
            case 20:
                i2 = C0000R.drawable.indicator_icon_audio_playing;
                break;
            case 21:
                i2 = C0000R.drawable.indicator_icon_audio_playlist;
                break;
            case 23:
                i2 = C0000R.drawable.indicator_icon_recommend;
                break;
            case 24:
                i2 = C0000R.drawable.indicator_icon_recycle;
                break;
        }
        return this.f2603a.getContext().getResources().getDrawable(i2);
    }

    private String b(int i) {
        switch (i) {
            case -1:
                return this.f2603a.getContext().getString(C0000R.string.action_new);
            case 0:
            case 1:
            case 16:
            case 17:
            case 18:
            case 19:
            default:
                return this.f2603a.getContext().getString(C0000R.string.location_local);
            case 2:
                return this.f2603a.getContext().getString(C0000R.string.location_lan);
            case 3:
                return this.f2603a.getContext().getString(C0000R.string.location_ftp);
            case 4:
                return this.f2603a.getContext().getString(C0000R.string.location_device);
            case 5:
                return this.f2603a.getContext().getString(C0000R.string.location_cloud);
            case 6:
                return this.f2603a.getContext().getString(C0000R.string.category_picture);
            case 7:
                return this.f2603a.getContext().getString(C0000R.string.category_music);
            case 8:
                return this.f2603a.getContext().getString(C0000R.string.category_movie);
            case 9:
                return this.f2603a.getContext().getString(C0000R.string.category_book);
            case 10:
                return this.f2603a.getContext().getString(C0000R.string.app_download_manager);
            case 11:
                return this.f2603a.getContext().getString(C0000R.string.app_app_manager);
            case 12:
                return this.f2603a.getContext().getString(C0000R.string.category_pcs);
            case 13:
                return this.f2603a.getContext().getString(C0000R.string.diskusage_title);
            case 14:
                return this.f2603a.getContext().getString(C0000R.string.fast_access_remote);
            case 15:
                return this.f2603a.getContext().getString(C0000R.string.compression_manager);
            case 20:
                return this.f2603a.getContext().getString(C0000R.string.indicator_playing);
            case 21:
                return this.f2603a.getContext().getString(C0000R.string.indicator_playlist);
            case 22:
                return this.f2603a.getContext().getString(C0000R.string.indicator_web);
            case 23:
                return this.f2603a.getContext().getString(C0000R.string.recommend_title);
            case 24:
                return this.f2603a.getContext().getString(C0000R.string.recycle_title);
        }
    }

    public NinePatchDrawable g() {
        if (this.i == null) {
            this.i = (NinePatchDrawable) this.f2603a.getResources().getDrawable(C0000R.drawable.main_titlebar_current_bg);
            this.i.mutate();
        }
        return this.i;
    }

    public int a() {
        return (int) (this.h + ((this.f + this.e) * this.j));
    }

    public void a(float f) {
        this.j = f;
    }

    public void a(com.estrongs.android.ui.d.d dVar) {
        TextPaint g;
        this.f2604b = a(dVar.a());
        this.c = b(dVar.a());
        this.d = this.f2604b.getIntrinsicWidth();
        String str = this.c;
        g = this.f2603a.g();
        this.e = (int) Layout.getDesiredWidth(str, g);
        this.h = this.g + this.d + this.g;
    }

    public int b() {
        return this.g;
    }

    public int c() {
        return this.f;
    }

    public Drawable d() {
        int[] iArr;
        int[] iArr2;
        if (this.j > 0.0f) {
            Drawable drawable = this.f2604b;
            iArr2 = IndicatorView.f2576a;
            drawable.setState(iArr2);
        } else {
            Drawable drawable2 = this.f2604b;
            iArr = IndicatorView.f2577b;
            drawable2.setState(iArr);
        }
        return this.f2604b;
    }

    public boolean e() {
        return this.j > 0.0f;
    }

    public boolean f() {
        return this.j > 0.0f;
    }
}

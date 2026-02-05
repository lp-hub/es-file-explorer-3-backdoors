package com.estrongs.android.ui.d;

import android.content.Context;
import android.graphics.Bitmap;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.q;
import com.estrongs.android.util.ak;
import com.estrongs.android.util.aw;

/* loaded from: classes.dex */
public class d {

    /* renamed from: b, reason: collision with root package name */
    public static final d f1930b = new d("Null Window Info");

    /* renamed from: a, reason: collision with root package name */
    private Bitmap f1931a;
    private String c;

    public d(String str) {
        a(str);
    }

    public int a() {
        if (ak.aK(this.c)) {
            this.c = ak.aM(this.c);
        }
        if (this.c.equals("New")) {
            return -1;
        }
        if (ak.F(this.c)) {
            return 2;
        }
        if (ak.H(this.c) || ak.G(this.c) || ak.p(this.c) || ak.m(this.c)) {
            return 3;
        }
        if (ak.an(this.c)) {
            return 5;
        }
        if (ak.aJ(this.c)) {
            return 4;
        }
        if (ak.K(this.c)) {
            return 7;
        }
        if (ak.M(this.c)) {
            return 8;
        }
        if (ak.L(this.c) || ak.aC(this.c) || ak.au(this.c)) {
            return 6;
        }
        if (ak.N(this.c)) {
            return 9;
        }
        if (ak.O(this.c) || ak.Q(this.c)) {
            return 11;
        }
        if (ak.aq(this.c)) {
            return 12;
        }
        if (this.c != null && this.c.equals("download://")) {
            return 10;
        }
        if (ak.aE(this.c)) {
            return 15;
        }
        if (ak.s(this.c)) {
            return 13;
        }
        if (this.c.contains("m.baidu.com/app")) {
            return 23;
        }
        if (ak.u(this.c)) {
            return 22;
        }
        if ("remote://".equals(this.c)) {
            return 14;
        }
        return ak.bz(this.c) ? 24 : 0;
    }

    public String a(Context context) {
        return a(context, this.c);
    }

    public String a(Context context, String str) {
        String d = ak.d(str);
        if (ak.ao(str)) {
            d = ak.d(ak.bv(str));
        }
        if (str == null) {
            d = context.getString(C0000R.string.action_new);
        } else if ("/".equals(str)) {
            d = context.getString(C0000R.string.location_device_root);
        } else if (str.startsWith("search:")) {
            d = context.getString(C0000R.string.window_name_search);
        }
        if (ak.aC(str)) {
            d = context.getString(C0000R.string.location_local);
        } else if (ak.au(str)) {
            if (ak.at(str)) {
                d = context.getString(C0000R.string.image_explore_net);
            }
            if (!this.c.equals(str) && !ak.ax(str)) {
                if (ak.ag(str)) {
                    d = context.getString(C0000R.string.flickr);
                } else if (ak.ah(str)) {
                    d = context.getString(C0000R.string.instagram);
                } else if (ak.ai(str)) {
                    d = context.getString(C0000R.string.facebook);
                }
            }
        } else if (ak.Q(str)) {
            if (ak.S(str) || ak.R(str)) {
                d = context.getString(C0000R.string.app_manager_category_user);
            } else if (ak.T(str)) {
                d = context.getString(C0000R.string.app_manager_category_system);
            } else if (ak.U(str)) {
                d = context.getString(C0000R.string.app_manager_category_phone);
            } else if (ak.V(str)) {
                d = context.getString(C0000R.string.app_manager_category_sdcard);
            } else if (ak.W(str)) {
                d = context.getString(C0000R.string.app_manager_category_update);
            } else if (ak.X(str)) {
                d = context.getString(C0000R.string.app_manager_backup_backuped);
            }
        } else if (ak.O(str)) {
            d = context.getString(C0000R.string.app_manager_category_all_apk);
        } else if (this.c != null && this.c.startsWith("download://")) {
            d = context.getString(C0000R.string.app_download_manager);
        } else if (ak.aE(str)) {
            d = ak.aG(this.c) ? ak.d(ak.aF(this.c)) : ak.d(ak.aI(this.c));
        } else if (this.c != null && this.c.startsWith("du://")) {
            d = ak.d(this.c);
            if (aw.a((CharSequence) d)) {
                d = context.getString(C0000R.string.diskusage_title);
            }
        }
        if (d != null) {
            return d;
        }
        if ("smb://".equals(str)) {
            return context.getString(C0000R.string.location_lan);
        }
        if ("ftp://".equals(str)) {
            return context.getString(C0000R.string.location_ftp);
        }
        if ("bt://".equals(str)) {
            return context.getString(C0000R.string.location_device);
        }
        if ("net://".equals(str)) {
            return context.getString(C0000R.string.location_cloud);
        }
        if ("music://".equals(str)) {
            return context.getString(C0000R.string.category_music);
        }
        if ("pic://".equals(str)) {
            return context.getString(C0000R.string.location_local);
        }
        if ("video://".equals(str)) {
            return context.getString(C0000R.string.category_movie);
        }
        if ("book://".equals(str)) {
            return context.getString(C0000R.string.category_book);
        }
        if ("New".equals(str)) {
            return d;
        }
        if ("remote://".equals(str)) {
            return context.getString(C0000R.string.fast_access_remote);
        }
        if (str.startsWith("pcs://")) {
            if ("pcs://".endsWith(str)) {
                return context.getString(C0000R.string.category_pcs);
            }
            String a2 = ak.a(str, 23);
            return (a2 == null || a2.equals("/")) ? context.getString(C0000R.string.category_pcs) : d;
        }
        if ("recycle://".equals(str)) {
            return context.getString(C0000R.string.recycle_title);
        }
        String c = q.a(context).c(str);
        return c != null ? c : ak.aJ(str) ? ak.a(false, str) : (ak.aP(str) && d == null) ? ak.a(str) : d;
    }

    public void a(String str) {
        this.c = str;
    }

    public String b() {
        return this.c;
    }

    public String b(Context context) {
        int a2 = a();
        return a2 == 11 ? context.getString(C0000R.string.app_app_manager) : a2 == 15 ? context.getString(C0000R.string.compression_manager) : a2 == 4 ? context.getString(C0000R.string.location_device) : a2 == 10 ? context.getString(C0000R.string.app_download_manager) : a2 == 13 ? context.getString(C0000R.string.diskusage_title) : a2 == 3 ? context.getString(C0000R.string.location_ftp) : a2 == 2 ? context.getString(C0000R.string.location_lan) : a2 == 8 ? context.getString(C0000R.string.category_movie) : a2 == 7 ? context.getString(C0000R.string.category_music) : a2 == 5 ? context.getString(C0000R.string.location_cloud) : a2 == 12 ? context.getString(C0000R.string.category_pcs) : a2 == 6 ? context.getString(C0000R.string.category_picture) : a2 == 14 ? context.getString(C0000R.string.fast_access_remote) : a2 == 23 ? context.getString(C0000R.string.recommend_title) : a2 == 22 ? context.getString(C0000R.string.indicator_web) : a(context);
    }

    public Bitmap c() {
        return this.f1931a;
    }
}

package com.estrongs.android.ui.e;

import android.app.Activity;
import android.content.pm.ApplicationInfo;
import android.widget.LinearLayout;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class bz extends c {
    private String[] A;
    private String[] B;
    private String[] C;
    private String[] D;
    private String[] E;
    private String[] F;
    private String[] G;
    private String[] H;
    private String[] I;
    private String[] J;
    private String[] K;
    private String[] L;
    private String[] M;
    private String[] N;
    private String[] O;
    private String[] P;
    private String[] Q;
    private String[] R;
    private String[] S;
    private String[] T;
    private String[] U;
    private String[] V;
    private String[] W;
    private String[] X;
    private String[] Y;
    private String[] Z;
    private String[] aA;
    private String[] aB;
    private String[] aC;
    private String[] aD;
    private String[] aE;
    private String[] aF;
    private String[] aG;
    private String[] aH;
    private String[] aI;
    private String[] aJ;
    private String[] aK;
    private String[] aL;
    private String[] aM;
    private String[] aN;
    private boolean aO;
    private String[] aa;
    private String[] ab;
    private String[] ac;
    private String[] ad;
    private String[] ae;
    private String[] af;
    private String[] ag;
    private String[] ah;
    private String[] ai;
    private String[] aj;
    private String[] ak;
    private String[] al;
    private String[] am;
    private String[] an;
    private String[] ao;
    private String[] ap;
    private String[] aq;
    private String[] ar;
    private String[] as;
    private String[] at;
    private String[] au;
    private String[] av;
    private String[] aw;
    private String[] ax;
    private String[] ay;
    private String[] az;
    private com.estrongs.android.ui.view.az j;
    protected Map<String, com.estrongs.android.view.a.a> k;
    private FileExplorerActivity l;
    private int m;
    private String[] n;
    private String[] o;
    private String[] p;
    private String[] q;
    private String[] r;
    private String[] s;
    private String[] t;
    private String[] u;
    private String[] v;
    private String[] w;
    private String[] x;
    private String[] y;
    private String[] z;

    public bz(com.estrongs.android.ui.view.az azVar, Activity activity, boolean z, LinearLayout linearLayout) {
        super(activity, z);
        this.m = -1;
        this.aO = false;
        this.j = azVar;
        k();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.estrongs.a.a a(com.estrongs.fs.g gVar) {
        Object extra = gVar.getExtra("task");
        if (extra instanceof com.estrongs.a.a) {
            return (com.estrongs.a.a) extra;
        }
        return null;
    }

    public static void a(FileExplorerActivity fileExplorerActivity, boolean z, List<String> list) {
        com.estrongs.fs.b.m mVar = new com.estrongs.fs.b.m(com.estrongs.fs.d.a(fileExplorerActivity), 0, list, true);
        fileExplorerActivity.l();
        mVar.addTaskStatusChangeListener(new cm(fileExplorerActivity, com.estrongs.android.ui.b.de.a(fileExplorerActivity, fileExplorerActivity.getString(C0000R.string.msg_create_playlist), fileExplorerActivity.getString(C0000R.string.msg_search_songs), true, true, new ca(mVar, fileExplorerActivity)), mVar, z));
        mVar.execute();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(List<com.estrongs.fs.g> list, boolean z) {
        LinkedList linkedList = new LinkedList();
        LinkedList linkedList2 = new LinkedList();
        Iterator<com.estrongs.fs.g> it = list.iterator();
        while (it.hasNext()) {
            com.estrongs.a.a a2 = a(it.next());
            if (a2 != null) {
                if (a2 instanceof com.estrongs.fs.b.z) {
                    ((com.estrongs.fs.b.z) a2).f3032b = true;
                }
                a2.requestStop();
                if (z) {
                    String optString = a2.summary().optString("target");
                    if (a2 instanceof com.estrongs.fs.b.z) {
                        linkedList2.add(new com.estrongs.fs.n(optString, true));
                    } else {
                        linkedList.add(new com.estrongs.fs.n(optString, true));
                    }
                }
                com.estrongs.a.l.a().c(a2);
            }
        }
        this.l.l();
        com.estrongs.android.view.ar t = this.l.t();
        if (t != null) {
            t.g();
        }
        if (linkedList.size() > 0 || linkedList2.size() > 0) {
            new db(this, "Del Downloads", linkedList, linkedList2).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<com.estrongs.fs.g> l() {
        com.estrongs.android.view.ar t = this.l.t();
        return t != null ? t.x() : new LinkedList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String m() {
        return this.l.u();
    }

    private void n() {
        this.n = new String[]{"copy", "cut", "delete", "rename", "copy_to", "move_to", "property", "compression", "send", "add_to_favorite", "open_as", "share", "shortcut", "hide"};
        this.o = new String[]{"copy", "cut", "delete", "rename", "copy_to", "move_to", "property", "compression", "send", "add_to_favorite", "play", "playing", "shortcut", "hide"};
        this.p = new String[]{"copy", "cut", "delete", "rename", "copy_to", "move_to", "property", "open", "extract_to", "compression", "send", "add_to_favorite", "open_as", "install", "share", "shortcut", "hide"};
        this.q = new String[]{"copy", "cut", "delete", "rename", "copy_to", "move_to", "property", "compression", "send", "add_to_favorite", "open_as", "share", "shortcut", "hide"};
        this.r = new String[]{"copy", "cut", "delete", "rename", "copy_to", "move_to", "property", "compression", "send", "add_to_favorite", "open_as", "play", "playing", "share", "play_to", "shortcut", "hide"};
        this.s = new String[]{"copy", "cut", "delete", "rename", "copy_to", "move_to", "property", "compression", "send", "add_to_favorite", "open_as", "share", "play_to", "shortcut", "hide"};
        this.t = new String[]{"copy", "cut", "delete", "rename", "copy_to", "move_to", "property", "open", "extract_to", "compression", "send", "add_to_favorite", "open_as", "share", "shortcut", "hide"};
        this.u = new String[]{"copy", "cut", "delete", "rename", "copy_to", "move_to", "property", "compression", "send", "add_to_favorite", "open_as", "share", "shortcut", "hide"};
        this.v = new String[]{"copy", "cut", "delete", "rename", "copy_to", "move_to", "property", "compression", "send", "share", "hide"};
        this.w = new String[]{"copy", "cut", "delete", "rename", "copy_to", "move_to", "property", "compression", "send", "install", "share", "hide"};
        this.x = new String[]{"copy", "cut", "delete", "rename", "copy_to", "move_to", "property", "compression", "send", "play", "playing", "share", "hide"};
        this.y = new String[]{"copy", "cut", "delete", "rename", "copy_to", "move_to", "property", "compression", "send", "play", "playing", "hide"};
        this.z = new String[]{"copy", "cut", "delete", "rename", "copy_to", "move_to", "property", "send", "open_as", "share", "hide"};
        this.A = new String[]{"copy", "cut", "delete", "rename", "copy_to", "move_to", "property", "add_to_favorite", "play", "playing", "shortcut", "add_to_server_list", "hide"};
        this.B = new String[]{"copy", "cut", "delete", "rename", "copy_to", "move_to", "property", "send", "open_as", "install", "share", "hide"};
        this.C = new String[]{"copy", "cut", "delete", "rename", "copy_to", "move_to", "property", "send", "open_as", "share", "hide"};
        this.D = new String[]{"copy", "cut", "delete", "rename", "copy_to", "move_to", "property", "send", "open_as", "play", "playing", "share", "hide"};
        this.E = new String[]{"copy", "cut", "delete", "rename", "copy_to", "move_to", "property", "send", "open_as", "share", "hide"};
        this.F = new String[]{"copy", "cut", "delete", "rename", "copy_to", "move_to", "property", "send", "open_as", "share", "hide"};
        this.G = new String[]{"copy", "cut", "delete", "rename", "copy_to", "move_to", "property", "send", "open_as", "share", "hide"};
        this.J = new String[]{"copy", "cut", "delete", "rename", "copy_to", "move_to", "property", "install", "hide"};
        this.K = new String[]{"copy", "cut", "delete", "rename", "copy_to", "move_to", "property", "play", "playing", "hide"};
        this.I = new String[]{"copy", "cut", "delete", "rename", "copy_to", "move_to", "property", "hide"};
        this.L = new String[]{"copy", "cut", "delete", "rename", "copy_to", "move_to", "property", "play", "playing", "hide"};
        this.N = new String[]{"copy", "cut", "delete", "rename", "copy_to", "move_to", "property", "open_as"};
        this.O = new String[]{"copy", "cut", "delete", "rename", "copy_to", "move_to", "property"};
        this.P = new String[]{"copy", "cut", "delete", "rename", "copy_to", "move_to", "property", "open_as", "install"};
        this.Q = new String[]{"copy", "cut", "delete", "rename", "copy_to", "move_to", "property", "open_as"};
        this.R = new String[]{"copy", "cut", "delete", "rename", "copy_to", "move_to", "property", "open_as", "play", "playing"};
        this.S = new String[]{"copy", "cut", "delete", "rename", "copy_to", "move_to", "property", "open_as"};
        this.T = new String[]{"copy", "cut", "delete", "rename", "copy_to", "move_to", "property", "open_as"};
        this.U = new String[]{"copy", "cut", "delete", "rename", "copy_to", "move_to", "property", "open_as"};
        this.V = new String[]{"copy", "cut", "delete", "rename", "copy_to", "move_to", "property", "install"};
        this.W = new String[]{"copy", "cut", "delete", "rename", "copy_to", "move_to", "property"};
        this.X = new String[]{"copy", "cut", "delete", "rename", "copy_to", "move_to", "property", "play", "playing"};
        this.Y = new String[]{"copy", "cut", "delete", "rename", "copy_to", "move_to", "property", "play", "playing"};
        this.Z = new String[]{"copy", "cut", "delete", "rename", "copy_to", "move_to", "property", "send", "open_as", "share"};
        this.aa = new String[]{"copy", "cut", "delete", "rename", "copy_to", "move_to", "property", "add_to_favorite", "play", "playing"};
        this.ab = new String[]{"copy", "cut", "delete", "rename", "copy_to", "move_to", "property", "send", "open_as", "share"};
        this.ac = new String[]{"copy", "cut", "delete", "rename", "copy_to", "move_to", "property", "send", "open_as", "share"};
        this.ad = new String[]{"copy", "cut", "delete", "rename", "copy_to", "move_to", "property", "send", "open_as", "play", "playing", "share"};
        this.ae = new String[]{"copy", "cut", "delete", "rename", "copy_to", "move_to", "property", "send", "open_as", "share"};
        this.af = new String[]{"copy", "cut", "delete", "rename", "copy_to", "move_to", "property", "send", "open_as", "share"};
        this.ag = new String[]{"copy", "cut", "delete", "rename", "copy_to", "move_to", "property", "send", "open_as", "share"};
        this.ah = new String[]{"copy", "cut", "delete", "rename", "copy_to", "move_to", "property"};
        this.ai = new String[]{"copy", "cut", "delete", "rename", "copy_to", "move_to", "property"};
        this.aj = new String[]{"copy", "cut", "delete", "rename", "copy_to", "move_to", "property", "play", "playing"};
        this.ak = new String[]{"copy", "cut", "delete", "rename", "copy_to", "move_to", "property", "add_to_favorite", "play", "playing"};
        this.H = new String[]{"delete", "rename", "edit_server", "property"};
        this.M = new String[]{"delete", "rename", "edit_server", "property"};
        this.aH = new String[]{"copy", "cut", "delete", "rename", "copy_to", "move_to", "property", "send", "add_to_favorite", "open_as", "play", "playing", "share", "play_to", "shortcut"};
        this.aI = new String[]{"copy", "cut", "delete", "rename", "copy_to", "move_to", "property", "play", "playing", "share"};
        this.aJ = new String[]{"copy", "cut", "delete", "rename", "copy_to", "move_to", "property", "send", "add_to_favorite", "open_as", "share", "play_to", "shortcut"};
        this.aK = new String[]{"copy", "cut", "delete", "rename", "copy_to", "move_to", "property", "share"};
        this.aL = new String[]{"copy", "cut", "delete", "rename", "copy_to", "move_to", "property", "send", "add_to_favorite", "open_as", "share", "shortcut"};
        this.aM = new String[]{"copy", "cut", "delete", "rename", "copy_to", "move_to", "property", "share"};
        this.al = new String[]{"app_uninstall", "app_backup", "app_share", "app_send", "app_shortcut", "app_property"};
        this.am = new String[]{"app_uninstall", "app_backup", "app_share", "app_send", "app_shortcut"};
        this.an = new String[]{"app_auto_check_update", "app_update"};
        this.ao = new String[]{"copy", "cut", "delete", "copy_to", "move_to", "app_property", "send", "open", "extract_to", "open_as", "install", "share"};
        this.ap = new String[]{"copy", "cut", "delete", "copy_to", "move_to", "app_property", "install", "share"};
        this.aq = new String[]{"copy", "cut", "delete", "rename", "copy_to", "move_to", "property", "open", "extract_to", "send", "add_to_favorite", "open_as", "install", "share", "shortcut"};
        this.ar = new String[]{"copy", "cut", "delete", "rename", "copy_to", "move_to", "property", "install", "share"};
        this.as = new String[]{"download_open_folder", "download_delete", "download_do_again", "download_property"};
        this.at = new String[]{"download_delete", "download_do_again"};
        this.au = new String[]{"compression_extract"};
        this.av = new String[]{"delete"};
        this.aw = new String[]{"copy_to", "image_jump_to", "delete", "rename", "move_to", "share", "property", "send", "add_to_favorite", "open_as"};
        this.ax = new String[]{"copy_to", "image_jump_to", "delete", "move_to", "property"};
        this.ay = new String[]{"copy_to", "image_jump_to", "delete", "rename", "move_to", "share", "property", "send"};
        this.az = new String[]{"copy_to", "image_jump_to", "delete", "move_to", "property"};
        this.aA = new String[]{"delete", "rename", "image_download", "share"};
        this.aB = new String[]{"delete", "rename", "image_download", "share"};
        this.aC = new String[]{"delete", "image_comment", "image_edit", "image_download", "share", "property"};
        this.aD = new String[]{"delete", "image_comment", "image_edit", "image_download", "property"};
        this.aE = new String[]{"image_exit_account"};
        this.aF = new String[]{"delete", "image_download", "share"};
        this.aG = new String[]{"delete", "image_download"};
        this.aN = new String[]{"delete", "restore", "property"};
        if (com.estrongs.android.ui.pcs.cl.a(this.f1968b)) {
            this.n = a(this.n, "pcs_backup", 9);
            this.p = a(this.p, "pcs_backup", 11);
            this.r = a(this.r, "pcs_backup", 9);
            this.s = a(this.s, "pcs_backup", 9);
            this.q = a(this.q, "pcs_backup", 10);
            this.t = a(this.t, "pcs_backup", 11);
            this.u = a(this.u, "pcs_backup", 9);
            this.o = a(this.o, "pcs_backup", 9);
            this.w = a(this.w, "pcs_backup", 9);
            this.x = a(this.x, "pcs_backup", 9);
            this.v = a(this.v, "pcs_backup", 9);
            this.y = a(this.y, "pcs_backup", 9);
            this.D = a(this.D, "pcs_backup", 8);
            this.B = a(this.B, "pcs_backup", 8);
            this.A = a(this.A, "pcs_backup", 7);
            this.E = a(this.E, "pcs_backup", 8);
            this.z = a(this.z, "pcs_backup", 8);
            this.G = a(this.G, "pcs_backup", 8);
            this.C = a(this.C, "pcs_backup", 9);
            this.F = a(this.F, "pcs_backup", 8);
            this.J = a(this.J, "pcs_backup", 7);
            this.K = a(this.K, "pcs_backup", 7);
            this.I = a(this.I, "pcs_backup", 7);
            this.L = a(this.L, "pcs_backup", 7);
            this.O = a(this.O, "pcs_backup", 7);
            this.P = a(this.P, "pcs_backup", 7);
            this.N = a(this.N, "pcs_backup", 7);
            this.R = a(this.R, "pcs_backup", 7);
            this.U = a(this.U, "pcs_backup", 7);
            this.Q = a(this.Q, "pcs_backup", 8);
            this.S = a(this.S, "pcs_backup", 7);
            this.T = a(this.T, "pcs_backup", 7);
            this.V = a(this.V, "pcs_backup", 7);
            this.X = a(this.X, "pcs_backup", 7);
            this.W = a(this.W, "pcs_backup", 7);
            this.Y = a(this.Y, "pcs_backup", 7);
            this.aH = a(this.aH, "pcs_backup", 8);
            this.aI = a(this.aI, "pcs_backup", 7);
            this.aJ = a(this.aJ, "pcs_backup", 8);
            this.aK = a(this.aK, "pcs_backup", 8);
            this.aL = a(this.aL, "pcs_backup", 8);
            this.aM = a(this.aM, "pcs_backup", 7);
            this.ao = a(this.ao, "pcs_backup", 9);
            this.ap = a(this.ap, "pcs_backup", 7);
            this.aq = a(this.aq, "pcs_backup", 10);
            this.ar = a(this.ar, "pcs_backup", 7);
            this.al = a(this.al, "app_check_update", 6);
            this.am = a(this.am, "app_check_update", 5);
        }
        if (com.estrongs.android.pop.m.q) {
            this.p = a(this.p, "compression");
            this.r = a(this.r, "compression");
            this.u = a(this.u, "compression");
            this.n = a(this.n, "compression");
            this.o = a(this.o, "compression");
            this.q = a(this.q, "compression");
            this.s = a(this.s, "compression");
            this.t = a(this.t, "compression");
            this.p = a(this.p, "compression_extract");
            this.t = a(this.t, "compression_extract");
            this.w = a(this.w, "compression");
            this.x = a(this.x, "compression");
            this.v = a(this.v, "compression");
            this.y = a(this.y, "compression");
        }
        if (com.estrongs.android.pop.m.p) {
            this.p = a(this.p, "extract_to");
            this.t = a(this.t, "extract_to");
        }
        if (com.estrongs.android.pop.m.n) {
            this.o = a(this.o, "play");
            this.r = a(this.r, "play");
            this.x = a(this.x, "play");
            this.y = a(this.y, "play");
            this.A = a(this.A, "play");
            this.D = a(this.D, "play");
            this.K = a(this.K, "play");
            this.L = a(this.L, "play");
            this.R = a(this.R, "play");
            this.X = a(this.X, "play");
            this.Y = a(this.Y, "play");
            this.aa = a(this.aa, "play");
            this.ad = a(this.ad, "play");
            this.aj = a(this.aj, "play");
            this.ak = a(this.ak, "play");
            this.aH = a(this.aH, "play");
            this.aI = a(this.aI, "play");
            this.o = a(this.o, "playing");
            this.r = a(this.r, "playing");
            this.x = a(this.x, "playing");
            this.y = a(this.y, "playing");
            this.A = a(this.A, "playing");
            this.D = a(this.D, "playing");
            this.K = a(this.K, "playing");
            this.L = a(this.L, "playing");
            this.R = a(this.R, "playing");
            this.X = a(this.X, "playing");
            this.Y = a(this.Y, "playing");
            this.aa = a(this.aa, "playing");
            this.ad = a(this.ad, "playing");
            this.aj = a(this.aj, "playing");
            this.ak = a(this.ak, "playing");
            this.aH = a(this.aH, "playing");
            this.aI = a(this.aI, "playing");
        }
        if (com.estrongs.android.pop.m.U) {
            this.n = a(this.n, "hide");
            this.o = a(this.o, "hide");
            this.p = a(this.p, "hide");
            this.q = a(this.q, "hide");
            this.r = a(this.r, "hide");
            this.s = a(this.s, "hide");
            this.t = a(this.t, "hide");
            this.u = a(this.u, "hide");
            this.v = a(this.v, "hide");
            this.w = a(this.w, "hide");
            this.x = a(this.x, "hide");
            this.y = a(this.y, "hide");
            this.z = a(this.z, "hide");
            this.A = a(this.A, "hide");
            this.B = a(this.B, "hide");
            this.C = a(this.C, "hide");
            this.D = a(this.D, "hide");
            this.E = a(this.E, "hide");
            this.F = a(this.F, "hide");
            this.G = a(this.G, "hide");
            this.J = a(this.J, "hide");
            this.K = a(this.K, "hide");
            this.I = a(this.I, "hide");
            this.L = a(this.L, "hide");
        }
        if (com.estrongs.android.pop.m.Y) {
            this.n = a(this.n, "shortcut");
            this.o = a(this.o, "shortcut");
            this.p = a(this.p, "shortcut");
            this.q = a(this.q, "shortcut");
            this.r = a(this.r, "shortcut");
            this.s = a(this.s, "shortcut");
            this.t = a(this.t, "shortcut");
            this.u = a(this.u, "shortcut");
            this.A = a(this.A, "shortcut");
            this.aH = a(this.aH, "shortcut");
            this.aJ = a(this.aJ, "shortcut");
            this.aL = a(this.aL, "shortcut");
            this.aq = a(this.aq, "shortcut");
            this.al = a(this.al, "app_shortcut");
            this.am = a(this.am, "app_shortcut");
        }
    }

    public void d(int i) {
        boolean z;
        boolean z2;
        String[] strArr;
        String[] strArr2;
        String[] strArr3;
        boolean z3 = true;
        this.m = i;
        String u = this.l.u();
        switch (this.m) {
            case 1:
            case 9:
                if (com.estrongs.android.util.ak.r(u)) {
                    strArr3 = this.as;
                } else if (com.estrongs.android.util.ak.X(u)) {
                    strArr3 = this.ao;
                } else if (com.estrongs.android.util.ak.Q(u)) {
                    strArr3 = this.al;
                } else if (com.estrongs.android.util.ak.O(u)) {
                    strArr3 = this.aq;
                } else if (com.estrongs.android.util.ak.aE(u)) {
                    strArr3 = this.au;
                } else if (com.estrongs.android.util.ak.s(u)) {
                    strArr3 = this.av;
                } else if (com.estrongs.android.util.ak.aC(u)) {
                    strArr3 = this.aw;
                } else if (com.estrongs.android.util.ak.aj(u)) {
                    strArr3 = this.aA;
                } else if (com.estrongs.android.util.ak.au(u)) {
                    strArr3 = this.aC;
                    if (com.estrongs.android.util.ak.av(u) || com.estrongs.android.util.ak.ai(u)) {
                        strArr3 = a(a(strArr3, "delete"), "image_edit");
                    }
                } else {
                    strArr3 = com.estrongs.android.util.ak.K(u) ? this.aH : com.estrongs.android.util.ak.M(u) ? this.aJ : com.estrongs.android.util.ak.N(u) ? this.aL : com.estrongs.android.util.ak.aU(u) ? this.H : com.estrongs.android.util.ak.aJ(u) ? this.N : (com.estrongs.android.util.ak.aq(u) || com.estrongs.android.util.ak.ao(u)) ? this.Z : com.estrongs.android.util.ak.aP(u) ? this.z : com.estrongs.android.util.ak.bz(u) ? this.aN : this.n;
                }
                if (strArr3.length > 5) {
                    strArr3 = new String[]{strArr3[0], strArr3[1], strArr3[2], strArr3[3], "extra"};
                }
                a(strArr3);
                b(strArr3);
                return;
            case 2:
                com.estrongs.fs.g gVar = l().get(0);
                if (com.estrongs.android.util.ak.r(u)) {
                    a(this.as);
                    return;
                }
                if (com.estrongs.android.util.ak.X(u)) {
                    a(this.ao);
                    return;
                }
                if (com.estrongs.android.util.ak.Q(u)) {
                    if (com.estrongs.android.util.ak.W(u)) {
                        a(this.an);
                        return;
                    }
                    String[] strArr4 = this.al;
                    if (gVar instanceof com.estrongs.fs.impl.b.c) {
                        ApplicationInfo c = ((com.estrongs.fs.impl.b.c) gVar).c();
                        if ((c.flags & 128) == 0 && (c.flags & 1) != 0) {
                            strArr2 = a(strArr4, "app_check_update");
                            a(strArr2);
                            return;
                        }
                    }
                    strArr2 = strArr4;
                    a(strArr2);
                    return;
                }
                if (com.estrongs.android.util.ak.O(u)) {
                    a(this.aq);
                    return;
                }
                if (com.estrongs.android.util.ak.aE(u)) {
                    a(this.au);
                    return;
                }
                if (com.estrongs.android.util.ak.s(u)) {
                    a(this.av);
                    return;
                }
                if (com.estrongs.android.util.ak.aC(u)) {
                    a(this.aw);
                    return;
                }
                if (com.estrongs.android.util.ak.aj(u)) {
                    a(this.aA);
                    return;
                }
                if (com.estrongs.android.util.ak.au(u)) {
                    String[] strArr5 = this.aC;
                    if (com.estrongs.android.util.ak.av(u) || com.estrongs.android.util.ak.ai(u)) {
                        strArr5 = a(a(strArr5, "delete"), "image_edit");
                    }
                    a(strArr5);
                    return;
                }
                if (com.estrongs.android.util.ak.K(u)) {
                    a(this.aH);
                    return;
                }
                if (com.estrongs.android.util.ak.M(u)) {
                    a(this.aJ);
                    return;
                }
                if (com.estrongs.android.util.ak.N(u)) {
                    a(this.aL);
                    return;
                }
                if (com.estrongs.android.util.ak.aJ(u)) {
                    if (com.estrongs.android.util.av.G(gVar.getAbsolutePath())) {
                        a(this.P);
                        return;
                    }
                    if (com.estrongs.fs.b.m.a(gVar.getAbsolutePath())) {
                        a(this.R);
                        return;
                    }
                    if (com.estrongs.android.util.av.I(gVar.getAbsolutePath())) {
                        a(this.T);
                        return;
                    }
                    if (com.estrongs.android.util.av.f(gVar.getAbsolutePath())) {
                        a(this.S);
                        return;
                    }
                    if (com.estrongs.android.util.av.b(gVar.getAbsolutePath())) {
                        a(this.Q);
                        return;
                    } else if (com.estrongs.android.util.av.K(gVar.getAbsolutePath())) {
                        a(this.U);
                        return;
                    } else {
                        a(this.N);
                        return;
                    }
                }
                if (com.estrongs.android.util.ak.aq(u) || com.estrongs.android.util.ak.ao(u)) {
                    String[] strArr6 = com.estrongs.android.util.av.G(gVar.getAbsolutePath()) ? this.ab : com.estrongs.fs.b.m.a(gVar.getAbsolutePath()) ? this.ad : com.estrongs.android.util.av.I(gVar.getAbsolutePath()) ? this.af : com.estrongs.android.util.av.f(gVar.getAbsolutePath()) ? this.ae : com.estrongs.android.util.av.b(gVar.getAbsolutePath()) ? this.ac : com.estrongs.android.util.av.K(gVar.getAbsolutePath()) ? this.ag : this.Z;
                    if (com.estrongs.fs.c.d.c(gVar)) {
                        strArr6 = a(strArr6, "pcs_stop_share", strArr6.length - 1);
                    }
                    a(strArr6);
                    return;
                }
                if (com.estrongs.android.util.ak.aP(u)) {
                    String[] strArr7 = com.estrongs.android.util.av.G(gVar.getAbsolutePath()) ? this.B : com.estrongs.fs.b.m.a(gVar.getAbsolutePath()) ? this.D : com.estrongs.android.util.av.I(gVar.getAbsolutePath()) ? this.F : com.estrongs.android.util.av.f(gVar.getAbsolutePath()) ? this.E : com.estrongs.android.util.av.b(gVar.getAbsolutePath()) ? this.C : com.estrongs.android.util.av.K(gVar.getAbsolutePath()) ? this.G : this.z;
                    if (com.estrongs.fs.c.d.c(gVar)) {
                        strArr7 = a(strArr7, "stop_share", strArr7.length - 1);
                    }
                    a(strArr7);
                    return;
                }
                if (com.estrongs.android.util.ak.bz(u)) {
                    a(this.aN);
                    return;
                }
                if (com.estrongs.fs.b.m.a(gVar.getAbsolutePath())) {
                    a(this.r);
                    return;
                }
                if (com.estrongs.android.util.av.G(gVar.getAbsolutePath())) {
                    a(this.p);
                    return;
                }
                if (com.estrongs.android.util.av.I(gVar.getAbsolutePath())) {
                    a(this.t);
                    return;
                }
                if (com.estrongs.android.util.av.f(gVar.getAbsolutePath())) {
                    a(this.s);
                    return;
                }
                if (com.estrongs.android.util.av.b(gVar.getAbsolutePath())) {
                    a(this.q);
                    return;
                } else if (com.estrongs.android.util.av.K(gVar.getAbsolutePath())) {
                    a(this.u);
                    return;
                } else {
                    a(this.n);
                    return;
                }
            case 3:
                List<com.estrongs.fs.g> l = l();
                Iterator<com.estrongs.fs.g> it = l.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z = true;
                    } else if (!com.estrongs.android.util.av.G(it.next().getAbsolutePath())) {
                        z = false;
                    }
                }
                Iterator<com.estrongs.fs.g> it2 = l.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        z2 = false;
                    } else if (com.estrongs.fs.b.m.a(it2.next().getAbsolutePath())) {
                        z2 = true;
                    }
                }
                if (com.estrongs.android.util.ak.r(u)) {
                    a(this.at);
                    return;
                }
                if (com.estrongs.android.util.ak.X(u)) {
                    a(this.ap);
                    return;
                }
                if (com.estrongs.android.util.ak.Q(u)) {
                    if (com.estrongs.android.util.ak.W(u)) {
                        a(this.an);
                        return;
                    }
                    String[] strArr8 = this.am;
                    if (l.get(0) instanceof com.estrongs.fs.impl.b.c) {
                        Iterator<com.estrongs.fs.g> it3 = l.iterator();
                        while (true) {
                            if (it3.hasNext()) {
                                ApplicationInfo c2 = ((com.estrongs.fs.impl.b.c) it3.next()).c();
                                if ((c2.flags & 128) != 0 || (c2.flags & 1) == 0) {
                                }
                            } else {
                                z3 = false;
                            }
                        }
                        if (z3) {
                            strArr = a(strArr8, "app_check_update");
                            a(strArr);
                            return;
                        }
                    }
                    strArr = strArr8;
                    a(strArr);
                    return;
                }
                if (com.estrongs.android.util.ak.O(u)) {
                    a(this.ar);
                    b("rename");
                    return;
                }
                if (com.estrongs.android.util.ak.aE(u)) {
                    a(this.au);
                    return;
                }
                if (com.estrongs.android.util.ak.s(u)) {
                    a(this.av);
                    return;
                }
                if (com.estrongs.android.util.ak.aC(u)) {
                    a(this.ay);
                    b("image_jump_to");
                    return;
                }
                if (com.estrongs.android.util.ak.L(u)) {
                    a(this.v);
                    b("rename");
                    return;
                }
                if (com.estrongs.android.util.ak.aj(u)) {
                    a(this.aB);
                    return;
                }
                if (com.estrongs.android.util.ak.au(u)) {
                    String[] strArr9 = this.aF;
                    if (com.estrongs.android.util.ak.av(u) || com.estrongs.android.util.ak.ai(u)) {
                        strArr9 = a(strArr9, "delete");
                    }
                    a(strArr9);
                    return;
                }
                if (com.estrongs.android.util.ak.K(u)) {
                    a(this.aI);
                    b("rename");
                    return;
                }
                if (com.estrongs.android.util.ak.M(u)) {
                    a(this.aK);
                    b("rename");
                    return;
                }
                if (com.estrongs.android.util.ak.N(u)) {
                    a(this.aM);
                    b("rename");
                    return;
                }
                if (com.estrongs.android.util.ak.aJ(u)) {
                    if (z) {
                        a(this.V);
                        return;
                    } else if (z2) {
                        a(this.X);
                        return;
                    } else {
                        a(this.W);
                        return;
                    }
                }
                if (com.estrongs.android.util.ak.aq(u) || com.estrongs.android.util.ak.ao(u)) {
                    if (z) {
                        a(this.ah);
                        return;
                    } else if (z2) {
                        a(this.aj);
                        return;
                    } else {
                        a(this.ai);
                        return;
                    }
                }
                if (com.estrongs.android.util.ak.aP(u)) {
                    if (z) {
                        a(this.J);
                        return;
                    } else if (z2) {
                        a(this.K);
                        return;
                    } else {
                        a(this.I);
                        return;
                    }
                }
                if (com.estrongs.android.util.ak.bz(u)) {
                    a(this.aN);
                    return;
                }
                if (z) {
                    a(this.w);
                } else if (z2) {
                    a(this.x);
                } else {
                    a(this.v);
                }
                if (com.estrongs.android.util.ak.aK(u)) {
                    b("rename");
                    return;
                }
                return;
            case 4:
            case 7:
            case 8:
            default:
                return;
            case 5:
                if (com.estrongs.android.util.ak.r(u)) {
                    a(this.as);
                    return;
                }
                if (com.estrongs.android.util.ak.Q(u)) {
                    a(this.al);
                    return;
                }
                if (com.estrongs.android.util.ak.aE(u)) {
                    a(this.au);
                    return;
                }
                if (com.estrongs.android.util.ak.s(u)) {
                    a(this.av);
                    return;
                }
                if (com.estrongs.android.util.ak.aC(u)) {
                    a(this.ax);
                    return;
                }
                if (com.estrongs.android.util.ak.aj(u)) {
                    a(this.aA);
                    return;
                }
                if (com.estrongs.android.util.ak.au(u)) {
                    String[] strArr10 = this.aD;
                    if (com.estrongs.android.util.ak.av(u) || com.estrongs.android.util.ak.ai(u)) {
                        strArr10 = a(a(strArr10, "delete"), "image_edit");
                    }
                    a(strArr10);
                    return;
                }
                if (com.estrongs.android.util.ak.aJ(u)) {
                    a(this.O);
                    return;
                }
                if (com.estrongs.android.util.ak.aq(u) || com.estrongs.android.util.ak.ao(u)) {
                    a(this.aa);
                    return;
                }
                if (com.estrongs.android.util.ak.aP(u)) {
                    a(this.A);
                    return;
                }
                if (com.estrongs.android.util.ak.bz(u)) {
                    a(this.aN);
                    return;
                }
                a(this.o);
                if (l().contains(com.estrongs.fs.impl.pcs.b.a())) {
                    b(this.o[0], this.o[1], this.o[3], "extra");
                    return;
                }
                return;
            case 6:
                if (com.estrongs.android.util.ak.r(u)) {
                    a(this.at);
                    return;
                }
                if (com.estrongs.android.util.ak.Q(u)) {
                    a(this.am);
                    return;
                }
                if (com.estrongs.android.util.ak.aE(u)) {
                    a(this.au);
                    return;
                }
                if (com.estrongs.android.util.ak.s(u)) {
                    a(this.av);
                    return;
                }
                if (com.estrongs.android.util.ak.aC(u)) {
                    a(this.az);
                    b("image_jump_to", "property");
                    return;
                }
                if (com.estrongs.android.util.ak.aj(u)) {
                    a(this.aB);
                    return;
                }
                if (com.estrongs.android.util.ak.au(u)) {
                    String[] strArr11 = this.aG;
                    if (com.estrongs.android.util.ak.av(u) || com.estrongs.android.util.ak.ai(u)) {
                        strArr11 = a(strArr11, "delete");
                    }
                    a(strArr11);
                    return;
                }
                if (com.estrongs.android.util.ak.aJ(u)) {
                    a(this.Y);
                    return;
                }
                if (com.estrongs.android.util.ak.aq(u) || com.estrongs.android.util.ak.ao(u)) {
                    a(this.ak);
                    return;
                }
                if (com.estrongs.android.util.ak.aP(u)) {
                    a(this.L);
                    return;
                }
                if (com.estrongs.android.util.ak.bz(u)) {
                    a(this.aN);
                    return;
                }
                a(this.y);
                if (l().contains(com.estrongs.fs.impl.pcs.b.a())) {
                    b(this.y[0], this.y[1], this.y[3], "extra");
                    return;
                } else {
                    if (com.estrongs.android.util.ak.aK(u)) {
                        b("rename");
                        return;
                    }
                    return;
                }
            case 10:
                if (com.estrongs.android.util.ak.at(u)) {
                    a(this.aE);
                    return;
                } else {
                    a(this.H);
                    return;
                }
            case 11:
                if (com.estrongs.android.util.ak.at(u)) {
                    a(this.aE);
                    return;
                } else {
                    a(this.M);
                    b("edit_server", "property");
                    return;
                }
        }
    }

    @Override // com.estrongs.android.ui.e.c
    protected void h() {
        if (!(this.f1968b instanceof FileExplorerActivity)) {
            throw new IllegalArgumentException("Need FileExplorerActivity as the first argument");
        }
        this.l = (FileExplorerActivity) this.f1968b;
        this.k = new HashMap();
        com.estrongs.android.view.a.a onMenuItemClickListener = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_edit_copy, this.f1968b.getString(C0000R.string.action_copy)).setOnMenuItemClickListener(new Cdo(this));
        com.estrongs.android.view.a.a onMenuItemClickListener2 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_edit_copyto, this.l.getString(C0000R.string.action_copy_to)).setOnMenuItemClickListener(new eh(this));
        com.estrongs.android.view.a.a onMenuItemClickListener3 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_edit_cut, this.f1968b.getString(C0000R.string.action_cut)).setOnMenuItemClickListener(new ek(this));
        com.estrongs.android.view.a.a onMenuItemClickListener4 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_edit_moveto, this.f1968b.getString(C0000R.string.action_move_to)).setOnMenuItemClickListener(new el(this));
        com.estrongs.android.view.a.a onMenuItemClickListener5 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_edit_delete, this.f1968b.getString(C0000R.string.action_delete)).setOnMenuItemClickListener(new en(this));
        com.estrongs.android.view.a.a onMenuItemClickListener6 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_edit_rename, this.f1968b.getString(C0000R.string.action_rename)).setOnMenuItemClickListener(new eq(this));
        com.estrongs.android.view.a.a onMenuItemClickListener7 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_edit_share, this.f1968b.getString(C0000R.string.action_share)).setOnMenuItemClickListener(new cc(this));
        com.estrongs.android.view.a.a onMenuItemClickListener8 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_edit_compression, this.f1968b.getString(C0000R.string.action_compress)).setOnMenuItemClickListener(new cd(this));
        com.estrongs.android.view.a.a onMenuItemClickListener9 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_edit_shortcuts, this.f1968b.getString(C0000R.string.menu_shortcut)).setOnMenuItemClickListener(new ce(this));
        com.estrongs.android.view.a.a onMenuItemClickListener10 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_edit_addto, this.f1968b.getString(C0000R.string.menu_addto_server_list)).setOnMenuItemClickListener(new cf(this));
        com.estrongs.android.view.a.a onMenuItemClickListener11 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_edit_tofavorites, this.f1968b.getString(C0000R.string.context_menu_to_favorites)).setOnMenuItemClickListener(new cg(this));
        com.estrongs.android.view.a.a onMenuItemClickListener12 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_edit_property, this.f1968b.getString(C0000R.string.context_menu_property)).setOnMenuItemClickListener(new ch(this));
        com.estrongs.android.view.a.a onMenuItemClickListener13 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_edit_send, this.f1968b.getString(C0000R.string.action_send)).setOnMenuItemClickListener(new ci(this));
        com.estrongs.android.view.a.a onMenuItemClickListener14 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_playto, this.f1968b.getString(C0000R.string.action_play_to)).setOnMenuItemClickListener(new cj(this));
        com.estrongs.android.view.a.a onMenuItemClickListener15 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_edit_openas, this.f1968b.getString(C0000R.string.action_openas)).setOnMenuItemClickListener(new ck(this));
        com.estrongs.android.view.a.a onMenuItemClickListener16 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_edit_play, this.f1968b.getString(C0000R.string.action_play)).setOnMenuItemClickListener(new cl(this));
        com.estrongs.android.view.a.a onMenuItemClickListener17 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_edit_addto, this.f1968b.getString(C0000R.string.menu_addto_playing)).setOnMenuItemClickListener(new co(this));
        com.estrongs.android.view.a.a onMenuItemClickListener18 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_extractto, this.f1968b.getString(C0000R.string.action_extract_to)).setOnMenuItemClickListener(new cp(this));
        com.estrongs.android.view.a.a onMenuItemClickListener19 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_edit_view, this.f1968b.getString(C0000R.string.action_open)).setOnMenuItemClickListener(new cq(this));
        com.estrongs.android.view.a.a onMenuItemClickListener20 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_setbg, this.f1968b.getString(C0000R.string.menu_setbk)).setOnMenuItemClickListener(new cr(this));
        com.estrongs.android.view.a.a onMenuItemClickListener21 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_edit_install, this.f1968b.getString(C0000R.string.button_install)).setOnMenuItemClickListener(new ct(this));
        com.estrongs.android.view.a.a onMenuItemClickListener22 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_edit_hidelist, this.f1968b.getString(C0000R.string.action_hide)).setOnMenuItemClickListener(new cw(this));
        com.estrongs.android.view.a.a onMenuItemClickListener23 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_edit, this.f1968b.getString(C0000R.string.action_paste)).setOnMenuItemClickListener(new cx(this));
        com.estrongs.android.view.a.a onMenuItemClickListener24 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_edit, this.f1968b.getString(C0000R.string.edit_button_edit_server)).setOnMenuItemClickListener(new cy(this));
        com.estrongs.android.view.a.a onMenuItemClickListener25 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_edit_delete, C0000R.string.action_uninstall).setOnMenuItemClickListener(new cz(this));
        com.estrongs.android.view.a.a onMenuItemClickListener26 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_edit_backup, this.l.getString(C0000R.string.action_backup)).setOnMenuItemClickListener(new da(this));
        com.estrongs.android.view.a.a onMenuItemClickListener27 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_edit_share, this.l.getString(C0000R.string.action_share)).setOnMenuItemClickListener(new dc(this));
        com.estrongs.android.view.a.a onMenuItemClickListener28 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_edit_send, this.l.getString(C0000R.string.action_send)).setOnMenuItemClickListener(new dd(this));
        com.estrongs.android.view.a.a onMenuItemClickListener29 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_edit_shortcuts, this.l.getString(C0000R.string.menu_shortcut)).setOnMenuItemClickListener(new de(this));
        com.estrongs.android.view.a.a onMenuItemClickListener30 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_edit_property, this.l.getString(C0000R.string.context_menu_property)).setOnMenuItemClickListener(new df(this));
        com.estrongs.android.view.a.a onMenuItemClickListener31 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_update, this.l.getString(C0000R.string.app_check_update)).setOnMenuItemClickListener(new dg(this));
        com.estrongs.android.view.a.a onMenuItemClickListener32 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_autoupdate, this.l.getString(C0000R.string.app_auto_update)).setOnMenuItemClickListener(new dh(this));
        com.estrongs.android.view.a.a onMenuItemClickListener33 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_update, this.l.getString(C0000R.string.pcs_normal_window_title)).setOnMenuItemClickListener(new di(this));
        com.estrongs.android.view.a.a onMenuItemClickListener34 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_openfolder, this.l.getString(C0000R.string.open_folder_title)).setOnMenuItemClickListener(new dj(this));
        com.estrongs.android.view.a.a onMenuItemClickListener35 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_redownload, this.l.getString(C0000R.string.action_redownload)).setOnMenuItemClickListener(new dk(this));
        com.estrongs.android.view.a.a onMenuItemClickListener36 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_edit_delete, this.l.getString(C0000R.string.action_delete)).setOnMenuItemClickListener(new dl(this));
        com.estrongs.android.view.a.a onMenuItemClickListener37 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_edit_property, this.l.getString(C0000R.string.context_menu_property)).setOnMenuItemClickListener(new dp(this));
        com.estrongs.android.view.a.a onMenuItemClickListener38 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_extractto, C0000R.string.action_extract).setOnMenuItemClickListener(new dq(this));
        com.estrongs.android.view.a.a onMenuItemClickListener39 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_edit_moveto, C0000R.string.context_menu_jump_to).setOnMenuItemClickListener(new dr(this));
        com.estrongs.android.view.a.a onMenuItemClickListener40 = new com.estrongs.android.view.a.a(C0000R.drawable.app_pic_net_edit_comment, this.l.getString(C0000R.string.menu_comment)).setOnMenuItemClickListener(new ds(this));
        com.estrongs.android.view.a.a onMenuItemClickListener41 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_edit, this.l.getString(C0000R.string.action_edit)).setOnMenuItemClickListener(new dt(this));
        com.estrongs.android.view.a.a onMenuItemClickListener42 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_download, this.l.getString(C0000R.string.action_download)).setOnMenuItemClickListener(new dy(this));
        com.estrongs.android.view.a.a onMenuItemClickListener43 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_edit_delete, this.l.getString(C0000R.string.action_delete)).setOnMenuItemClickListener(new dz(this));
        com.estrongs.android.view.a.a onMenuItemClickListener44 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_share_cancel, this.f1968b.getString(C0000R.string.action_cancel_share)).setOnMenuItemClickListener(new ea(this));
        com.estrongs.android.view.a.a onMenuItemClickListener45 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_restore, this.f1968b.getString(C0000R.string.action_restore)).setOnMenuItemClickListener(new ed(this));
        if (com.estrongs.android.ui.pcs.cl.a(this.f1968b)) {
            com.estrongs.android.view.a.a onMenuItemClickListener46 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_backedup_files, this.f1968b.getString(C0000R.string.edit_tool_pcs_backup)).setOnMenuItemClickListener(new eg(this));
            this.k.put("pcs_share", new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_edit_share, this.f1968b.getString(C0000R.string.action_share)).setOnMenuItemClickListener(new ej(this)));
            this.k.put("pcs_backup", onMenuItemClickListener46);
            this.k.put("pcs_stop_share", onMenuItemClickListener44);
        }
        this.k.put("copy", onMenuItemClickListener);
        this.k.put("cut", onMenuItemClickListener3);
        this.k.put("add_to_favorite", onMenuItemClickListener11);
        this.k.put("playing", onMenuItemClickListener17);
        this.k.put("add_to_server_list", onMenuItemClickListener10);
        this.k.put("compression", onMenuItemClickListener8);
        this.k.put("copy_to", onMenuItemClickListener2);
        this.k.put("delete", onMenuItemClickListener5);
        this.k.put("edit_server", onMenuItemClickListener24);
        this.k.put("extract_to", onMenuItemClickListener18);
        this.k.put("hide", onMenuItemClickListener22);
        this.k.put("install", onMenuItemClickListener21);
        this.k.put("move_to", onMenuItemClickListener4);
        this.k.put("open", onMenuItemClickListener19);
        this.k.put("open_as", onMenuItemClickListener15);
        this.k.put("paste", onMenuItemClickListener23);
        this.k.put("play", onMenuItemClickListener16);
        this.k.put("play_to", onMenuItemClickListener14);
        this.k.put("property", onMenuItemClickListener12);
        this.k.put("rename", onMenuItemClickListener6);
        this.k.put("send", onMenuItemClickListener13);
        this.k.put("set_background", onMenuItemClickListener20);
        this.k.put("share", onMenuItemClickListener7);
        this.k.put("stop_share", onMenuItemClickListener44);
        this.k.put("shortcut", onMenuItemClickListener9);
        this.k.put("app_uninstall", onMenuItemClickListener25);
        this.k.put("app_backup", onMenuItemClickListener26);
        this.k.put("app_share", onMenuItemClickListener27);
        this.k.put("app_send", onMenuItemClickListener28);
        this.k.put("app_shortcut", onMenuItemClickListener29);
        this.k.put("app_property", onMenuItemClickListener30);
        this.k.put("app_check_update", onMenuItemClickListener31);
        this.k.put("app_update", onMenuItemClickListener33);
        this.k.put("app_auto_check_update", onMenuItemClickListener32);
        this.k.put("download_open_folder", onMenuItemClickListener34);
        this.k.put("download_delete", onMenuItemClickListener36);
        this.k.put("download_do_again", onMenuItemClickListener35);
        this.k.put("download_property", onMenuItemClickListener37);
        this.k.put("compression_extract", onMenuItemClickListener38);
        this.k.put("image_jump_to", onMenuItemClickListener39);
        this.k.put("image_comment", onMenuItemClickListener40);
        this.k.put("image_edit", onMenuItemClickListener41);
        this.k.put("image_download", onMenuItemClickListener42);
        this.k.put("image_exit_account", onMenuItemClickListener43);
        this.k.put("restore", onMenuItemClickListener45);
    }

    @Override // com.estrongs.android.ui.e.c
    protected Map<String, com.estrongs.android.view.a.a> i() {
        return this.k;
    }

    protected void k() {
        n();
    }
}

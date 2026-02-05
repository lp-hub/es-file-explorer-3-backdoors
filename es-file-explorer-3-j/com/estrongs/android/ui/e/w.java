package com.estrongs.android.ui.e;

import android.content.Context;
import android.view.View;
import android.widget.RelativeLayout;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class w extends c {
    private String[] A;
    private String[] B;
    private String[] C;
    private String[] D;
    private boolean E;
    private boolean F;
    private com.estrongs.android.ui.b.cz G;
    private com.estrongs.android.ui.b.ag H;
    private com.estrongs.android.ui.b.t I;
    private com.estrongs.android.ui.b.cx J;
    private com.estrongs.android.ui.b.ba K;
    private com.estrongs.android.ui.b.cq L;
    private com.estrongs.android.ui.b.w M;
    public bz j;
    FileExplorerActivity k;
    protected Map<String, com.estrongs.android.view.a.a> l;
    boolean m;
    private com.estrongs.android.ui.view.az n;
    private View o;
    private int p;
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

    public w(Context context, boolean z) {
        super(context, z);
        this.p = 0;
        this.k = null;
        this.m = false;
        this.E = true;
        this.F = false;
        o();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2) {
        new com.estrongs.android.ui.pcs.bt(this.k, str).a();
    }

    private void o() {
        this.m = com.estrongs.android.pop.utils.ca.a(this.f1968b);
        this.k = (FileExplorerActivity) this.f1968b;
        RelativeLayout relativeLayout = (RelativeLayout) this.k.findViewById(C0000R.id.switcher_tools_bottom);
        this.o = relativeLayout;
        relativeLayout.setBackgroundDrawable(this.f.a(C0000R.drawable.toolbar_bg));
        this.n = new com.estrongs.android.ui.view.az(this.k, relativeLayout, this.d ? 1 : 3);
        k();
        this.n.a("normal_mode", this);
        this.n.a("paste_mode", new fy(this.n, this.k, this.d));
        a(this.q);
    }

    public void a(boolean z, boolean z2) {
        this.E = z;
        this.F = z2;
        k();
        d(this.p);
    }

    public void b(boolean z) {
        com.estrongs.android.view.ar t = this.k.t();
        if (t != null && t.m()) {
            t.R();
            if (this.k.q && com.estrongs.android.util.ak.aL(t.c())) {
                this.k.f(false);
            }
        }
        if (this.j == null) {
            this.j = new bi(this, this.n, this.k, this.d, null);
            this.n.a("edit_mode", this.j);
        }
        this.n.a(true);
        this.n.a("edit_mode", Boolean.valueOf(z));
        this.k.j = "edit_mode";
        this.k.p();
        if (t != null) {
            t.a(true);
            this.k.a(0, t.d());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.ui.e.a
    public boolean b() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.ui.e.a
    public void c() {
        if (FileExplorerActivity.E() != null) {
            FileExplorerActivity.E().b((View) null, true);
        }
    }

    public void c(boolean z) {
        a(z);
        this.n.a(z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.ui.e.a
    public void d() {
        if (FileExplorerActivity.E() != null) {
            FileExplorerActivity.E().a((View) null, true);
        }
    }

    public void d(int i) {
        switch (i) {
            case -1:
                a(this.q);
                b("new", "search", "view");
                break;
            case 0:
                a(this.q);
                break;
            case 1:
                a(this.r);
                break;
            case 2:
            case 3:
                a(this.q);
                b("search");
                break;
            case 4:
            case 13:
                a(this.u);
                break;
            case 5:
            case 14:
                a(this.t);
                b("new");
                break;
            case 6:
                a(this.s);
                if (com.estrongs.android.pop.m.n) {
                    b("player");
                    break;
                }
                break;
            case 7:
            case 8:
            case 9:
            case 16:
                a(this.q);
                b("new");
                break;
            case 10:
                a(this.r);
                break;
            case 11:
            case 12:
                a(this.q);
                b("search");
                break;
            case 15:
                a(this.q);
                b("new", "search", "view");
                break;
            case 17:
                a(this.x);
                break;
            case 18:
                a(this.w);
                break;
            case 19:
                a(this.v);
                break;
            case 20:
                com.estrongs.android.ui.pcs.aw a2 = com.estrongs.android.ui.pcs.aw.a();
                if (!a2.c()) {
                    a(this.y);
                    break;
                } else if (a2.e() != 2) {
                    a(this.A);
                    break;
                } else {
                    a(this.z);
                    break;
                }
            case 21:
                a(this.B);
                break;
            case 22:
                com.estrongs.android.view.cs csVar = (com.estrongs.android.view.cs) this.k.t();
                if (csVar != null) {
                    a(this.k.f.f() ? a(this.C, "unlock_page", this.C.length) : a(this.C, "lock_page", this.C.length));
                    if (!csVar.n()) {
                        b("back");
                    }
                    if (!csVar.o()) {
                        b("forward");
                        break;
                    }
                }
                break;
            case 23:
                a(this.D);
                if (com.estrongs.fs.impl.k.a.b()) {
                    b("clear_recycle");
                    break;
                }
                break;
            case 24:
                a(this.q);
                b("new", "view");
                break;
        }
        this.p = i;
    }

    public void e(int i) {
        if ("edit_mode".equals(this.n.b()) && this.j != null) {
            this.j.d(i);
        }
    }

    @Override // com.estrongs.android.ui.e.c, com.estrongs.android.ui.e.a
    public boolean f() {
        return false;
    }

    @Override // com.estrongs.android.ui.e.c
    protected void h() {
        this.l = new HashMap();
        com.estrongs.android.view.a.a onMenuItemClickListener = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_select, C0000R.string.action_select).setOnMenuItemClickListener(new x(this));
        com.estrongs.android.view.a.a onMenuItemClickListener2 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_analyse, C0000R.string.tool_analyse).setOnMenuItemClickListener(new au(this));
        com.estrongs.android.view.a.a onMenuItemClickListener3 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_new, C0000R.string.action_new).setOnMenuItemClickListener(new bf(this));
        com.estrongs.android.view.a.a onMenuItemClickListener4 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_discoverable, C0000R.string.menu_discoverable).setOnMenuItemClickListener(new bj(this));
        com.estrongs.android.view.a.a onMenuItemClickListener5 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_charset, C0000R.string.tool_charset).setOnMenuItemClickListener(new bk(this));
        com.estrongs.android.view.a.a onMenuItemClickListener6 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_extractto, C0000R.string.action_extract).setOnMenuItemClickListener(new bm(this));
        com.estrongs.android.view.a.a onMenuItemClickListener7 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_search, C0000R.string.action_search).setOnMenuItemClickListener(new bn(this));
        com.estrongs.android.view.a.a onMenuItemClickListener8 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_search, C0000R.string.action_scan).setOnMenuItemClickListener(new bo(this));
        com.estrongs.android.view.a.a onMenuItemClickListener9 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_refresh, C0000R.string.action_refresh).setOnMenuItemClickListener(new bp(this));
        com.estrongs.android.view.a.a onMenuItemClickListener10 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_sort, C0000R.string.action_sort).setOnMenuItemClickListener(new y(this));
        com.estrongs.android.view.a.a onMenuItemClickListener11 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_view, C0000R.string.action_view).setOnMenuItemClickListener(new ac(this));
        com.estrongs.android.view.a.a onMenuItemClickListener12 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_player, C0000R.string.tool_player).setOnMenuItemClickListener(new af(this));
        com.estrongs.android.view.a.a onMenuItemClickListener13 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_login, C0000R.string.action_login).setOnMenuItemClickListener(new aj(this));
        com.estrongs.android.view.a.a onMenuItemClickListener14 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_newaccount, C0000R.string.register).setOnMenuItemClickListener(new al(this));
        com.estrongs.android.view.a.a onMenuItemClickListener15 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_startusing, C0000R.string.toolbar_directly).setOnMenuItemClickListener(new an(this));
        com.estrongs.android.view.a.a onMenuItemClickListener16 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_edit, this.f1968b.getString(C0000R.string.pcs_toolbar_exit)).setOnMenuItemClickListener(new ao(this));
        com.estrongs.android.view.a.a onMenuItemClickListener17 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_setting, this.f1968b.getString(C0000R.string.pcs_backup_set_path)).setOnMenuItemClickListener(new ap(this));
        com.estrongs.android.view.a.a onMenuItemClickListener18 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_login, C0000R.string.action_chg_account).setOnMenuItemClickListener(new ar(this));
        com.estrongs.android.view.a.a onMenuItemClickListener19 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_edit_privacy, C0000R.string.pcs_upgrade_verify_account).setOnMenuItemClickListener(new at(this));
        com.estrongs.android.view.a.a onMenuItemClickListener20 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_expansion, C0000R.string.pcs_expansion).setOnMenuItemClickListener(new av(this));
        com.estrongs.android.view.a.a onMenuItemClickListener21 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_startusing, C0000R.string.pcs_upgrade_change_password).setOnMenuItemClickListener(new aw(this));
        com.estrongs.android.view.a.a onMenuItemClickListener22 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_setting, C0000R.string.input_setting).setOnMenuItemClickListener(new ax(this));
        com.estrongs.android.view.a.a onMenuItemClickListener23 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_window, C0000R.string.tool_multi_window).setOnMenuItemClickListener(new ay(this));
        com.estrongs.android.view.a.a onMenuItemClickListener24 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_return, C0000R.string.action_back).setOnMenuItemClickListener(new az(this));
        com.estrongs.android.view.a.a onMenuItemClickListener25 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_forward, C0000R.string.action_forward).setOnMenuItemClickListener(new ba(this));
        com.estrongs.android.view.a.a onMenuItemClickListener26 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_lockwindow, C0000R.string.toolbar_lock_window).setOnMenuItemClickListener(new bb(this));
        com.estrongs.android.view.a.a onMenuItemClickListener27 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_unlockwindow, C0000R.string.toolbar_unlock_window).setOnMenuItemClickListener(new bc(this));
        com.estrongs.android.view.a.a onMenuItemClickListener28 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_clear_recycle, C0000R.string.action_clear).setOnMenuItemClickListener(new bd(this));
        new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_setting, C0000R.string.input_setting).setOnMenuItemClickListener(new be(this));
        this.l.put("analyse", onMenuItemClickListener2);
        this.l.put("bt_discoverable", onMenuItemClickListener4);
        this.l.put("charset", onMenuItemClickListener5);
        this.l.put("extract", onMenuItemClickListener6);
        this.l.put("new", onMenuItemClickListener3);
        this.l.put("refresh", onMenuItemClickListener9);
        this.l.put("search", onMenuItemClickListener7);
        this.l.put("scan", onMenuItemClickListener8);
        this.l.put("select", onMenuItemClickListener);
        this.l.put("sort", onMenuItemClickListener10);
        this.l.put("view", onMenuItemClickListener11);
        this.l.put("player", onMenuItemClickListener12);
        this.l.put("pcs_login", onMenuItemClickListener13);
        this.l.put("pcs_register", onMenuItemClickListener14);
        this.l.put("pcs_directly", onMenuItemClickListener15);
        this.l.put("pcs_logout", onMenuItemClickListener16);
        this.l.put("pcs_set_path", onMenuItemClickListener17);
        this.l.put("pcs_expansion", onMenuItemClickListener20);
        this.l.put("remote_settings", onMenuItemClickListener22);
        this.l.put("windows", onMenuItemClickListener23);
        this.l.put("pcs_chg_account", onMenuItemClickListener18);
        this.l.put("pcs_verify_account", onMenuItemClickListener19);
        this.l.put("pcs_change_password", onMenuItemClickListener21);
        this.l.put("clear_recycle", onMenuItemClickListener28);
        this.l.put("back", onMenuItemClickListener24);
        this.l.put("forward", onMenuItemClickListener25);
        this.l.put("lock_page", onMenuItemClickListener26);
        this.l.put("unlock_page", onMenuItemClickListener27);
    }

    @Override // com.estrongs.android.ui.e.c
    protected Map<String, com.estrongs.android.view.a.a> i() {
        return this.l;
    }

    public void k() {
        if (this.E && this.F) {
            this.q = new String[]{"select", "new", "search", "refresh", "view", "windows"};
            this.r = new String[]{"select", "new", "scan", "refresh", "view", "windows"};
            this.s = new String[]{"select", "player", "search", "refresh", "view", "windows"};
            this.t = new String[]{"select", "new", "search", "refresh", "sort", "windows"};
            this.u = new String[]{"select", "bt_discoverable", "scan", "refresh", "view", "windows"};
            this.v = new String[]{"select", "charset", "extract", "refresh", "view", "windows"};
            this.w = new String[]{"select", "analyse", "refresh", "sort", "windows"};
            this.x = new String[]{"select", "new", "refresh", "windows"};
            this.z = new String[]{"select", "new", "search", "refresh", "view", "windows", "pcs_set_path", "pcs_verify_account", "pcs_expansion", "pcs_chg_account", "pcs_logout"};
            this.A = new String[]{"select", "new", "search", "refresh", "view", "windows", "pcs_set_path", "pcs_change_password", "pcs_expansion", "pcs_chg_account", "pcs_logout"};
            this.y = new String[]{"pcs_login", "pcs_register", "pcs_directly", "windows"};
            this.B = new String[]{"remote_settings", "windows"};
            this.C = new String[]{"back", "forward", "refresh", "windows"};
            this.D = new String[]{"select", "clear_recycle", "refresh", "view", "windows"};
            return;
        }
        if (!this.E && this.F) {
            this.q = new String[]{"new", "search", "refresh", "view", "windows"};
            this.r = new String[]{"new", "scan", "refresh", "view", "windows"};
            this.s = new String[]{"player", "search", "refresh", "view", "windows"};
            this.t = new String[]{"new", "search", "refresh", "sort", "windows"};
            this.u = new String[]{"bt_discoverable", "scan", "refresh", "view", "windows"};
            this.v = new String[]{"charset", "extract", "refresh", "view", "windows"};
            this.w = new String[]{"analyse", "refresh", "sort", "windows"};
            this.x = new String[]{"new", "refresh", "windows"};
            this.z = new String[]{"new", "search", "refresh", "view", "windows", "pcs_set_path", "pcs_verify_account", "pcs_expansion", "pcs_chg_account", "pcs_logout"};
            this.A = new String[]{"new", "search", "refresh", "view", "windows", "pcs_set_path", "pcs_change_password", "pcs_expansion", "pcs_chg_account", "pcs_logout"};
            this.y = new String[]{"pcs_login", "pcs_register", "pcs_directly", "windows"};
            this.B = new String[]{"remote_settings", "windows"};
            this.C = new String[]{"back", "forward", "refresh", "windows"};
            this.D = new String[]{"clear_recycle", "refresh", "view", "windows"};
            return;
        }
        if (!this.E || this.F) {
            this.q = new String[]{"new", "search", "refresh", "sort", "view"};
            this.r = new String[]{"new", "scan", "refresh", "sort", "view"};
            this.s = new String[]{"player", "search", "refresh", "sort", "view"};
            this.t = new String[]{"new", "search", "refresh", "sort", "windows"};
            this.u = new String[]{"bt_discoverable", "scan", "refresh", "sort", "view"};
            this.v = new String[]{"charset", "extract", "refresh", "sort", "view"};
            this.w = new String[]{"analyse", "refresh", "sort"};
            this.x = new String[]{"new", "refresh"};
            this.z = new String[]{"new", "search", "refresh", "sort", "view", "pcs_set_path", "pcs_verify_account", "pcs_expansion", "pcs_chg_account", "pcs_logout"};
            this.A = new String[]{"new", "search", "refresh", "sort", "view", "pcs_set_path", "pcs_change_password", "pcs_expansion", "pcs_chg_account", "pcs_logout"};
            this.y = new String[]{"pcs_login", "pcs_register", "pcs_directly"};
            this.B = new String[]{"remote_settings"};
            this.C = new String[]{"back", "forward", "refresh"};
            this.D = new String[]{"clear_recycle", "refresh", "view"};
            return;
        }
        this.q = new String[]{"select", "new", "search", "refresh", "view"};
        this.r = new String[]{"select", "new", "scan", "refresh", "view"};
        this.s = new String[]{"select", "player", "search", "refresh", "view"};
        this.t = new String[]{"select", "new", "search", "refresh", "sort"};
        this.u = new String[]{"select", "bt_discoverable", "scan", "refresh", "view"};
        this.v = new String[]{"select", "charset", "extract", "refresh", "view"};
        this.w = new String[]{"select", "analyse", "refresh", "sort"};
        this.x = new String[]{"select", "new", "refresh"};
        this.z = new String[]{"select", "new", "search", "refresh", "view", "pcs_set_path", "pcs_verify_account", "pcs_expansion", "pcs_chg_account", "pcs_logout"};
        this.A = new String[]{"select", "new", "search", "refresh", "view", "pcs_set_path", "pcs_change_password", "pcs_expansion", "pcs_chg_account", "pcs_logout"};
        this.y = new String[]{"pcs_login", "pcs_register", "pcs_directly"};
        this.B = new String[]{"remote_settings"};
        this.C = new String[]{"back", "forward", "refresh"};
        this.D = new String[]{"select", "clear_recycle", "refresh", "view"};
    }

    public com.estrongs.android.ui.view.az l() {
        return this.n;
    }

    public void m() {
        if (this.j != null) {
            this.j.j();
            this.k.l();
        }
    }

    public void n() {
        b(true);
    }
}

package com.estrongs.android.ui.a;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.app.HideListActivity;
import com.estrongs.android.pop.app.shortcut.ShortcutFormat;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.view.SimpleSwitchButton;
import java.io.File;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes.dex */
public class s extends BaseExpandableListAdapter {

    /* renamed from: a, reason: collision with root package name */
    public static String f1603a = "www.estrongs.com";
    private FileExplorerActivity c;
    private String[] d;
    private com.estrongs.android.pop.q e;
    private SharedPreferences h;
    private SharedPreferences.Editor i;
    private ArrayList<cd> m;
    private Handler n;
    private com.estrongs.android.ui.theme.al o;

    /* renamed from: b, reason: collision with root package name */
    protected List<ShortcutFormat> f1604b = new LinkedList();
    private final Collator j = Collator.getInstance();
    private com.estrongs.android.util.a k = com.estrongs.android.util.a.a();
    private Comparator<File> l = new t(this);
    private Drawable g = b(C0000R.drawable.access_tab_down);
    private Drawable f = b(C0000R.drawable.access_tab_up);

    public s(Context context, Handler handler) {
        this.c = (FileExplorerActivity) context;
        this.o = com.estrongs.android.ui.theme.al.a(this.c);
        this.n = handler;
        this.d = this.c.getResources().getStringArray(C0000R.array.new_navi_groups);
        this.e = com.estrongs.android.pop.q.a(this.c);
        this.h = context.getSharedPreferences("new_navi", 0);
        this.i = this.h.edit();
        c();
    }

    public static void a(FileExplorerActivity fileExplorerActivity) {
        if (!com.estrongs.android.pop.q.a(fileExplorerActivity).M()) {
            fileExplorerActivity.startActivityForResult(new Intent(fileExplorerActivity, (Class<?>) HideListActivity.class), 268439580);
            return;
        }
        com.estrongs.android.ui.b.aq c = new com.estrongs.android.ui.b.aq(fileExplorerActivity).a(C0000R.string.lbl_input_password).b(C0000R.string.confirm_ok, new br(fileExplorerActivity)).c(C0000R.string.confirm_cancel, new bq());
        View inflate = com.estrongs.android.pop.esclasses.e.a(fileExplorerActivity).inflate(C0000R.layout.net_pincode, (ViewGroup) null);
        ((TextView) inflate.findViewById(C0000R.id.pincode_new_passwd_txt)).setVisibility(8);
        inflate.findViewById(C0000R.id.pincode_old_passwd_row).setVisibility(8);
        inflate.findViewById(C0000R.id.pincode_confirm_passwd_row).setVisibility(8);
        inflate.findViewById(C0000R.id.pincode_username_row).setVisibility(8);
        c.a(inflate);
        com.estrongs.android.ui.b.ag a2 = c.a();
        a2.setOnKeyListener(new bs());
        a2.getWindow().setSoftInputMode(5);
        a2.show();
    }

    private void a(cd cdVar) {
        Drawable a2;
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.f1604b.size()) {
                return;
            }
            ShortcutFormat shortcutFormat = this.f1604b.get(i2);
            boolean z = true;
            if (com.estrongs.android.util.ak.aO(shortcutFormat.targetLocation)) {
                com.estrongs.fs.impl.local.b b2 = com.estrongs.fs.impl.local.d.b(shortcutFormat.targetLocation);
                a2 = com.estrongs.android.d.d.d(b2);
                z = b2.getFileType().a();
            } else {
                a2 = shortcutFormat.targetLocation.endsWith("/") ? (com.estrongs.android.util.ak.aq(shortcutFormat.targetLocation) || com.estrongs.android.util.ak.ao(shortcutFormat.targetLocation)) ? com.estrongs.android.d.d.a(com.estrongs.fs.l.E.c()) : com.estrongs.android.d.d.a(com.estrongs.fs.l.D.c()) : com.estrongs.android.d.d.a(String.valueOf(com.estrongs.android.util.av.a(shortcutFormat.targetLocation)));
            }
            a aVar = new a(a2, shortcutFormat.shortcutName, shortcutFormat.targetLocation, new bp(this, shortcutFormat));
            aVar.e = z;
            aVar.a(shortcutFormat.targetLocation);
            cdVar.f1551b.add(aVar);
            i = i2 + 1;
        }
    }

    private Drawable b(int i) {
        return this.c.getResources().getDrawable(i);
    }

    public static void b(FileExplorerActivity fileExplorerActivity) {
        com.estrongs.android.ui.theme.al a2 = com.estrongs.android.ui.theme.al.a(fileExplorerActivity);
        if (com.estrongs.fs.impl.local.h.e()) {
            new Thread(new bt(fileExplorerActivity, a2)).start();
        } else {
            com.estrongs.android.ui.view.z.a(fileExplorerActivity, C0000R.string.super_user_error, 1).show();
        }
    }

    private String c(int i) {
        return this.c.getResources().getString(i);
    }

    private void c() {
        this.m = new ArrayList<>();
        b();
        cd cdVar = new cd(this);
        cdVar.f1550a = this.d[0];
        cdVar.f1551b = new ArrayList();
        a(cdVar);
        this.m.add(cdVar);
        cd cdVar2 = new cd(this);
        cdVar2.f1550a = this.d[1];
        cdVar2.f1551b = new ArrayList();
        cdVar2.f1551b.add(new bz(this, b(C0000R.drawable.sidebar_home), c(C0000R.string.location_home), new by(this)));
        if (!com.estrongs.android.pop.m.j) {
            cdVar2.f1551b.add(new a(b(C0000R.drawable.sidebar_phone), c(C0000R.string.location_device_root), new ca(this)).a("/"));
        }
        cdVar2.f1551b.add(new ae(this, b(C0000R.drawable.sidebar_download), c(C0000R.string.action_download), new cb(this)));
        List<String> a2 = com.estrongs.android.util.ak.a();
        String b2 = com.estrongs.android.pop.b.b();
        if (a2.remove(b2)) {
            a2.add(0, b2);
        }
        for (String str : a2) {
            cdVar2.f1551b.add(new a(b(C0000R.drawable.sidebar_sdcard), com.estrongs.android.pop.m.b(str), new cc(this, str), str));
        }
        this.m.add(cdVar2);
        cd cdVar3 = new cd(this);
        cdVar3.f1550a = this.d[2];
        cdVar3.f1551b = new ArrayList();
        cdVar3.f1551b.add(new a(b(C0000R.drawable.sidebar_picture), c(C0000R.string.category_picture), new u(this), "gallery://local/buckets/"));
        cdVar3.f1551b.add(new a(b(C0000R.drawable.sidebar_music), c(C0000R.string.category_music), new v(this), "music://"));
        cdVar3.f1551b.add(new a(b(C0000R.drawable.sidebar_media), c(C0000R.string.category_movie), new w(this), "video://"));
        cdVar3.f1551b.add(new a(b(C0000R.drawable.sidebar_books), c(C0000R.string.category_book), new x(this), "book://"));
        this.m.add(cdVar3);
        cd cdVar4 = new cd(this);
        cdVar4.f1550a = this.d[3];
        cdVar4.f1551b = new ArrayList();
        cdVar4.f1551b.add(new a(b(C0000R.drawable.sidebar_lan), c(C0000R.string.location_lan), new y(this), "smb://"));
        if (!com.estrongs.android.pop.m.P) {
            cdVar4.f1551b.add(new a(b(C0000R.drawable.sidebar_cloud), c(C0000R.string.location_cloud), new z(this), "net://"));
        }
        if (!com.estrongs.android.pop.m.R && com.estrongs.android.pop.utils.bs.a()) {
            cdVar4.f1551b.add(new a(b(C0000R.drawable.sidebar_pcs), c(C0000R.string.category_pcs), new aa(this), "pcs://"));
        }
        cdVar4.f1551b.add(new a(b(C0000R.drawable.sidebar_ftp), c(C0000R.string.location_ftp), new ab(this), "ftp://"));
        if (com.estrongs.android.pop.m.d) {
            cdVar4.f1551b.add(new a(b(C0000R.drawable.sidebar_blue), c(C0000R.string.location_device), new ac(this), "bt://"));
        }
        this.m.add(cdVar4);
        cd cdVar5 = new cd(this);
        cdVar5.f1550a = this.d[4];
        cdVar5.f1551b = new ArrayList();
        if (com.estrongs.android.pop.m.f) {
            cdVar5.f1551b.add(new a(b(C0000R.drawable.sidebar_apps), c(C0000R.string.app_app_manager), new ad(this)));
        }
        if (!com.estrongs.android.pop.m.O) {
            cdVar5.f1551b.add(new a(b(C0000R.drawable.sidebar_download), c(C0000R.string.app_download_manager), new ag(this)));
        }
        if (!com.estrongs.android.pop.m.v) {
            cdVar5.f1551b.add(new a(b(C0000R.drawable.sidebar_system), c(C0000R.string.fast_access_system), new ah(this)));
        }
        cdVar5.f1551b.add(new a(b(C0000R.drawable.sidebar_disk), c(C0000R.string.diskusage_title), new ai(this)));
        if (!com.estrongs.android.pop.m.Z) {
            cdVar5.f1551b.add(new a(b(C0000R.drawable.sidebar_remote), c(C0000R.string.fast_access_remote), new aj(this)));
        }
        if (!com.estrongs.android.pop.m.x) {
            cdVar5.f1551b.add(new a(b(C0000R.drawable.sidebar_esnet), c(C0000R.string.app_net_manager), new ak(this)));
        }
        if (!com.estrongs.android.pop.m.aa) {
            cdVar5.f1551b.add(new a(b(C0000R.drawable.sidebar_clipboard), c(C0000R.string.location_clipboard), new al(this)));
        }
        if (!com.estrongs.android.pop.m.U) {
            cdVar5.f1551b.add(new a(b(C0000R.drawable.sidebar_hidelist), c(C0000R.string.location_hidelist), new am(this)));
        }
        if (!com.estrongs.android.pop.m.ab) {
            cdVar5.f1551b.add(new aq(this, b(C0000R.drawable.sidebar_recycle), c(C0000R.string.recycle_title), new an(this)).a(true).a(new ap(this)));
        }
        if (!com.estrongs.android.pop.m.w) {
            cdVar5.f1551b.add(new ay(this, b(C0000R.drawable.sidebar_root), c(C0000R.string.preference_root_settings), new ax(this)).a(true).a(new as(this)));
        }
        if (!com.estrongs.android.pop.m.M) {
            cdVar5.f1551b.add(new bb(this, b(C0000R.drawable.sidebar_gesture), c(C0000R.string.gesture_title), new ba(this)).a(true).a(new az(this)));
        }
        cdVar5.f1551b.add(new bd(this, b(C0000R.drawable.sidebar_hiddenfiles), c(C0000R.string.preference_hidden_file_title), null).a(true).a(new bc(this)));
        cdVar5.f1551b.add(new bf(this, b(C0000R.drawable.sidebar_thumbnails), c(C0000R.string.enable_thumbnails_title), null).a(true).a(new be(this)));
        this.m.add(cdVar5);
    }

    public SharedPreferences a() {
        return this.h;
    }

    @Override // android.widget.ExpandableListAdapter
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public a getChild(int i, int i2) {
        try {
            return this.m.get(i).f1551b.get(i2);
        } catch (IndexOutOfBoundsException e) {
            return null;
        }
    }

    @Override // android.widget.ExpandableListAdapter
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public cd getGroup(int i) {
        return this.m.get(i);
    }

    public void a(String str) {
        cd cdVar = this.m.get(1);
        Iterator<a> it = cdVar.f1551b.iterator();
        while (it.hasNext()) {
            if (com.estrongs.android.util.ak.d(it.next().b(), str)) {
                return;
            }
        }
        cdVar.f1551b.add(new a(b(C0000R.drawable.sidebar_sdcard), com.estrongs.android.pop.m.b(str), new af(this, str), str));
        this.n.post(new ar(this));
    }

    public void b() {
        this.f1604b.clear();
        File[] listFiles = new File("/sdcard/.estrongs/bookmark").listFiles();
        if (listFiles != null) {
            Arrays.sort(listFiles, this.l);
            for (File file : listFiles) {
                if (file.isFile()) {
                    try {
                        ShortcutFormat a2 = com.estrongs.android.util.at.a(file);
                        a2.deleteAble = true;
                        this.f1604b.add(a2);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        }
    }

    public void b(String str) {
        a aVar;
        cd cdVar = this.m.get(1);
        Iterator<a> it = cdVar.f1551b.iterator();
        while (true) {
            if (!it.hasNext()) {
                aVar = null;
                break;
            } else {
                aVar = it.next();
                if (com.estrongs.android.util.ak.d(aVar.b(), str)) {
                    break;
                }
            }
        }
        cdVar.f1551b.remove(aVar);
        this.n.post(new bg(this));
    }

    @Override // android.widget.ExpandableListAdapter
    public long getChildId(int i, int i2) {
        return i2;
    }

    @Override // android.widget.ExpandableListAdapter
    public View getChildView(int i, int i2, boolean z, View view, ViewGroup viewGroup) {
        int intValue;
        View view2 = (view == null || (((intValue = ((Integer) view.getTag()).intValue()) != 0 || i == 0) && (intValue == 0 || i != 0))) ? view : null;
        if (view2 == null) {
            view2 = com.estrongs.android.pop.esclasses.e.a(this.c).inflate(i == 0 ? C0000R.layout.item_listview_favourite : C0000R.layout.list_item_with_switch, (ViewGroup) null);
            view2.setBackgroundResource(C0000R.drawable.access_content_icon_bg_selector);
            view2.setTag(Integer.valueOf(i));
            view2.setId((i * 100) + i2);
        }
        View view3 = view2;
        a child = getChild(i, i2);
        if (child != null) {
            if (i == 0) {
                ((TextView) view3.findViewById(C0000R.id.text_listview_favourite)).setText(child.f1488b);
                ((TextView) view3.findViewById(C0000R.id.path_listview_favourite)).setText(com.estrongs.android.util.ak.bv(child.c));
                ((ImageView) view3.findViewById(C0000R.id.image_listview_favourite)).setImageDrawable(child.f1487a);
                ((LinearLayout) view3.findViewById(C0000R.id.delete)).setOnClickListener(new bh(this, child));
                bi biVar = new bi(this, child, i, i2);
                view3.setOnLongClickListener(biVar);
                view3.setTag(C0000R.layout.item_listview_favourite, biVar);
            } else {
                TextView textView = (TextView) view3.findViewById(C0000R.id.label);
                textView.setTextColor(this.o.d(C0000R.color.access_content_name_text));
                textView.setText(child.f1488b);
                ((ImageView) view3.findViewById(C0000R.id.icon)).setImageDrawable(child.f1487a);
                SimpleSwitchButton simpleSwitchButton = (SimpleSwitchButton) view3.findViewById(C0000R.id.switchWidget);
                if (child.f) {
                    simpleSwitchButton.setVisibility(0);
                    simpleSwitchButton.setOnCheckedChangeListener(null);
                    simpleSwitchButton.setChecked(child.a());
                    simpleSwitchButton.setOnCheckedChangeListener(child.g);
                } else {
                    simpleSwitchButton.setVisibility(8);
                }
                if (i == 1 || i == 2 || i == 3) {
                    bl blVar = new bl(this, i, i2, child);
                    view3.setOnLongClickListener(blVar);
                    view3.setTag(C0000R.layout.item_listview_favourite, blVar);
                } else if (i == 4) {
                    view3.setOnLongClickListener(null);
                    view3.setTag(C0000R.layout.item_listview_favourite, null);
                }
            }
            if (child.d != null) {
                view3.setOnClickListener(new bn(this, i, i2));
            } else {
                view3.setOnClickListener(new bo(this));
            }
        }
        return view3;
    }

    @Override // android.widget.ExpandableListAdapter
    public int getChildrenCount(int i) {
        if (getGroup(i) == null || getGroup(i).f1551b == null) {
            return 0;
        }
        return getGroup(i).f1551b.size();
    }

    @Override // android.widget.ExpandableListAdapter
    public int getGroupCount() {
        if (this.m != null) {
            return this.m.size();
        }
        return 0;
    }

    @Override // android.widget.ExpandableListAdapter
    public long getGroupId(int i) {
        return i;
    }

    @Override // android.widget.ExpandableListAdapter
    public View getGroupView(int i, boolean z, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = com.estrongs.android.pop.esclasses.e.a(this.c).inflate(C0000R.layout.group_new_navi, (ViewGroup) null);
            view.setBackgroundResource(C0000R.drawable.access_tab_bg_selector);
            view.setMinimumHeight(com.estrongs.android.ui.d.a.a(this.c, 48.0f));
        }
        ((TextView) view.findViewById(C0000R.id.label)).setText(getGroup(i).f1550a);
        ImageView imageView = (ImageView) view.findViewById(C0000R.id.indicator);
        if (z) {
            imageView.setImageDrawable(this.f);
        } else {
            imageView.setImageDrawable(this.g);
        }
        return view;
    }

    @Override // android.widget.ExpandableListAdapter
    public boolean hasStableIds() {
        return true;
    }

    @Override // android.widget.ExpandableListAdapter
    public boolean isChildSelectable(int i, int i2) {
        return true;
    }

    @Override // android.widget.BaseExpandableListAdapter
    public void notifyDataSetChanged() {
        b();
        cd cdVar = this.m.get(0);
        cdVar.f1551b.clear();
        a(cdVar);
        super.notifyDataSetChanged();
    }

    @Override // android.widget.BaseExpandableListAdapter, android.widget.ExpandableListAdapter
    public void onGroupCollapsed(int i) {
        this.i.putBoolean("group" + i, false);
        this.i.commit();
        Message message = new Message();
        message.what = 1;
        message.arg1 = i;
        message.arg2 = 1;
        this.n.sendMessage(message);
    }

    @Override // android.widget.BaseExpandableListAdapter, android.widget.ExpandableListAdapter
    public void onGroupExpanded(int i) {
        this.i.putBoolean("group" + i, true);
        this.i.commit();
        Message message = new Message();
        message.what = 1;
        message.arg1 = i;
        message.arg2 = 0;
        this.n.sendMessage(message);
    }
}

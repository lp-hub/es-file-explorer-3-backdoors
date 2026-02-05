package com.estrongs.android.ui.a;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes.dex */
public class i extends BaseExpandableListAdapter {

    /* renamed from: a, reason: collision with root package name */
    private Context f1586a;

    /* renamed from: b, reason: collision with root package name */
    private Handler f1587b;
    private ArrayList<n> c;
    private Drawable d;
    private Drawable e;
    private PackageManager g;
    private final int f = 3;
    private HashMap<String, Thread> h = new HashMap<>();

    public i(Context context, Handler handler) {
        this.f1586a = context;
        this.f1587b = handler;
        this.g = this.f1586a.getPackageManager();
        this.e = com.estrongs.android.ui.theme.al.a(this.f1586a).a(C0000R.drawable.access_tab_down);
        this.d = com.estrongs.android.ui.theme.al.a(this.f1586a).a(C0000R.drawable.access_tab_up);
        a();
    }

    private void a() {
        j jVar = null;
        this.c = new ArrayList<>();
        n nVar = new n(this, jVar);
        nVar.f1594a = b(C0000R.string.open_folder_title);
        this.c.add(nVar);
        n nVar2 = new n(this, jVar);
        nVar2.f1594a = b(C0000R.string.gesture_action_group_common);
        nVar2.f1595b = new LinkedList();
        String[] strArr = {"back", "refresh", "close_current", "exit", "show_navi", "open_settings"};
        for (int i = 0; i < strArr.length; i++) {
            m mVar = new m(this);
            mVar.c = strArr[i];
            mVar.f1593b = com.estrongs.android.ui.guesture.d.a(this.f1586a, strArr[i]);
            nVar2.f1595b.add(mVar);
        }
        this.c.add(nVar2);
        n nVar3 = new n(this, jVar);
        nVar3.f1594a = b(C0000R.string.tool_multi_window);
        nVar3.f1595b = new LinkedList();
        LinkedList linkedList = new LinkedList();
        linkedList.add("open_lib_pic");
        linkedList.add("open_lib_music");
        linkedList.add("open_lib_video");
        linkedList.add("open_lib_text");
        linkedList.add("open_windowsmb://");
        if (!com.estrongs.android.pop.m.P) {
            linkedList.add("open_windownet://");
        }
        if (!com.estrongs.android.pop.m.R && com.estrongs.android.pop.utils.bs.a()) {
            linkedList.add("open_windowpcs://");
        }
        linkedList.add("open_windowftp://");
        if (com.estrongs.android.pop.m.d) {
            linkedList.add("open_windowbt://");
        }
        if (com.estrongs.android.pop.m.f) {
            linkedList.add("open_windowapp://user");
        }
        if (!com.estrongs.android.pop.m.O) {
            linkedList.add("open_windowdownload://");
        }
        if (!com.estrongs.android.pop.m.v) {
            linkedList.add("open_windowtask_manager");
        }
        linkedList.add("open_windowdu://");
        if (!com.estrongs.android.pop.m.Z) {
            linkedList.add("open_windowremote://");
        }
        if (!com.estrongs.android.pop.m.x) {
            linkedList.add("open_windownet_manager");
        }
        if (!com.estrongs.android.pop.m.aa) {
            linkedList.add("open_windowclipboard");
        }
        if (!com.estrongs.android.pop.m.U) {
            linkedList.add("open_windowhide_list");
        }
        if (!com.estrongs.android.pop.m.w) {
            linkedList.add("open_windowroot_explorer");
        }
        for (int i2 = 0; i2 < linkedList.size(); i2++) {
            m mVar2 = new m(this);
            mVar2.c = (String) linkedList.get(i2);
            mVar2.f1593b = com.estrongs.android.ui.guesture.d.b(this.f1586a, mVar2.c);
            nVar3.f1595b.add(mVar2);
        }
        this.c.add(nVar3);
        n nVar4 = new n(this, jVar);
        nVar4.f1594a = b(C0000R.string.gesture_action_group_app);
        nVar4.f1595b = new LinkedList();
        this.c.add(nVar4);
        new l(this, jVar).execute(new Void[0]);
    }

    private String b(int i) {
        return this.f1586a.getString(i);
    }

    @Override // android.widget.ExpandableListAdapter
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public m getChild(int i, int i2) {
        try {
            return getGroup(i).f1595b.get(i2);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // android.widget.ExpandableListAdapter
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public n getGroup(int i) {
        return this.c.get(i);
    }

    @Override // android.widget.ExpandableListAdapter
    public long getChildId(int i, int i2) {
        return i2;
    }

    @Override // android.widget.ExpandableListAdapter
    public View getChildView(int i, int i2, boolean z, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = com.estrongs.android.pop.esclasses.e.a(this.f1586a).inflate(C0000R.layout.item_common_dialog_choice, (ViewGroup) null);
            int paddingLeft = view.getPaddingLeft();
            int paddingRight = view.getPaddingRight();
            view.setBackgroundResource(C0000R.drawable.popupbox_sublist_selector);
            view.setPadding(paddingLeft, 0, paddingRight, 0);
        }
        m child = getChild(i, i2);
        ImageView imageView = (ImageView) view.findViewById(C0000R.id.common_dialog_item_icon);
        if (child.f1592a == null) {
            imageView.setVisibility(8);
        } else {
            imageView.setVisibility(0);
            imageView.setImageDrawable(child.f1592a);
        }
        ((TextView) view.findViewById(C0000R.id.common_dialog_item_text)).setText(child.f1593b);
        ((RadioButton) view.findViewById(C0000R.id.common_dialog_item_radio)).setVisibility(8);
        if (i == 3 && child.f1592a == null && this.h.get(child.c) == null) {
            j jVar = new j(this, child);
            jVar.start();
            this.h.put(child.c, jVar);
        }
        return view;
    }

    @Override // android.widget.ExpandableListAdapter
    public int getChildrenCount(int i) {
        List<m> list = getGroup(i).f1595b;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // android.widget.ExpandableListAdapter
    public int getGroupCount() {
        return 4;
    }

    @Override // android.widget.ExpandableListAdapter
    public long getGroupId(int i) {
        return i;
    }

    @Override // android.widget.ExpandableListAdapter
    public View getGroupView(int i, boolean z, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = com.estrongs.android.pop.esclasses.e.a(this.f1586a).inflate(C0000R.layout.group_new_navi, (ViewGroup) null);
            view.setMinimumHeight(com.estrongs.android.ui.d.a.a(this.f1586a, 48.0f));
        }
        n group = getGroup(i);
        TextView textView = (TextView) view.findViewById(C0000R.id.label);
        textView.setTextColor(com.estrongs.android.ui.theme.al.a(this.f1586a).d(C0000R.color.popupbox_content_text));
        textView.setText(group.f1594a);
        ImageView imageView = (ImageView) view.findViewById(C0000R.id.indicator);
        if (i > 0) {
            if (z) {
                imageView.setImageDrawable(this.d);
            } else {
                imageView.setImageDrawable(this.e);
            }
            imageView.setVisibility(0);
        } else {
            imageView.setVisibility(8);
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

    @Override // android.widget.BaseExpandableListAdapter, android.widget.ExpandableListAdapter
    public void onGroupCollapsed(int i) {
        Message message = new Message();
        message.what = 1;
        message.arg1 = i;
        message.arg2 = 1;
        this.f1587b.sendMessage(message);
    }

    @Override // android.widget.BaseExpandableListAdapter, android.widget.ExpandableListAdapter
    public void onGroupExpanded(int i) {
        Message message = new Message();
        message.what = 1;
        message.arg1 = i;
        message.arg2 = 0;
        this.f1587b.sendMessage(message);
    }
}

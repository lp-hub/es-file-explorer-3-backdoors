package com.estrongs.android.ui.b;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class az extends BaseAdapter {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ av f1649a;

    /* renamed from: b, reason: collision with root package name */
    private com.estrongs.android.pop.q f1650b;
    private LinkedList<String> c = new LinkedList<>();
    private boolean d;

    public az(av avVar, boolean z) {
        Context context;
        this.f1649a = avVar;
        this.d = z;
        if (this.d) {
            context = avVar.f1643b;
            this.f1650b = com.estrongs.android.pop.q.a(context);
            b();
        }
    }

    private void b() {
        this.c = this.f1650b.O();
    }

    public LinkedList<String> a() {
        return this.c;
    }

    public void a(int i) {
        List list;
        Context context;
        list = this.f1649a.d;
        String str = (String) list.get(i);
        if (this.c.contains(str)) {
            this.c.remove(str);
        } else if (this.c.size() == 8) {
            context = this.f1649a.f1643b;
            com.estrongs.android.ui.view.z.a(context, C0000R.string.toast_invalid_window_count, 0).show();
        } else {
            this.c.add(str);
        }
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List list;
        List list2;
        list = this.f1649a.d;
        if (list == null) {
            return 0;
        }
        list2 = this.f1649a.d;
        return list2.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        List list;
        List list2;
        Context context;
        if (view == null) {
            context = this.f1649a.f1643b;
            view = com.estrongs.android.pop.esclasses.e.a(context).inflate(C0000R.layout.item_common_dialog_multi_choice, (ViewGroup) null);
        }
        ((ImageView) view.findViewById(C0000R.id.icon)).setVisibility(8);
        TextView textView = (TextView) view.findViewById(C0000R.id.common_dialog_item_text);
        textView.setSingleLine(true);
        list = this.f1649a.c;
        textView.setText((CharSequence) list.get(i));
        CheckBox checkBox = (CheckBox) view.findViewById(C0000R.id.common_dialog_item_checkbox);
        if (this.d) {
            checkBox.setVisibility(0);
            LinkedList<String> linkedList = this.c;
            list2 = this.f1649a.d;
            checkBox.setChecked(linkedList.contains(list2.get(i)));
        } else {
            checkBox.setVisibility(8);
        }
        return view;
    }
}

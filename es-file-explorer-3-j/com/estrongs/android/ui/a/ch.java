package com.estrongs.android.ui.a;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.app.eh;
import java.util.List;

/* loaded from: classes.dex */
public class ch extends BaseAdapter implements AdapterView.OnItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    com.estrongs.android.ui.theme.al f1555a;

    /* renamed from: b, reason: collision with root package name */
    eh f1556b;
    private Context c;
    private List<com.estrongs.android.pop.app.a.ag> d;

    public ch(Context context, boolean z) {
        this.c = context;
        try {
            if (!com.estrongs.android.util.ax.c().a()) {
                com.estrongs.android.util.ax.c().b();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.d = com.estrongs.android.pop.app.a.aj.a().j();
        this.f1555a = com.estrongs.android.ui.theme.al.a(this.c);
    }

    public void a(eh ehVar) {
        this.f1556b = ehVar;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        if (this.d != null) {
            return this.d.size() + 1;
        }
        return 1;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        if (i == 0) {
            return com.estrongs.android.pop.app.a.aj.a().e();
        }
        if (this.d != null) {
            return this.d.get(i - 1);
        }
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = com.estrongs.android.pop.esclasses.e.a(this.c).inflate(C0000R.layout.item_listview_history, (ViewGroup) null);
        }
        ImageView imageView = (ImageView) view.findViewById(C0000R.id.image_item_listview_history);
        imageView.setImageDrawable(this.f1555a.a(C0000R.drawable.toolbar_playlist));
        com.estrongs.android.pop.app.a.ag agVar = (com.estrongs.android.pop.app.a.ag) getItem(i);
        if (agVar != null) {
            if (agVar == com.estrongs.android.pop.app.a.aj.a().b()) {
                imageView.setImageDrawable(this.f1555a.a(C0000R.drawable.toolbar_playlist_playing));
                view.setBackgroundResource(C0000R.drawable.popupbox_listview_selector);
            } else if (agVar == com.estrongs.android.pop.app.a.aj.a().e()) {
                imageView.setImageDrawable(this.f1555a.a(C0000R.drawable.toolbar_music));
                view.setBackgroundResource(C0000R.drawable.background_history_category);
            } else {
                view.setBackgroundResource(C0000R.drawable.popupbox_listview_selector);
            }
            TextView textView = (TextView) view.findViewById(C0000R.id.text_listview_history);
            TextView textView2 = (TextView) view.findViewById(C0000R.id.path_item_listview_history);
            String a2 = agVar.a();
            if (a2 == null) {
                textView2.setText(agVar.b());
            } else {
                textView2.setText(a2);
            }
            textView2.setVisibility(0);
            textView.setVisibility(8);
        }
        return view;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        this.d = com.estrongs.android.pop.app.a.aj.a().j();
        super.notifyDataSetChanged();
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        com.estrongs.android.pop.app.a.ag agVar = (com.estrongs.android.pop.app.a.ag) getItem(i);
        if (agVar != null) {
            this.f1556b.a(agVar);
        }
    }
}

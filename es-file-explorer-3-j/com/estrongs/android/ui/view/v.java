package com.estrongs.android.ui.view;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes.dex */
public class v extends BaseAdapter implements AdapterView.OnItemClickListener {

    /* renamed from: b, reason: collision with root package name */
    com.estrongs.android.ui.theme.al f2652b;
    private List<Integer> d;
    private Handler e;
    private com.estrongs.android.pop.app.a.ag f;
    private Context g;
    private boolean c = false;
    private int h = -1;
    private boolean i = false;
    private boolean j = false;
    private int k = -1;

    /* renamed from: a, reason: collision with root package name */
    com.estrongs.android.pop.app.a.ab f2651a = null;

    public v(Context context, Handler handler) {
        this.g = context;
        this.e = handler;
        this.f2652b = com.estrongs.android.ui.theme.al.a(this.g);
        i();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a(com.estrongs.android.pop.app.a.af afVar) {
        String str = afVar.f != null ? afVar.f : "";
        return afVar.g == null ? str + this.g.getString(C0000R.string.audio_player_artist_unknown) : str;
    }

    private void i() {
        this.f2651a = new w(this);
    }

    public com.estrongs.android.pop.app.a.ag a() {
        return this.f;
    }

    public void a(int i, boolean z, boolean z2) {
        this.h = i;
        this.i = z;
        this.j = z2;
    }

    public void a(com.estrongs.android.pop.app.a.ag agVar) {
        this.f = agVar;
    }

    public void a(boolean z) {
        if (this.c != z) {
            this.c = z;
            if (!z) {
                this.d.clear();
            } else if (this.d == null) {
                this.d = new LinkedList();
            } else {
                this.d.clear();
            }
            this.e.sendEmptyMessage(1200001);
            notifyDataSetChanged();
        }
    }

    public boolean a(int i) {
        return this.d.contains(Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean a(com.estrongs.android.pop.app.a.ad adVar) {
        return adVar.d && (adVar.c.getTag() == null || adVar.f394b == adVar.c.getTag());
    }

    public void b(int i) {
        this.k = i;
    }

    public boolean b() {
        return this.c;
    }

    public boolean c() {
        int[] h = h();
        return h != null && h[1] - h[0] >= this.d.size();
    }

    public List<com.estrongs.android.pop.app.a.af> d() {
        LinkedList linkedList = new LinkedList();
        Collections.sort(this.d);
        Iterator<Integer> it = this.d.iterator();
        while (it.hasNext()) {
            linkedList.add((com.estrongs.android.pop.app.a.af) getItem(it.next().intValue()));
        }
        return linkedList;
    }

    public void e() {
        this.d.clear();
        int count = getCount();
        for (int i = 0; i < count; i++) {
            this.d.add(Integer.valueOf(i));
        }
        this.e.sendEmptyMessage(1200002);
        notifyDataSetChanged();
    }

    public void f() {
        this.d.clear();
        this.e.sendEmptyMessage(1200002);
        notifyDataSetChanged();
    }

    public void g() {
        int[] h = h();
        if (h != null) {
            this.d.clear();
            for (int i = h[0]; i <= h[1]; i++) {
                this.d.add(Integer.valueOf(i));
            }
            this.e.sendEmptyMessage(1200002);
            notifyDataSetChanged();
        }
    }

    @Override // android.widget.Adapter
    public int getCount() {
        if (this.f != null) {
            return this.f.c().size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        if (this.f != null) {
            return this.f.c().get(i);
        }
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        y yVar;
        if (view == null) {
            view = com.estrongs.android.pop.esclasses.e.a(this.g).inflate(C0000R.layout.audio_playlist_item, (ViewGroup) null);
            y yVar2 = new y();
            yVar2.f2656a = (TextView) view.findViewById(C0000R.id.title);
            yVar2.f2657b = (TextView) view.findViewById(C0000R.id.description);
            yVar2.c = (TextView) view.findViewById(C0000R.id.size);
            yVar2.d = (ProgressBar) view.findViewById(C0000R.id.loading_bar);
            yVar2.e = (ImageView) view.findViewById(C0000R.id.audio_song_play_indicator);
            yVar2.f = (CheckBox) view.findViewById(C0000R.id.checkbox);
            view.setTag(C0000R.layout.audio_playlist_item, yVar2);
            yVar = yVar2;
        } else {
            yVar = (y) view.getTag(C0000R.layout.audio_playlist_item);
        }
        com.estrongs.android.pop.app.a.af afVar = (com.estrongs.android.pop.app.a.af) getItem(i);
        view.setTag(afVar);
        if (i == this.k) {
            view.setVisibility(4);
        } else {
            view.setVisibility(0);
            TextView textView = (TextView) view.findViewById(C0000R.id.pos);
            textView.setText(String.valueOf(i + 1));
            if (afVar.c()) {
                yVar.f2656a.setText((afVar.e == null || "".equals(afVar.e)) ? com.estrongs.android.util.ak.d(afVar.f397b) : afVar.e);
                yVar.f2657b.setText(a(afVar));
                yVar.c.setText(afVar.a());
            } else {
                yVar.f2656a.setText(com.estrongs.android.util.ak.d(afVar.f397b));
                yVar.f2657b.setText("");
                yVar.c.setText("");
                this.f2651a.a(i, afVar, view);
            }
            if (this.c) {
                yVar.f.setVisibility(0);
                if (a(i)) {
                    yVar.f.setChecked(true);
                } else {
                    yVar.f.setChecked(false);
                }
            } else {
                yVar.f.setVisibility(8);
            }
            if (this.h == i) {
                yVar.f2656a.setTextColor(-11751937);
                textView.setTextColor(-11751937);
                yVar.f2657b.setTextColor(-11751937);
                yVar.c.setTextColor(-11751937);
                if (this.j) {
                    yVar.d.setVisibility(0);
                } else {
                    yVar.d.setVisibility(8);
                }
            } else {
                yVar.f2656a.setTextColor(this.f2652b.d(C0000R.color.playlist_item_title));
                textView.setTextColor(this.f2652b.d(C0000R.color.playlist_item_title));
                yVar.f2657b.setTextColor(this.f2652b.d(C0000R.color.playlist_item_description));
                yVar.c.setTextColor(this.f2652b.d(C0000R.color.playlist_item_description));
                yVar.d.setVisibility(8);
            }
        }
        return view;
    }

    protected int[] h() {
        if (this.d.size() < 2) {
            return null;
        }
        int intValue = this.d.get(0).intValue();
        int intValue2 = this.d.get(0).intValue();
        Iterator<Integer> it = this.d.iterator();
        while (true) {
            int i = intValue;
            int i2 = intValue2;
            if (!it.hasNext()) {
                return new int[]{i, i2};
            }
            intValue2 = it.next().intValue();
            if (i > intValue2) {
                intValue = intValue2;
                intValue2 = i2;
            } else if (i2 < intValue2) {
                intValue = i;
            } else {
                intValue2 = i2;
                intValue = i;
            }
        }
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        if (!this.c) {
            Message obtainMessage = this.e.obtainMessage(1200003);
            obtainMessage.arg1 = i;
            obtainMessage.arg2 = this.h == i ? 1 : 0;
            this.e.sendMessage(obtainMessage);
            return;
        }
        if (this.d.contains(Integer.valueOf(i))) {
            this.d.remove(Integer.valueOf(i));
        } else {
            this.d.add(Integer.valueOf(i));
        }
        this.e.sendEmptyMessage(1200002);
        notifyDataSetChanged();
    }
}

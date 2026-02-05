package com.estrongs.android.ui.view;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.baidu.sapi2.callback.LoginCallBack;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
public class RecommendListView extends ListView {

    /* renamed from: a, reason: collision with root package name */
    private Context f2586a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f2587b;
    private boolean c;
    private com.estrongs.android.pop.view.utils.v[] d;
    private ay e;
    private Object f;
    private Handler g;
    private com.estrongs.android.ui.theme.al h;
    private View.OnClickListener i;
    private SparseArray<View> j;

    public RecommendListView(Context context) {
        super(context);
        this.f2587b = false;
        this.c = false;
        this.d = null;
        this.e = null;
        this.f = new Object();
        this.i = new ax(this);
        this.j = new SparseArray<>();
        this.f2586a = context;
        this.h = com.estrongs.android.ui.theme.al.a(this.f2586a);
    }

    public RecommendListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2587b = false;
        this.c = false;
        this.d = null;
        this.e = null;
        this.f = new Object();
        this.i = new ax(this);
        this.j = new SparseArray<>();
        this.f2586a = context;
        this.h = com.estrongs.android.ui.theme.al.a(this.f2586a);
    }

    public RecommendListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f2587b = false;
        this.c = false;
        this.d = null;
        this.e = null;
        this.f = new Object();
        this.i = new ax(this);
        this.j = new SparseArray<>();
        this.f2586a = context;
        this.h = com.estrongs.android.ui.theme.al.a(this.f2586a);
    }

    private int a(com.estrongs.android.util.x xVar) {
        com.estrongs.android.pop.view.utils.v vVar = (com.estrongs.android.pop.view.utils.v) xVar.d;
        if (this.d == null) {
            return -1;
        }
        for (int i = 0; i < this.d.length; i++) {
            if (vVar == this.d[i]) {
                return i;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(View view, com.estrongs.android.pop.view.utils.v vVar) {
        if (view == null || vVar == null) {
            return;
        }
        LinearLayout linearLayout = (LinearLayout) view.findViewById(C0000R.id.recomm_item_desc_layout);
        LinearLayout linearLayout2 = (LinearLayout) view.findViewById(C0000R.id.recomm_item_download_layout);
        TextView textView = (TextView) view.findViewById(C0000R.id.recomm_item_download_size);
        TextView textView2 = (TextView) view.findViewById(C0000R.id.recomm_item_download_percent);
        ProgressBar progressBar = (ProgressBar) view.findViewById(C0000R.id.recomm_item_download_progress);
        Button button = (Button) view.findViewById(C0000R.id.recomm_item_install_stop);
        TextView textView3 = (TextView) view.findViewById(C0000R.id.recomm_item_name);
        TextView textView4 = (TextView) view.findViewById(C0000R.id.recomm_item_short_desc);
        linearLayout2.setVisibility(0);
        linearLayout.setVisibility(8);
        if (vVar.q == 1) {
            button.setText(this.f2586a.getText(C0000R.string.action_stop));
            long j = vVar.t;
            long j2 = vVar.u;
            textView.setText(com.estrongs.fs.c.d.c(j2) + "/" + com.estrongs.fs.c.d.c(j));
            int i = j == 0 ? 0 : (int) ((j2 * 1000) / j);
            progressBar.setMax(LoginCallBack.REQUEST_LOGINPROTECT);
            progressBar.setProgress(i);
            textView2.setText((i / 10) + "%");
            return;
        }
        if (vVar.q == 0) {
            textView.setText(this.f2586a.getText(C0000R.string.progress_connecting));
            progressBar.setMax(LoginCallBack.REQUEST_LOGINPROTECT);
            progressBar.setProgress(0);
            textView2.setText("0%");
            if (vVar.v == 0) {
                vVar.v = com.estrongs.android.pop.view.utils.n.b().b(vVar);
            }
            if (vVar.v == 0 || vVar.v == 1) {
                if (vVar.e == null || !vVar.e.startsWith("market://")) {
                    button.setText(this.f2586a.getText(C0000R.string.action_download));
                } else {
                    button.setText(this.f2586a.getText(C0000R.string.recommend_button_market_download));
                }
                button.setBackgroundResource(C0000R.drawable.component_child_download_expanded_selector);
            } else if (vVar.v == 2) {
                button.setText(this.f2586a.getText(C0000R.string.recommend_button_upgrade));
                button.setBackgroundResource(C0000R.drawable.component_child_download_expanded_selector);
            } else if (vVar.v == 3) {
                button.setText(this.f2586a.getText(C0000R.string.recommend_button_installed));
                button.setBackgroundResource(C0000R.drawable.component_child_update_expanded_selector);
            }
            linearLayout2.setVisibility(8);
            linearLayout.setVisibility(0);
            textView3.setText(vVar.c);
            textView4.setText(vVar.g);
            return;
        }
        if (vVar.q == 2) {
            textView.setText(this.f2586a.getText(C0000R.string.recommend_button_download_fail));
            long j3 = vVar.t;
            int i2 = j3 == 0 ? 0 : (int) ((vVar.u * 1000) / j3);
            progressBar.setMax(LoginCallBack.REQUEST_LOGINPROTECT);
            progressBar.setProgress(i2);
            textView2.setText((i2 / 10) + "%");
            button.setText(this.f2586a.getText(C0000R.string.message_retry));
            button.setBackgroundResource(C0000R.drawable.component_child_download_expanded_selector);
            return;
        }
        if (vVar.q == 3) {
            String c = com.estrongs.fs.c.d.c(vVar.t);
            textView.setText(c + "/" + c);
            progressBar.setMax(LoginCallBack.REQUEST_LOGINPROTECT);
            progressBar.setProgress(LoginCallBack.REQUEST_LOGINPROTECT);
            textView2.setText("100%");
            button.setText(this.f2586a.getText(C0000R.string.button_install));
            button.setBackgroundResource(C0000R.drawable.component_child_download_expanded_selector);
            return;
        }
        if (vVar.q == 5) {
            textView.setText(this.f2586a.getText(C0000R.string.progress_connecting));
            button.setText(this.f2586a.getText(C0000R.string.action_stop));
            button.setBackgroundResource(C0000R.drawable.component_child_stop_expanded_selector);
        } else if (vVar.q == 4) {
            textView.setText(com.estrongs.fs.c.d.c(vVar.u) + "/" + com.estrongs.fs.c.d.c(vVar.t));
            int i3 = vVar.t == 0 ? 0 : (int) ((vVar.u * 1000) / vVar.t);
            progressBar.setMax(LoginCallBack.REQUEST_LOGINPROTECT);
            progressBar.setProgress(i3);
            textView2.setText((i3 / 10) + "%");
            button.setText(this.f2586a.getText(C0000R.string.recommend_button_continue));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i) {
        Message message = new Message();
        message.arg1 = 123465;
        message.arg2 = i;
        synchronized (this.f) {
            if (this.g != null) {
                this.g.sendMessage(message);
            }
        }
    }

    public void a() {
        com.estrongs.android.pop.view.utils.n.b().e();
        if (this.e != null) {
            int firstVisiblePosition = getFirstVisiblePosition();
            this.e.notifyDataSetChanged();
            setSelection(firstVisiblePosition);
        }
    }

    public void a(int i) {
        com.estrongs.android.pop.view.utils.n.b().a(this.d[i], 0);
        if (this.c) {
            return;
        }
        int firstVisiblePosition = getFirstVisiblePosition();
        int lastVisiblePosition = getLastVisiblePosition();
        if (firstVisiblePosition > i || i > lastVisiblePosition) {
            return;
        }
        a(this.j.get(i), this.d[i]);
    }

    public void a(Handler handler, com.estrongs.android.pop.view.utils.v[] vVarArr) {
        synchronized (this.f) {
            this.g = handler;
        }
        com.estrongs.android.pop.view.utils.n.b().a(handler);
        if (this.e == null) {
            if (vVarArr != null && vVarArr.length > 0) {
                this.d = vVarArr;
                this.e = new ay(this, this.f2586a, C0000R.layout.recomm_list_item, this.d);
                setAdapter((ListAdapter) this.e);
                this.e.notifyDataSetChanged();
            }
        } else if (getAdapter() == null) {
            setAdapter((ListAdapter) this.e);
            this.e.notifyDataSetChanged();
        }
        a();
    }

    public void a(Object obj) {
        int a2 = a((com.estrongs.android.util.x) obj);
        if (this.c) {
            return;
        }
        int firstVisiblePosition = getFirstVisiblePosition();
        int lastVisiblePosition = getLastVisiblePosition();
        if (firstVisiblePosition > a2 || a2 > lastVisiblePosition) {
            return;
        }
        a(this.j.get(a2), this.d[a2]);
    }

    public void a(boolean z) {
        this.f2587b = z;
    }

    public void a(com.estrongs.android.pop.view.utils.v[] vVarArr) {
        if (this.c || vVarArr == null) {
            return;
        }
        this.d = vVarArr;
        this.e = new ay(this, this.f2586a, C0000R.layout.recomm_list_item, this.d);
        setAdapter((ListAdapter) this.e);
        int firstVisiblePosition = getFirstVisiblePosition();
        this.e.notifyDataSetChanged();
        setSelection(firstVisiblePosition);
    }

    public void b(Object obj) {
        int a2 = a((com.estrongs.android.util.x) obj);
        if (this.c) {
            return;
        }
        int firstVisiblePosition = getFirstVisiblePosition();
        int lastVisiblePosition = getLastVisiblePosition();
        if (firstVisiblePosition <= a2 && a2 <= lastVisiblePosition) {
            a(this.j.get(a2), this.d[a2]);
        }
        try {
            this.f2586a.startActivity(com.estrongs.android.pop.app.b.a(com.estrongs.android.pop.view.utils.n.a(this.d[a2].f)));
        } catch (NullPointerException e) {
        }
    }

    public void c(Object obj) {
        int a2 = a((com.estrongs.android.util.x) obj);
        if (this.c) {
            return;
        }
        int firstVisiblePosition = getFirstVisiblePosition();
        int lastVisiblePosition = getLastVisiblePosition();
        if (firstVisiblePosition > a2 || a2 > lastVisiblePosition) {
            return;
        }
        a(this.j.get(a2), this.d[a2]);
    }

    public void d(Object obj) {
        int a2 = a((com.estrongs.android.util.x) obj);
        if (this.c) {
            return;
        }
        int firstVisiblePosition = getFirstVisiblePosition();
        int lastVisiblePosition = getLastVisiblePosition();
        if (firstVisiblePosition > a2 || a2 > lastVisiblePosition) {
            return;
        }
        a(this.j.get(a2), this.d[a2]);
    }

    public void e(Object obj) {
        int a2;
        View view;
        if (!this.c && (a2 = a((com.estrongs.android.util.x) obj)) >= 0 && a2 < this.d.length && this.d[a2].k != null) {
            int firstVisiblePosition = getFirstVisiblePosition();
            int lastVisiblePosition = getLastVisiblePosition();
            if (firstVisiblePosition > a2 || lastVisiblePosition < a2 || (view = this.j.get(a2)) == null) {
                return;
            }
            ((ImageView) view.findViewById(C0000R.id.recomm_item_icon)).setImageBitmap(this.d[a2].k);
        }
    }
}

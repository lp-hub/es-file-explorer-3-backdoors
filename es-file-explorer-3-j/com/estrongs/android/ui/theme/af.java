package com.estrongs.android.ui.theme;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class af extends BaseAdapter {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ThemeFolderActivity f2521a;

    /* renamed from: b, reason: collision with root package name */
    private Context f2522b;
    private int[] c = new int[6];
    private String[] d;
    private int e;

    public af(ThemeFolderActivity themeFolderActivity, Context context) {
        this.f2521a = themeFolderActivity;
        this.f2522b = context;
        this.c[0] = C0000R.drawable.format_folder;
        this.c[1] = C0000R.drawable.folder_yellow_full;
        this.c[2] = C0000R.drawable.folder_green;
        this.c[3] = C0000R.drawable.folder_red;
        this.c[4] = C0000R.drawable.folder_pink;
        this.c[5] = C0000R.drawable.folder_black;
        this.d = themeFolderActivity.getResources().getStringArray(C0000R.array.theme_folders);
        this.e = 0;
        String g = themeFolderActivity.g.g();
        for (int i = 0; i < this.c.length; i++) {
            if (themeFolderActivity.getResources().getResourceEntryName(this.c[i]).equals(g)) {
                this.e = i;
                return;
            }
        }
    }

    public int a() {
        return this.c[this.e];
    }

    @Override // android.widget.Adapter
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public Drawable getItem(int i) {
        return this.f2521a.f.getResources().getDrawable(this.f2521a.f.getResources().getIdentifier(this.f2521a.f2513a.e(this.c[i]), "drawable", this.f2521a.f.getPackageName()));
    }

    public Drawable b(int i) {
        return this.f2521a.f2513a.a(i % 2 == 0 ? C0000R.drawable.theme_content_bg02 : C0000R.drawable.theme_content_bg01);
    }

    public void c(int i) {
        this.e = i;
        this.f2521a.c = true;
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return 6;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = com.estrongs.android.pop.esclasses.e.a(this.f2522b).inflate(C0000R.layout.item_listview_theme_folder, (ViewGroup) null);
        }
        view.setBackgroundDrawable(b(i));
        ((ImageView) view.findViewById(C0000R.id.item_folder_image)).setImageDrawable(getItem(i));
        TextView textView = (TextView) view.findViewById(C0000R.id.item_folder_text);
        textView.setTextColor(-16777216);
        textView.setText(this.d[i]);
        RadioButton radioButton = (RadioButton) view.findViewById(C0000R.id.item_folder_checkbox);
        radioButton.setChecked(this.e == i);
        radioButton.setClickable(false);
        view.setOnClickListener(new ag(this, i));
        view.setOnTouchListener(new ah(this, i));
        return view;
    }
}

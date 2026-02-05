package com.estrongs.android.view.a;

import android.annotation.TargetApi;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.LightingColorFilter;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.widget.Button;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.q;
import jcifs.smb.WinError;

/* loaded from: classes.dex */
public class a implements MenuItem {

    /* renamed from: b, reason: collision with root package name */
    public static final b f2722b = new c();
    private int c;
    private int d;
    private int e;
    private Drawable f;
    private CharSequence g;
    private Intent h;
    private boolean i;
    private MenuItem.OnMenuItemClickListener j;
    private d k;
    private View l;
    private boolean m = true;
    private int n = Color.rgb(WinError.ERROR_NO_DATA, WinError.ERROR_NO_DATA, WinError.ERROR_NO_DATA);

    /* renamed from: a, reason: collision with root package name */
    b f2723a = f2722b;

    public a(int i, int i2) {
        this.d = i;
        this.e = i2;
    }

    public a(int i, String str) {
        this.d = i;
        this.g = str;
    }

    public a(Drawable drawable, String str) {
        this.f = drawable;
        if (this.f != null) {
            this.f.mutate();
        }
        this.g = str;
    }

    public int a() {
        return this.e;
    }

    @Override // android.view.MenuItem
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public a setNumericShortcut(char c) {
        return this;
    }

    @Override // android.view.MenuItem
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public a setShortcut(char c, char c2) {
        return this;
    }

    @Override // android.view.MenuItem
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public a setTitle(int i) {
        throw new IllegalArgumentException("Method is abandoned ! ");
    }

    @Override // android.view.MenuItem
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public a setIntent(Intent intent) {
        this.h = intent;
        return this;
    }

    @Override // android.view.MenuItem
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public a setIcon(Drawable drawable) {
        if (drawable != null) {
            drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        }
        this.f = drawable;
        if (this.f != null) {
            this.f.mutate();
        }
        if (this.l != null) {
            try {
                Button button = (Button) this.l.findViewById(C0000R.id.button_menu_bottom);
                if (q.a(this.l.getContext()).as()) {
                    button.setCompoundDrawables(null, this.f, null, null);
                } else {
                    button.setCompoundDrawables(this.f, null, null, null);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return this;
    }

    @Override // android.view.MenuItem
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public a setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.j = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public a setTitle(CharSequence charSequence) {
        this.g = charSequence;
        if (this.l != null) {
            try {
                boolean as = q.a(this.l.getContext()).as();
                Button button = (Button) this.l.findViewById(C0000R.id.button_menu_bottom);
                button.setText(as ? this.g : "");
                if (this.n != -1) {
                    button.setTextColor(this.n);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return this;
    }

    @Override // android.view.MenuItem
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public a setCheckable(boolean z) {
        this.i = z;
        return this;
    }

    public void a(View view) {
        this.l = view;
        if (this.l != null) {
            this.l.setVisibility(this.m ? 0 : 4);
        }
    }

    public void a(d dVar) {
        this.k = dVar;
    }

    public int b() {
        return this.d;
    }

    @Override // android.view.MenuItem
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public a setAlphabeticShortcut(char c) {
        return this;
    }

    @Override // android.view.MenuItem
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public a setIcon(int i) {
        throw new IllegalArgumentException("Method is abandoned ! ");
    }

    @Override // android.view.MenuItem
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public a setTitleCondensed(CharSequence charSequence) {
        return null;
    }

    @Override // android.view.MenuItem
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public a setChecked(boolean z) {
        return this;
    }

    public MenuItem.OnMenuItemClickListener c() {
        return this.j;
    }

    public a c(int i) {
        this.n = i;
        try {
            Button button = (Button) this.l.findViewById(C0000R.id.button_menu_bottom);
            if (this.n != -1) {
                button.setTextColor(this.n);
            }
        } catch (Exception e) {
        }
        return this;
    }

    @Override // android.view.MenuItem
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public a setVisible(boolean z) {
        this.m = z;
        if (this.l != null) {
            this.l.setVisibility(z ? 0 : 4);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public boolean collapseActionView() {
        return false;
    }

    @Override // android.view.MenuItem
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public a setEnabled(boolean z) {
        try {
            this.l.setEnabled(z);
            if (z) {
                if (this.f != null) {
                    this.f.setColorFilter(null);
                }
                ((Button) this.l.findViewById(C0000R.id.button_menu_bottom)).setTextColor(this.n);
            } else {
                LightingColorFilter lightingColorFilter = new LightingColorFilter(1, -7829368);
                if (this.f != null) {
                    this.f.setColorFilter(lightingColorFilter);
                }
                ((Button) this.l.findViewById(C0000R.id.button_menu_bottom)).setTextColor(-7829368);
            }
        } catch (Exception e) {
        }
        return this;
    }

    public d d() {
        return this.k;
    }

    public void e() {
        if (this.k != null) {
            this.k.a(this);
        }
    }

    @Override // android.view.MenuItem
    public boolean expandActionView() {
        return false;
    }

    public void f() {
        if (this.j != null) {
            this.j.onMenuItemClick(this);
        }
    }

    public View g() {
        return this.l;
    }

    @Override // android.view.MenuItem
    @TargetApi(14)
    public ActionProvider getActionProvider() {
        return null;
    }

    @Override // android.view.MenuItem
    public View getActionView() {
        return null;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return (char) 0;
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return 0;
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        return this.f;
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.h;
    }

    @Override // android.view.MenuItem
    public int getItemId() {
        return this.c;
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return (char) 0;
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return 0;
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return null;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitle() {
        return this.g;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        return null;
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return false;
    }

    @Override // android.view.MenuItem
    public boolean isActionViewExpanded() {
        return false;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return this.i;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return false;
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return this.l.isEnabled();
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        return this.m;
    }

    @Override // android.view.MenuItem
    @TargetApi(14)
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        return null;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionView(int i) {
        return null;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionView(View view) {
        return null;
    }

    @Override // android.view.MenuItem
    @TargetApi(14)
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        return null;
    }

    @Override // android.view.MenuItem
    public void setShowAsAction(int i) {
    }

    @Override // android.view.MenuItem
    public MenuItem setShowAsActionFlags(int i) {
        return null;
    }
}

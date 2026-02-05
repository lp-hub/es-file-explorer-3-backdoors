package com.estrongs.android.ui.b;

import android.R;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.ui.view.MaxWidthLinearLayout;

/* loaded from: classes.dex */
public class ag extends Dialog {
    Button button_cancel;
    Button button_ok;
    private boolean dismissed;
    public boolean itemsEnable;
    ar listAdapter;
    ListView listView;
    private MaxWidthLinearLayout mBodyView;
    private DialogInterface.OnClickListener mButtonListener0;
    private DialogInterface.OnClickListener mButtonListener1;
    private DialogInterface.OnClickListener mButtonListener2;
    private FrameLayout mContentContainer;
    protected View mContentView;
    protected Context mContext;
    private Drawable mIcon;
    private DialogInterface.OnClickListener mItemSelectedListener;
    private ProgressBar mProgressBar;
    private boolean mSelectable;
    private TextView messageView;
    protected com.estrongs.android.ui.theme.al themeManager;

    public ag(Context context) {
        this(context, C0000R.style.common_alert_dialog);
    }

    protected ag(Context context, int i) {
        super(context, i);
        this.dismissed = false;
        this.itemsEnable = true;
        this.mContext = context;
        init();
    }

    public ag(Context context, boolean z, DialogInterface.OnCancelListener onCancelListener) {
        super(context, z, onCancelListener);
        this.dismissed = false;
        this.itemsEnable = true;
        this.mContext = context;
        init();
    }

    private void init() {
        this.themeManager = com.estrongs.android.ui.theme.al.a(this.mContext);
        this.mSelectable = true;
        this.mBodyView = (MaxWidthLinearLayout) com.estrongs.android.pop.esclasses.e.a(this.mContext).inflate(C0000R.layout.common_alert_dialog, (ViewGroup) null);
        this.messageView = (TextView) this.mBodyView.findViewById(R.id.message);
        LinearLayout linearLayout = (LinearLayout) this.mBodyView.findViewById(C0000R.id.background_common_dialog);
        Rect rect = new Rect(linearLayout.getPaddingLeft(), linearLayout.getPaddingTop(), linearLayout.getPaddingRight(), linearLayout.getPaddingBottom());
        linearLayout.setPadding(rect.left, rect.top, rect.right, rect.bottom);
        requestWindowFeature(1);
        getWindow().setSoftInputMode(32);
        boolean a2 = com.estrongs.android.pop.utils.ca.a(this.mContext);
        boolean z = this.mContext.getResources().getConfiguration().orientation == 1;
        if (com.estrongs.android.pop.p.a() >= 14) {
            if (!a2 && !z) {
                this.mBodyView.a(this.mContext.getResources().getDisplayMetrics().heightPixels);
            } else if (a2) {
                this.mBodyView.a(this.mContext.getResources().getDisplayMetrics().widthPixels);
            } else {
                this.mBodyView.a(this.mContext.getResources().getDisplayMetrics().widthPixels);
            }
        }
        super.setContentView(this.mBodyView, new ViewGroup.LayoutParams(-2, -2));
        this.mContentContainer = (FrameLayout) this.mBodyView.findViewById(C0000R.id.content_container_common_dialog);
        this.mProgressBar = new ProgressBar(this.mContext);
        this.mProgressBar.setIndeterminateDrawable(this.mContext.getResources().getDrawable(C0000R.drawable.progress_drawable));
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        this.mContentContainer.addView(this.mProgressBar, layoutParams);
        this.mProgressBar.setVisibility(4);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        try {
            this.dismissed = true;
            super.dismiss();
        } catch (Exception e) {
        }
    }

    public Button getCancelButton() {
        return this.button_cancel;
    }

    public Button getConfirmButton() {
        return this.button_ok;
    }

    public TextView getMessageView() {
        return this.messageView;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String getString(int i) {
        return this.mContext.getString(i);
    }

    public CharSequence getTitle() {
        return ((TextView) this.mBodyView.findViewById(C0000R.id.title_common_dialog)).getText();
    }

    public void hideProgressBar() {
        this.mContentView.setVisibility(0);
        this.mProgressBar.setVisibility(4);
        setAllButtonsEnabled(true);
    }

    public boolean isDismissed() {
        return this.dismissed;
    }

    public void requestInputMethod() {
        getWindow().setSoftInputMode(5);
    }

    public void setAllButtonsEnabled(boolean z) {
        this.mBodyView.findViewById(C0000R.id.button_common_dialog_11).setEnabled(z);
        this.mBodyView.findViewById(C0000R.id.button_common_dialog_21).setEnabled(z);
        this.mBodyView.findViewById(C0000R.id.button_common_dialog_22).setEnabled(z);
        this.mBodyView.findViewById(C0000R.id.button_common_dialog_31).setEnabled(z);
        this.mBodyView.findViewById(C0000R.id.button_common_dialog_32).setEnabled(z);
        this.mBodyView.findViewById(C0000R.id.button_common_dialog_33).setEnabled(z);
    }

    public void setButton(int i, CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        if (i == -1) {
            setConfirmButton(charSequence, onClickListener);
        } else if (i == -2) {
            setCancelButton(charSequence, onClickListener);
        }
    }

    public Button setCancelButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        ((LinearLayout) this.mBodyView.findViewById(C0000R.id.group_common_dialog_3)).setVisibility(8);
        LinearLayout linearLayout = (LinearLayout) this.mBodyView.findViewById(C0000R.id.group_common_dialog_2);
        linearLayout.setVisibility(0);
        if (this.button_cancel == null) {
            if (com.estrongs.android.pop.p.a() > 10) {
                this.button_cancel = (Button) linearLayout.findViewById(C0000R.id.button_common_dialog_21);
                this.button_cancel.setBackgroundResource(C0000R.drawable.popupbox_button_cancel_left_selector);
            } else {
                this.button_cancel = (Button) linearLayout.findViewById(C0000R.id.button_common_dialog_22);
                this.button_cancel.setBackgroundResource(C0000R.drawable.popupbox_button_cancel_right_selector);
            }
        }
        this.button_cancel.setText(charSequence);
        if (onClickListener == null) {
            this.button_cancel.setOnClickListener(new ak(this));
        } else {
            this.mButtonListener1 = onClickListener;
            this.button_cancel.setOnClickListener(new al(this));
        }
        return this.button_cancel;
    }

    public Button setConfirmButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        ((LinearLayout) this.mBodyView.findViewById(C0000R.id.group_common_dialog_3)).setVisibility(8);
        LinearLayout linearLayout = (LinearLayout) this.mBodyView.findViewById(C0000R.id.group_common_dialog_2);
        linearLayout.setVisibility(0);
        if (this.button_ok == null) {
            if (com.estrongs.android.pop.p.a() > 10) {
                this.button_ok = (Button) linearLayout.findViewById(C0000R.id.button_common_dialog_22);
                this.button_ok.setBackgroundResource(C0000R.drawable.popupbox_button_confirm_right_selector);
            } else {
                this.button_ok = (Button) linearLayout.findViewById(C0000R.id.button_common_dialog_21);
                this.button_ok.setBackgroundResource(C0000R.drawable.popupbox_button_confirm_left_selector);
            }
        }
        this.button_ok.setText(charSequence);
        this.mButtonListener0 = onClickListener;
        this.button_ok.setOnClickListener(new aj(this));
        return this.button_ok;
    }

    @Override // android.app.Dialog
    public void setContentView(int i) {
        setContentView(com.estrongs.android.pop.esclasses.e.a(this.mContext).inflate(i, (ViewGroup) null));
    }

    @Override // android.app.Dialog
    public void setContentView(View view) {
        this.mContentView = view;
        this.mContentContainer.setPadding(0, com.estrongs.android.ui.d.a.a(this.mContext, 1.0f), 0, 0);
        this.mContentContainer.addView(this.mContentView, 0);
    }

    @Override // android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        this.mContentView = view;
        this.mContentContainer.addView(this.mContentView, 0, layoutParams);
    }

    public void setIcon(int i) {
        setIcon(this.mContext.getResources().getDrawable(i));
    }

    public void setIcon(Drawable drawable) {
        ImageView imageView = (ImageView) this.mBodyView.findViewById(C0000R.id.icon_common_dialog);
        LinearLayout linearLayout = (LinearLayout) this.mBodyView.findViewById(C0000R.id.title_container_common_dialog);
        this.mIcon = drawable;
        if (this.mIcon == null) {
            imageView.setVisibility(8);
            linearLayout.setGravity(17);
        } else {
            imageView.setVisibility(0);
            imageView.setImageDrawable(this.mIcon);
            linearLayout.setGravity(19);
        }
    }

    public void setItems(Drawable[] drawableArr, CharSequence[] charSequenceArr, int i, DialogInterface.OnClickListener onClickListener) {
        if (charSequenceArr == null) {
            return;
        }
        this.mItemSelectedListener = onClickListener;
        this.listView = new ListView(this.mContext);
        this.listView.setSelector(C0000R.drawable.popupbox_listview_selector);
        this.listAdapter = new ar(this, this.mContext, drawableArr, charSequenceArr, i);
        this.listView.setDivider(this.mContext.getResources().getDrawable(C0000R.drawable.toolbar_search_sp));
        this.listView.setFocusable(true);
        this.listView.setCacheColorHint(0);
        this.listView.setOnItemClickListener(new ap(this));
        this.listView.setAdapter((ListAdapter) this.listAdapter);
        setContentView(this.listView);
    }

    public void setItems(CharSequence[] charSequenceArr, int i, DialogInterface.OnClickListener onClickListener) {
        setItems(null, charSequenceArr, i, onClickListener);
    }

    public void setItemsEnable(boolean z) {
        if (this.itemsEnable != z) {
            this.itemsEnable = z;
            if (this.listAdapter != null) {
                this.listAdapter.notifyDataSetChanged();
            }
            if (this.listView != null) {
                this.listView.setEnabled(z);
            }
        }
    }

    public Button setLeftButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        ((LinearLayout) this.mBodyView.findViewById(C0000R.id.group_common_dialog_2)).setVisibility(8);
        LinearLayout linearLayout = (LinearLayout) this.mBodyView.findViewById(C0000R.id.group_common_dialog_3);
        linearLayout.setVisibility(0);
        Button button = (Button) linearLayout.findViewById(C0000R.id.button_common_dialog_31);
        button.setBackgroundResource(C0000R.drawable.popupbox_button_cancel_left_selector);
        button.setText(charSequence);
        this.mButtonListener0 = onClickListener;
        button.setOnClickListener(new am(this));
        return button;
    }

    public void setMessage(CharSequence charSequence) {
        if (charSequence == null) {
            this.messageView.setVisibility(8);
        } else {
            this.messageView.setText(charSequence);
            this.messageView.setVisibility(0);
        }
    }

    public Button setMiddleButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        ((LinearLayout) this.mBodyView.findViewById(C0000R.id.group_common_dialog_2)).setVisibility(8);
        LinearLayout linearLayout = (LinearLayout) this.mBodyView.findViewById(C0000R.id.group_common_dialog_3);
        linearLayout.setVisibility(0);
        Button button = (Button) linearLayout.findViewById(C0000R.id.button_common_dialog_32);
        button.setBackgroundResource(C0000R.drawable.popupbox_button_confirm_middle_selector);
        button.setText(charSequence);
        this.mButtonListener1 = onClickListener;
        button.setOnClickListener(new an(this));
        return button;
    }

    public Button setRightButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        ((LinearLayout) this.mBodyView.findViewById(C0000R.id.group_common_dialog_2)).setVisibility(8);
        LinearLayout linearLayout = (LinearLayout) this.mBodyView.findViewById(C0000R.id.group_common_dialog_3);
        linearLayout.setVisibility(0);
        Button button = (Button) linearLayout.findViewById(C0000R.id.button_common_dialog_33);
        button.setBackgroundResource(C0000R.drawable.popupbox_button_cancel_right_selector);
        button.setText(charSequence);
        this.mButtonListener2 = onClickListener;
        button.setOnClickListener(new ao(this));
        return button;
    }

    public void setSelectable(boolean z) {
        this.mSelectable = z;
    }

    public void setSingleButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        ((LinearLayout) this.mBodyView.findViewById(C0000R.id.group_common_dialog_2)).setVisibility(8);
        ((LinearLayout) this.mBodyView.findViewById(C0000R.id.group_common_dialog_3)).setVisibility(8);
        LinearLayout linearLayout = (LinearLayout) this.mBodyView.findViewById(C0000R.id.group_common_dialog_1);
        linearLayout.setVisibility(0);
        Button button = (Button) linearLayout.findViewById(C0000R.id.button_common_dialog_11);
        button.setBackgroundResource(C0000R.drawable.popupbox_button_cancel_single_selector);
        button.setText(charSequence);
        if (onClickListener == null) {
            button.setOnClickListener(new ah(this));
        } else {
            this.mButtonListener0 = onClickListener;
            button.setOnClickListener(new ai(this));
        }
    }

    @Override // android.app.Dialog
    public void setTitle(int i) {
        setTitle(this.mContext.getResources().getString(i));
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        ((TextView) this.mBodyView.findViewById(C0000R.id.title_common_dialog)).setText(charSequence);
    }

    @Override // android.app.Dialog
    public void show() {
        try {
            if (this.messageView.getVisibility() == 0 && this.mContentView == null) {
                this.messageView.setMinHeight(com.estrongs.android.ui.d.a.a(this.mContext, 120.0f));
            }
            super.show();
        } catch (Exception e) {
        }
    }

    public void showProgressBar() {
        this.mContentView.setVisibility(4);
        this.mProgressBar.setVisibility(0);
        setAllButtonsEnabled(false);
    }
}

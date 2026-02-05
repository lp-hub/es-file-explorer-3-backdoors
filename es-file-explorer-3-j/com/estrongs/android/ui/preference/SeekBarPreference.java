package com.estrongs.android.ui.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.preference.Preference;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
public class SeekBarPreference extends Preference implements SeekBar.OnSeekBarChangeListener {

    /* renamed from: a, reason: collision with root package name */
    private final String f2400a;

    /* renamed from: b, reason: collision with root package name */
    private int f2401b;
    private int c;
    private int d;
    private int e;
    private String f;
    private String g;
    private SeekBar h;
    private TextView i;

    public SeekBarPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2400a = getClass().getName();
        this.f2401b = 100;
        this.c = 0;
        this.d = 1;
        this.f = "";
        this.g = "";
        a(context, attributeSet);
    }

    public SeekBarPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f2400a = getClass().getName();
        this.f2401b = 100;
        this.c = 0;
        this.d = 1;
        this.f = "";
        this.g = "";
        a(context, attributeSet);
    }

    private String a(AttributeSet attributeSet, String str, String str2, String str3) {
        String attributeValue = attributeSet.getAttributeValue(str, str2);
        return attributeValue == null ? str3 : attributeValue;
    }

    private void a(Context context, AttributeSet attributeSet) {
        a(attributeSet);
        this.h = new SeekBar(context, attributeSet);
        this.h.setMax(this.f2401b - this.c);
        this.h.setOnSeekBarChangeListener(this);
    }

    private void a(AttributeSet attributeSet) {
        this.f2401b = attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "max", 100);
        this.c = attributeSet.getAttributeIntValue("http://www.estrongs.com", "min", 0);
        this.f = a(attributeSet, "http://www.estrongs.com", "unitsLeft", "");
        this.g = a(attributeSet, "http://www.estrongs.com", "unitsRight", a(attributeSet, "http://www.estrongs.com", "units", ""));
        try {
            String attributeValue = attributeSet.getAttributeValue("http://www.estrongs.com", "interval");
            if (attributeValue != null) {
                this.d = Integer.parseInt(attributeValue);
            }
        } catch (Exception e) {
            Log.e(this.f2400a, "Invalid interval value", e);
        }
    }

    protected void a(View view) {
        try {
            RelativeLayout relativeLayout = (RelativeLayout) view;
            this.i = (TextView) relativeLayout.findViewById(C0000R.id.seekBarPrefValue);
            this.i.setText(String.valueOf(this.e));
            this.i.setMinimumWidth(30);
            this.h.setProgress(this.e - this.c);
            ((TextView) relativeLayout.findViewById(C0000R.id.seekBarPrefUnitsRight)).setText(this.g);
            ((TextView) relativeLayout.findViewById(C0000R.id.seekBarPrefUnitsLeft)).setText(this.f);
        } catch (Exception e) {
            Log.e(this.f2400a, "Error updating seek bar preference", e);
        }
    }

    @Override // android.preference.Preference
    public void onBindView(View view) {
        super.onBindView(view);
        try {
            ViewParent parent = this.h.getParent();
            ViewGroup viewGroup = (ViewGroup) view.findViewById(C0000R.id.seekBarPrefBarContainer);
            if (parent != viewGroup) {
                if (parent != null) {
                    ((ViewGroup) parent).removeView(this.h);
                }
                viewGroup.removeAllViews();
                viewGroup.addView(this.h, -1, -2);
            }
        } catch (Exception e) {
            Log.e(this.f2400a, "Error binding view: " + e.toString());
        }
        a(view);
    }

    @Override // android.preference.Preference
    protected View onCreateView(ViewGroup viewGroup) {
        try {
            return (RelativeLayout) ((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(C0000R.layout.seek_bar_preference, viewGroup, false);
        } catch (Exception e) {
            Log.e(this.f2400a, "Error creating seek bar preference", e);
            return null;
        }
    }

    @Override // android.preference.Preference
    protected Object onGetDefaultValue(TypedArray typedArray, int i) {
        return Integer.valueOf(typedArray.getInt(i, 50));
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        int i2 = this.c + i;
        if (i2 > this.f2401b) {
            i2 = this.f2401b;
        } else if (i2 < this.c) {
            i2 = this.c;
        } else if (this.d != 1 && i2 % this.d != 0) {
            i2 = Math.round(i2 / this.d) * this.d;
        }
        if (!callChangeListener(Integer.valueOf(i2))) {
            seekBar.setProgress(this.e - this.c);
            return;
        }
        this.e = i2;
        this.i.setText(String.valueOf(i2));
        persistInt(i2);
    }

    @Override // android.preference.Preference
    protected void onSetInitialValue(boolean z, Object obj) {
        int i;
        if (z) {
            this.e = getPersistedInt(this.e);
            return;
        }
        try {
            i = ((Integer) obj).intValue();
        } catch (Exception e) {
            Log.e(this.f2400a, "Invalid default value: " + obj.toString());
            i = 0;
        }
        persistInt(i);
        this.e = i;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
        notifyChanged();
    }
}

package com.estrongs.android.pop.esclasses;

import android.app.Activity;
import android.content.Intent;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.preference.DialogPreference;
import android.preference.EditTextPreference;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.PreferenceGroup;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import android.view.InflateException;
import com.estrongs.android.pop.C0000R;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class h {

    /* renamed from: a, reason: collision with root package name */
    private static int[] f1137a;

    /* renamed from: b, reason: collision with root package name */
    private static int f1138b;
    private static int c;
    private static int d;
    private static int e;
    private static int f;
    private static int[] g;
    private static int[] h;
    private Activity i;

    static {
        try {
            Class<?> cls = Class.forName("com.android.internal.R$styleable");
            f1137a = (int[]) cls.getField("Preference").get(null);
            f1138b = Integer.parseInt(cls.getField("Preference_key").get(null).toString());
            c = Integer.parseInt(cls.getField("Preference_title").get(null).toString());
            d = Integer.parseInt(cls.getField("Preference_summary").get(null).toString());
            e = Integer.parseInt(cls.getField("ListPreference_entries").get(null).toString());
            f = Integer.parseInt(cls.getField("DialogPreference_dialogTitle").get(null).toString());
            g = (int[]) cls.getField("ListPreference").get(null);
            h = (int[]) cls.getField("DialogPreference").get(null);
        } catch (ClassNotFoundException e2) {
            e2.printStackTrace();
        } catch (IllegalAccessException e3) {
            e3.printStackTrace();
        } catch (IllegalArgumentException e4) {
            e4.printStackTrace();
        } catch (NoSuchFieldException e5) {
            e5.printStackTrace();
        }
    }

    public h(Activity activity) {
        if (!(activity instanceof ESPreferenceActivity) && !(activity instanceof ESActivity)) {
            throw new IllegalArgumentException("An ESActivity or ESPreferenceActivity is needed!");
        }
        this.i = activity;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x00a0 A[Catch: InflateException -> 0x0102, Exception -> 0x0104, TryCatch #2 {InflateException -> 0x0102, Exception -> 0x0104, blocks: (B:2:0x0000, B:4:0x001c, B:6:0x002a, B:7:0x0033, B:9:0x0041, B:10:0x004c, B:12:0x0050, B:14:0x0088, B:15:0x009c, B:17:0x00a0, B:19:0x00bb, B:20:0x00cb, B:25:0x00cf, B:27:0x00d3), top: B:1:0x0000 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final Preference a(XmlPullParser xmlPullParser, String str, AttributeSet attributeSet, PreferenceGroup preferenceGroup) {
        TypedArray typedArray;
        try {
            TypedArray obtainStyledAttributes = this.i.obtainStyledAttributes(attributeSet, f1137a, 0, 0);
            TypedValue typedValue = new TypedValue();
            obtainStyledAttributes.getValue(f1138b, typedValue);
            Preference findPreference = preferenceGroup.findPreference(typedValue.string);
            if (findPreference != null) {
                TypedValue typedValue2 = new TypedValue();
                obtainStyledAttributes.getValue(c, typedValue2);
                int i = typedValue2.resourceId;
                if (i > 0) {
                    findPreference.setTitle(this.i.getText(i));
                }
                TypedValue typedValue3 = new TypedValue();
                obtainStyledAttributes.getValue(d, typedValue3);
                if (typedValue3.resourceId > 0) {
                    findPreference.setSummary(this.i.getText(typedValue3.resourceId));
                }
                if (findPreference instanceof ListPreference) {
                    ((ListPreference) findPreference).setNegativeButtonText(this.i.getText(C0000R.string.confirm_cancel));
                    ((ListPreference) findPreference).setDialogTitle(this.i.getText(i));
                    obtainStyledAttributes.recycle();
                    obtainStyledAttributes = this.i.obtainStyledAttributes(attributeSet, g, 0, 0);
                    TypedValue typedValue4 = new TypedValue();
                    obtainStyledAttributes.getValue(e, typedValue4);
                    if (typedValue4.resourceId > 0) {
                        ((ListPreference) findPreference).setEntries(this.i.getResources().getStringArray(typedValue4.resourceId));
                        typedArray = obtainStyledAttributes;
                        if (findPreference instanceof DialogPreference) {
                            typedArray.recycle();
                            obtainStyledAttributes = this.i.obtainStyledAttributes(attributeSet, h, 0, 0);
                            TypedValue typedValue5 = new TypedValue();
                            obtainStyledAttributes.getValue(f, typedValue5);
                            if (typedValue5.resourceId > 0) {
                                ((DialogPreference) findPreference).setDialogTitle(this.i.getText(typedValue5.resourceId));
                            }
                        }
                        typedArray.recycle();
                        return findPreference;
                    }
                } else if (findPreference instanceof EditTextPreference) {
                    ((EditTextPreference) findPreference).setPositiveButtonText(this.i.getText(C0000R.string.confirm_ok));
                    ((EditTextPreference) findPreference).setNegativeButtonText(this.i.getText(C0000R.string.confirm_cancel));
                    ((EditTextPreference) findPreference).setDialogTitle(this.i.getText(i));
                }
                typedArray = obtainStyledAttributes;
                if (findPreference instanceof DialogPreference) {
                }
                typedArray.recycle();
                return findPreference;
            }
            typedArray = obtainStyledAttributes;
            typedArray.recycle();
            return findPreference;
        } catch (InflateException e2) {
            throw e2;
        } catch (Exception e3) {
            InflateException inflateException = new InflateException(attributeSet.getPositionDescription() + ": Error inflating class " + str);
            inflateException.initCause(e3);
            throw inflateException;
        }
    }

    private void a(XmlPullParser xmlPullParser, Preference preference, AttributeSet attributeSet) {
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next = xmlPullParser.next();
            if ((next == 3 && xmlPullParser.getDepth() <= depth) || next == 1) {
                return;
            }
            if (next == 2 && !b(xmlPullParser, preference, attributeSet)) {
                Preference a2 = a(xmlPullParser, xmlPullParser.getName(), attributeSet, (PreferenceGroup) preference);
                ((PreferenceGroup) preference).addItemFromInflater(a2);
                a(xmlPullParser, a2, attributeSet);
            }
        }
    }

    private void a(XmlPullParser xmlPullParser, PreferenceGroup preferenceGroup) {
        int next;
        AttributeSet asAttributeSet = Xml.asAttributeSet(xmlPullParser);
        do {
            try {
                next = xmlPullParser.next();
                if (next == 2) {
                    break;
                }
            } catch (InflateException e2) {
                throw e2;
            } catch (IOException e3) {
                InflateException inflateException = new InflateException(xmlPullParser.getPositionDescription() + ": " + e3.getMessage());
                inflateException.initCause(e3);
                throw inflateException;
            } catch (XmlPullParserException e4) {
                InflateException inflateException2 = new InflateException(e4.getMessage());
                inflateException2.initCause(e4);
                throw inflateException2;
            }
        } while (next != 1);
        if (next != 2) {
            throw new InflateException(xmlPullParser.getPositionDescription() + ": No start tag found!");
        }
        a(xmlPullParser, xmlPullParser.getName(), asAttributeSet, preferenceGroup);
        a(xmlPullParser, preferenceGroup, asAttributeSet);
    }

    private boolean b(XmlPullParser xmlPullParser, Preference preference, AttributeSet attributeSet) {
        Intent intent;
        if (!xmlPullParser.getName().equals("intent")) {
            return false;
        }
        try {
            intent = Intent.parseIntent(this.i.getResources(), xmlPullParser, attributeSet);
        } catch (IOException e2) {
            e2.printStackTrace();
            intent = null;
        }
        if (intent != null) {
            preference.setIntent(intent);
        }
        return true;
    }

    public void a(int i, PreferenceGroup preferenceGroup) {
        XmlResourceParser xml = this.i.getResources().getXml(i);
        try {
            a(xml, preferenceGroup);
        } finally {
            xml.close();
        }
    }
}

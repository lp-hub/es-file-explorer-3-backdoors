package com.estrongs.android.pop.esclasses;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import android.view.InflateException;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.ui.theme.al;
import java.io.IOException;
import org.simpleframework.xml.strategy.Name;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    private static int[] f1135a = {R.attr.scrollbarSize, R.attr.scrollbarThumbHorizontal, R.attr.scrollbarThumbVertical, R.attr.scrollbarTrackHorizontal, R.attr.scrollbarTrackVertical, R.attr.scrollbarAlwaysDrawHorizontalTrack, R.attr.scrollbarAlwaysDrawVerticalTrack, R.attr.scrollbarStyle, R.attr.id, R.attr.tag, R.attr.scrollX, R.attr.scrollY, R.attr.background, R.attr.padding, R.attr.paddingLeft, R.attr.paddingTop, R.attr.paddingRight, R.attr.paddingBottom, R.attr.focusable, R.attr.focusableInTouchMode, R.attr.visibility, R.attr.fitsSystemWindows, R.attr.scrollbars, R.attr.fadingEdge, R.attr.fadingEdgeLength, R.attr.nextFocusLeft, R.attr.nextFocusRight, R.attr.nextFocusUp, R.attr.nextFocusDown, R.attr.clickable, R.attr.longClickable, R.attr.saveEnabled, R.attr.drawingCacheQuality, R.attr.duplicateParentState, R.attr.minWidth, R.attr.minHeight, R.attr.soundEffectsEnabled, R.attr.keepScreenOn, R.attr.isScrollContainer, R.attr.hapticFeedbackEnabled, R.attr.onClick, R.attr.contentDescription, R.attr.scrollbarFadeDuration, R.attr.scrollbarDefaultDelayBeforeFade, R.attr.fadeScrollbars, R.attr.overScrollMode, R.attr.filterTouchesWhenObscured, R.attr.alpha, R.attr.transformPivotX, R.attr.transformPivotY, R.attr.translationX, R.attr.translationY, R.attr.scaleX, R.attr.scaleY, R.attr.rotation, R.attr.rotationX, R.attr.rotationY, R.attr.verticalScrollbarPosition, R.attr.nextFocusForward, R.attr.layerType, R.attr.requiresFadingEdge, R.attr.importantForAccessibility, R.attr.isAsciiCapable, R.attr.autoMirrored, R.attr.supportsSwitchingToNextInputMethod, R.attr.requireDeviceUnlock, R.attr.apduServiceBanner, R.attr.accessibilityLiveRegion};

    /* renamed from: b, reason: collision with root package name */
    private static int[] f1136b = {R.attr.enabled, R.attr.textAppearance, R.attr.textSize, R.attr.typeface, R.attr.textStyle, R.attr.textColor, R.attr.textColorHighlight, R.attr.textColorHint, R.attr.textColorLink, R.attr.ellipsize, R.attr.gravity, R.attr.autoLink, R.attr.linksClickable, R.attr.maxWidth, R.attr.maxHeight, R.attr.minWidth, R.attr.minHeight, R.attr.bufferType, R.attr.text, R.attr.hint, R.attr.textScaleX, R.attr.cursorVisible, R.attr.maxLines, R.attr.lines, R.attr.height, R.attr.minLines, R.attr.maxEms, R.attr.ems, R.attr.width, R.attr.minEms, R.attr.scrollHorizontally, R.attr.password, R.attr.singleLine, R.attr.selectAllOnFocus, R.attr.includeFontPadding, R.attr.maxLength, R.attr.shadowColor, R.attr.shadowDx, R.attr.shadowDy, R.attr.shadowRadius, R.attr.numeric, R.attr.digits, R.attr.phoneNumber, R.attr.inputMethod, R.attr.capitalize, R.attr.autoText, R.attr.editable, R.attr.freezesText, R.attr.drawableTop, R.attr.drawableBottom, R.attr.drawableLeft, R.attr.drawableRight, R.attr.drawablePadding, R.attr.lineSpacingExtra, R.attr.lineSpacingMultiplier, R.attr.marqueeRepeatLimit, R.attr.inputType, R.attr.privateImeOptions, R.attr.editorExtras, R.attr.imeOptions, R.attr.imeActionLabel, R.attr.imeActionId, R.attr.textSelectHandleLeft, R.attr.textSelectHandleRight, R.attr.textSelectHandle, R.attr.textEditPasteWindowLayout, R.attr.textEditNoPasteWindowLayout, R.attr.textIsSelectable, R.attr.textEditSidePasteWindowLayout, R.attr.textEditSideNoPasteWindowLayout, R.attr.textCursorDrawable, R.attr.textEditSuggestionItemLayout, R.attr.textAllCaps, R.attr.drawableStart, R.attr.drawableEnd, R.attr.fontFamily};
    private static int[] c = {R.attr.src, R.attr.scaleType, R.attr.adjustViewBounds, R.attr.maxWidth, R.attr.maxHeight, R.attr.tint, R.attr.baselineAlignBottom, R.attr.cropToPadding, R.attr.baseline, R.attr.banner};
    private static int d = 8;
    private static int e = 18;
    private static int f = 19;
    private static int g = R.attr.textViewStyle;
    private static int h = 5;
    private static int i = 0;
    private static int j = 12;
    private static int k = 48;
    private static int l = 49;
    private static int m = 50;
    private static int n = 51;
    private Context o;
    private boolean p;

    public f(Context context) {
        if (!(context instanceof ESActivity) && !(context instanceof ESPreferenceActivity)) {
            throw new IllegalArgumentException("ESLayoutResourceHanlder needs an ESActivity or ESPreferenceActivity!");
        }
        this.o = context;
        this.p = al.a(this.o).c();
    }

    private View a(String str, AttributeSet attributeSet, View view) {
        boolean z;
        if (str.equals("view")) {
            attributeSet.getAttributeValue(null, Name.LABEL);
        }
        TypedArray obtainStyledAttributes = this.o.obtainStyledAttributes(attributeSet, f1135a, 0, 0);
        int resourceId = obtainStyledAttributes.getResourceId(d, -1);
        if (resourceId == -1) {
            obtainStyledAttributes.recycle();
            return view;
        }
        View findViewById = view.findViewById(resourceId);
        if (!this.p) {
            TypedValue typedValue = new TypedValue();
            obtainStyledAttributes.getValue(j, typedValue);
            if (typedValue.resourceId > 0) {
                int paddingLeft = findViewById.getPaddingLeft();
                int paddingTop = findViewById.getPaddingTop();
                int paddingRight = findViewById.getPaddingRight();
                int paddingBottom = findViewById.getPaddingBottom();
                findViewById.setBackgroundDrawable(al.a(this.o).a(typedValue.resourceId));
                findViewById.setPadding(paddingLeft, paddingTop, paddingRight, paddingBottom);
            }
        }
        obtainStyledAttributes.recycle();
        if (findViewById instanceof TextView) {
            TypedArray obtainStyledAttributes2 = this.o.obtainStyledAttributes(attributeSet, f1136b, g, 0);
            TypedValue typedValue2 = new TypedValue();
            obtainStyledAttributes2.getValue(e, typedValue2);
            if (typedValue2.resourceId > 0) {
                ((TextView) findViewById).setText(this.o.getText(typedValue2.resourceId));
            }
            TypedValue typedValue3 = new TypedValue();
            obtainStyledAttributes2.getValue(f, typedValue3);
            if (typedValue3.resourceId > 0) {
                ((TextView) findViewById).setHint(this.o.getText(typedValue3.resourceId));
            }
            if (!this.p) {
                TypedValue typedValue4 = new TypedValue();
                obtainStyledAttributes2.getValue(h, typedValue4);
                if (typedValue4.resourceId > 0) {
                    ((TextView) findViewById).setTextColor(al.a(this.o).d(typedValue4.resourceId));
                }
                Drawable[] compoundDrawables = ((TextView) findViewById).getCompoundDrawables();
                if (compoundDrawables[0] != null || compoundDrawables[1] != null || compoundDrawables[2] != null || compoundDrawables[3] != null) {
                    TypedValue typedValue5 = new TypedValue();
                    obtainStyledAttributes2.getValue(m, typedValue5);
                    if (typedValue5.resourceId > 0) {
                        compoundDrawables[0] = al.a(this.o).c(typedValue5.resourceId);
                        z = true;
                    } else {
                        z = false;
                    }
                    TypedValue typedValue6 = new TypedValue();
                    obtainStyledAttributes2.getValue(k, typedValue6);
                    if (typedValue6.resourceId > 0) {
                        compoundDrawables[1] = al.a(this.o).c(typedValue6.resourceId);
                        z = true;
                    }
                    TypedValue typedValue7 = new TypedValue();
                    obtainStyledAttributes2.getValue(n, typedValue7);
                    if (typedValue7.resourceId > 0) {
                        compoundDrawables[2] = al.a(this.o).c(typedValue7.resourceId);
                        z = true;
                    }
                    TypedValue typedValue8 = new TypedValue();
                    obtainStyledAttributes2.getValue(l, typedValue8);
                    if (typedValue8.resourceId > 0) {
                        compoundDrawables[3] = al.a(this.o).c(typedValue8.resourceId);
                        z = true;
                    }
                    if (z) {
                        ((TextView) findViewById).setCompoundDrawables(compoundDrawables[0], compoundDrawables[1], compoundDrawables[2], compoundDrawables[3]);
                    }
                }
            }
            obtainStyledAttributes2.recycle();
        } else if (!this.p && (findViewById instanceof ImageView)) {
            TypedArray obtainStyledAttributes3 = this.o.obtainStyledAttributes(attributeSet, c, 0, 0);
            TypedValue typedValue9 = new TypedValue();
            obtainStyledAttributes3.getValue(i, typedValue9);
            if (typedValue9.resourceId > 0) {
                ((ImageView) findViewById).setImageDrawable(al.a(this.o).a(typedValue9.resourceId));
            }
            obtainStyledAttributes3.recycle();
        }
        return findViewById;
    }

    private void a(XmlPullParser xmlPullParser, AttributeSet attributeSet, View view) {
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next = xmlPullParser.next();
            if ((next == 3 && xmlPullParser.getDepth() <= depth) || next == 1) {
                return;
            }
            if (next == 2) {
                String name = xmlPullParser.getName();
                if ("requestFocus".equals(name)) {
                    continue;
                } else if ("include".equals(name)) {
                    if (xmlPullParser.getDepth() == 0) {
                        throw new InflateException("<include /> cannot be the root element");
                    }
                    b(xmlPullParser, attributeSet, view);
                } else {
                    if ("merge".equals(name)) {
                        throw new InflateException("<merge /> must be the root element");
                    }
                    a(xmlPullParser, attributeSet, a(name, attributeSet, view));
                }
            }
        }
    }

    private void a(XmlPullParser xmlPullParser, View view) {
        int next;
        AttributeSet asAttributeSet = Xml.asAttributeSet(xmlPullParser);
        do {
            try {
                next = xmlPullParser.next();
                if (next == 2) {
                    break;
                }
            } catch (IOException e2) {
                InflateException inflateException = new InflateException(xmlPullParser.getPositionDescription() + ": " + e2.getMessage());
                inflateException.initCause(e2);
                throw inflateException;
            } catch (XmlPullParserException e3) {
                InflateException inflateException2 = new InflateException(e3.getMessage());
                inflateException2.initCause(e3);
                throw inflateException2;
            }
        } while (next != 1);
        if (next != 2) {
            throw new InflateException(xmlPullParser.getPositionDescription() + ": No start tag found!");
        }
        String name = xmlPullParser.getName();
        if ("merge".equals(name)) {
            a(xmlPullParser, asAttributeSet, view);
        } else {
            a(xmlPullParser, asAttributeSet, a(name, asAttributeSet, view));
        }
    }

    private void b(XmlPullParser xmlPullParser, AttributeSet attributeSet, View view) {
        int next;
        int next2;
        int attributeResourceValue = attributeSet.getAttributeResourceValue(null, "layout", 0);
        if (attributeResourceValue == 0) {
            String attributeValue = attributeSet.getAttributeValue(null, "layout");
            if (attributeValue != null) {
                throw new InflateException("You must specifiy a valid layout reference. The layout ID " + attributeValue + " is not valid.");
            }
            throw new InflateException("You must specifiy a layout in the include tag: <include layout=\"@layout/layoutID\" />");
        }
        XmlResourceParser layout = this.o.getResources().getLayout(attributeResourceValue);
        try {
            AttributeSet asAttributeSet = Xml.asAttributeSet(layout);
            do {
                next = layout.next();
                if (next == 2) {
                    break;
                }
            } while (next != 1);
            if (next != 2) {
                throw new InflateException(layout.getPositionDescription() + ": No start tag found!");
            }
            String name = layout.getName();
            if ("merge".equals(name)) {
                a(layout, asAttributeSet, view);
            } else {
                a(layout, asAttributeSet, a(name, asAttributeSet, view));
            }
            layout.close();
            int depth = xmlPullParser.getDepth();
            do {
                next2 = xmlPullParser.next();
                if (next2 == 3 && xmlPullParser.getDepth() <= depth) {
                    return;
                }
            } while (next2 != 1);
        } catch (Throwable th) {
            layout.close();
            throw th;
        }
    }

    public void a(int i2, View view) {
        XmlResourceParser layout = this.o.getResources().getLayout(i2);
        try {
            a(layout, view);
        } finally {
            layout.close();
        }
    }
}

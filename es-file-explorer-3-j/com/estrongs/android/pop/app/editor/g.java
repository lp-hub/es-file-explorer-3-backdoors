package com.estrongs.android.pop.app.editor;

import android.os.Handler;
import android.os.Message;
import android.widget.EditText;
import android.widget.LinearLayout;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class g extends Handler {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopNoteEditor f749a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(PopNoteEditor popNoteEditor) {
        this.f749a = popNoteEditor;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        LinearLayout linearLayout;
        int i;
        LinearLayout linearLayout2;
        EditText editText;
        EditText editText2;
        ObservableScrollView observableScrollView;
        ObservableScrollView observableScrollView2;
        ReaderTextView readerTextView;
        ObservableScrollView observableScrollView3;
        ReaderTextView readerTextView2;
        ObservableScrollView observableScrollView4;
        ReaderTextView readerTextView3;
        switch (message.what) {
            case 0:
                ah ahVar = (ah) message.obj;
                int i2 = ahVar.f730b;
                observableScrollView2 = this.f749a.k;
                observableScrollView2.scrollTo(0, i2);
                readerTextView = this.f749a.h;
                readerTextView.setText(ahVar.f729a);
                observableScrollView3 = this.f749a.k;
                observableScrollView3.post(new h(this, i2));
                return;
            case 1:
                ah ahVar2 = (ah) message.obj;
                readerTextView2 = this.f749a.h;
                readerTextView2.setText(ahVar2.f729a);
                observableScrollView4 = this.f749a.k;
                observableScrollView4.scrollTo(0, ahVar2.f730b);
                return;
            case 2:
                ah ahVar3 = (ah) message.obj;
                readerTextView3 = this.f749a.h;
                readerTextView3.setText(ahVar3.f729a);
                return;
            case 3:
                ah ahVar4 = (ah) message.obj;
                editText = this.f749a.i;
                editText.setText(ahVar4.f729a);
                editText2 = this.f749a.i;
                editText2.requestFocus();
                if (ahVar4.f729a == null || ahVar4.f729a.length() <= 10) {
                    this.f749a.b(ahVar4.f729a != null ? ahVar4.f729a.length() : 0);
                }
                int i3 = ahVar4.f730b;
                observableScrollView = this.f749a.j;
                observableScrollView.post(new i(this, i3));
                return;
            case 4:
                this.f749a.b(((Boolean) message.obj).booleanValue());
                return;
            case 5:
                try {
                    this.f749a.showDialog(message.arg1);
                    return;
                } catch (Exception e) {
                    return;
                }
            case 6:
                i = this.f749a.w;
                if (i == 0) {
                    linearLayout2 = this.f749a.t;
                    linearLayout2.setVisibility(0);
                    this.f749a.N = 1;
                }
                PopNoteEditor.g(this.f749a);
                return;
            case 7:
                linearLayout = this.f749a.t;
                linearLayout.setVisibility(4);
                this.f749a.N = 0;
                PopNoteEditor.h(this.f749a);
                return;
            default:
                super.handleMessage(message);
                return;
        }
    }
}

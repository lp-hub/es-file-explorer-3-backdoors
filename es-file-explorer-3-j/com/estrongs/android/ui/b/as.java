package com.estrongs.android.ui.b;

import android.content.Context;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class as extends ag {
    public as(Context context, List<com.estrongs.fs.g> list, com.estrongs.fs.g gVar, boolean z) {
        super(context);
        super.setContentView(C0000R.layout.copy_confirm_dialog);
        com.estrongs.android.ui.theme.al.a(this.mContext);
        TextView textView = (TextView) this.mContentView.findViewById(C0000R.id.message);
        TextView textView2 = (TextView) this.mContentView.findViewById(C0000R.id.message_t);
        TextView textView3 = (TextView) this.mContentView.findViewById(C0000R.id.from);
        TextView textView4 = (TextView) this.mContentView.findViewById(C0000R.id.to);
        TextView textView5 = (TextView) this.mContentView.findViewById(C0000R.id.confirm_msg);
        StringBuilder sb = new StringBuilder();
        int size = list.size();
        String str = null;
        for (int i = 0; i < size; i++) {
            String name = list.get(i).getName();
            str = str == null ? com.estrongs.android.util.ak.B(com.estrongs.android.util.ak.aY(list.get(i).getAbsolutePath())) : str;
            sb.append(name == null ? com.estrongs.android.util.ak.d(list.get(i).getAbsolutePath()) : name);
            if (i + 1 != size) {
                sb.append(" , ");
            }
        }
        if (z) {
            setTitle(C0000R.string.action_copy);
            textView5.setText(C0000R.string.copy_confirm_message);
        } else {
            setTitle(C0000R.string.action_move);
            textView5.setText(C0000R.string.move_confirm_message);
        }
        if (com.estrongs.android.util.ak.aP(list.get(0).getPath())) {
            textView2.setText(context.getString(C0000R.string.task_progress_multi_item_message, Integer.valueOf(list.size()), ""));
        } else {
            new StringBuilder(256);
            at atVar = new at(this, context, textView2);
            ArrayList arrayList = new ArrayList();
            Iterator<com.estrongs.fs.g> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(new File(it.next().getAbsolutePath()));
            }
            atVar.execute(arrayList);
        }
        textView.setText(context.getString(C0000R.string.task_progress_message_name, sb.toString()));
        textView3.setText(com.estrongs.android.util.ak.bv(str));
        textView4.setText(com.estrongs.android.util.ak.bv(gVar.getPath()));
    }
}

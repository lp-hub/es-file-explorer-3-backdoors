package com.estrongs.android.ui.e;

import android.content.Context;
import android.content.DialogInterface;
import android.widget.EditText;
import android.widget.LinearLayout;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.app.shortcut.ShortcutFormat;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.io.File;
import java.text.MessageFormat;

/* loaded from: classes.dex */
public class fk {
    private static void a(Context context, com.estrongs.fs.g gVar, boolean z, String str) {
        if (str == null || "".equals(str)) {
            str = gVar.getName();
        }
        try {
            String absolutePath = gVar.getAbsolutePath();
            if (gVar.getFileType().a()) {
                absolutePath = com.estrongs.android.util.ak.bp(absolutePath);
            }
            com.estrongs.android.util.at.a(str, com.estrongs.android.util.ak.C(absolutePath));
            if (z) {
                com.estrongs.android.ui.view.z.a(context, MessageFormat.format(context.getString(C0000R.string.rename_success), str), 1).show();
                return;
            }
            com.estrongs.android.ui.view.z.a(context, MessageFormat.format(context.getString(C0000R.string.msg_bookmark_created), str), 1).show();
            if (context instanceof FileExplorerActivity) {
                FileExplorerActivity fileExplorerActivity = (FileExplorerActivity) context;
                if (FileExplorerActivity.v) {
                    fileExplorerActivity.k();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            if (z) {
                com.estrongs.android.ui.view.z.a(context, context.getString(C0000R.string.operation_failed), 1).show();
            } else {
                com.estrongs.android.ui.view.z.a(context, MessageFormat.format(context.getString(C0000R.string.msg_bookmark_failed_to_created), str) + " " + e.getMessage(), 1).show();
            }
        }
    }

    private static void a(Context context, File file, File file2, DialogInterface.OnDismissListener onDismissListener) {
        com.estrongs.android.ui.b.ag agVar = new com.estrongs.android.ui.b.ag(context);
        agVar.setTitle(C0000R.string.message_overwrite);
        agVar.setMessage(MessageFormat.format(context.getString(C0000R.string.msg_bookmark_exists), file2.getName()));
        agVar.setConfirmButton(context.getString(C0000R.string.confirm_ok), new fl(context, file, file2, agVar));
        agVar.setCancelButton(context.getString(C0000R.string.confirm_cancel), new fm(agVar));
        agVar.setOnDismissListener(onDismissListener);
        agVar.show();
    }

    public static void a(Context context, String str, com.estrongs.fs.g gVar, DialogInterface.OnDismissListener onDismissListener) {
        LinearLayout linearLayout = new LinearLayout(context);
        int a2 = com.estrongs.android.ui.d.a.a(context, 10.0f);
        linearLayout.setPadding(a2, a2, a2, a2);
        EditText editText = new EditText(context);
        editText.setBackgroundDrawable(com.estrongs.android.ui.theme.al.a(context).c(C0000R.drawable.popupbox_input_bg));
        editText.setTextColor(context.getResources().getColor(C0000R.color.black));
        editText.setTextSize(1, 18.0f);
        editText.setText(str);
        editText.setSingleLine(true);
        editText.setSelectAllOnFocus(true);
        int dimension = (int) context.getResources().getDimension(C0000R.dimen.edittext_padding_horizontal);
        editText.setPadding(dimension, 0, dimension, 0);
        linearLayout.addView(editText, new LinearLayout.LayoutParams(-1, -2));
        com.estrongs.android.ui.b.aq c = new com.estrongs.android.ui.b.aq(context).a(C0000R.string.action_rename).a(linearLayout).b(C0000R.string.confirm_ok, new fq(context, gVar, str, editText, onDismissListener)).c(C0000R.string.confirm_cancel, new fp());
        if (onDismissListener != null) {
            c.a(onDismissListener);
        }
        c.b();
    }

    public static void a(Context context, String str, String str2, com.estrongs.fs.g gVar) {
        LinearLayout linearLayout = new LinearLayout(context);
        int a2 = com.estrongs.android.ui.d.a.a(context, 10.0f);
        linearLayout.setPadding(a2, a2, a2, a2);
        EditText editText = new EditText(context);
        editText.setBackgroundDrawable(com.estrongs.android.ui.theme.al.a(context).c(C0000R.drawable.popupbox_input_bg));
        editText.setTextColor(context.getResources().getColor(C0000R.color.black));
        editText.setTextSize(1, 18.0f);
        editText.setText(str2);
        editText.setSingleLine(true);
        editText.setSelectAllOnFocus(true);
        int dimension = (int) context.getResources().getDimension(C0000R.dimen.edittext_padding_horizontal);
        editText.setPadding(dimension, 0, dimension, 0);
        linearLayout.addView(editText, new LinearLayout.LayoutParams(-1, -2));
        if (gVar == null || com.estrongs.android.util.ak.aR(gVar.getAbsolutePath())) {
            com.estrongs.android.ui.view.z.a(context, "Can't create bookmake at this position !", 1).show();
        } else {
            new com.estrongs.android.ui.b.aq(context).a(C0000R.string.context_menu_to_favorites).a(linearLayout).b(C0000R.string.confirm_ok, new fs(context, gVar, editText)).c(C0000R.string.confirm_cancel, new fr()).b();
        }
    }

    private static boolean a(String str) {
        for (char c : new char[]{'*', '\"', '?', '<', '>', '|', '\\', '/'}) {
            if (str.indexOf(c) >= 0) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Context context, com.estrongs.fs.g gVar, String str) {
        a(context, gVar, false, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Context context, com.estrongs.fs.g gVar, String str, String str2, DialogInterface.OnDismissListener onDismissListener) {
        File file = new File("/sdcard/.estrongs/bookmark", str);
        if (!a(str2)) {
            com.estrongs.android.ui.view.z.a(context, context.getString(C0000R.string.msg_filename_has_spec_char), 1).show();
            return;
        }
        if (!file.exists()) {
            b(context, gVar, str2, true, false);
            return;
        }
        File file2 = new File("/sdcard/.estrongs/bookmark", str2);
        if (!file2.exists()) {
            b(context, file, file2);
        } else if (file2.getAbsolutePath().equals(file.getAbsolutePath())) {
            com.estrongs.android.ui.view.z.a(context, context.getString(C0000R.string.operation_failed), 1).show();
        } else {
            a(context, file, file2, onDismissListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00a2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void b(Context context, com.estrongs.fs.g gVar, String str, boolean z, boolean z2) {
        boolean z3;
        String str2;
        ShortcutFormat a2;
        String absolutePath;
        if (str == null || "".equals(str)) {
            str = gVar.getName();
        }
        if (!a(str)) {
            com.estrongs.android.ui.view.z.a(context, context.getString(C0000R.string.msg_filename_has_spec_char), 1).show();
            return;
        }
        File file = new File(com.estrongs.android.util.at.a(), str);
        if (!file.exists()) {
            a(context, gVar, z, str);
            return;
        }
        try {
            a2 = com.estrongs.android.util.at.a(file);
            absolutePath = gVar.getAbsolutePath();
            if (gVar.getFileType().a()) {
                absolutePath = com.estrongs.android.util.ak.bp(gVar.getAbsolutePath());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (com.estrongs.android.util.ak.C(absolutePath).equals(a2.targetLocation)) {
            z3 = true;
            if (z3) {
                try {
                    str2 = z2 ? str.substring(0, str.length() - 3) + "(" + (Integer.parseInt(String.valueOf(str.charAt(str.length() - 2))) + 1) + ")" : str + "(2)";
                } catch (Exception e2) {
                    str2 = str + "(2)";
                    e2.printStackTrace();
                }
                b(context, gVar, str2, z, true);
                return;
            }
            com.estrongs.android.ui.b.ag agVar = new com.estrongs.android.ui.b.ag(context);
            agVar.setTitle(C0000R.string.message_overwrite);
            agVar.setMessage(MessageFormat.format(context.getString(C0000R.string.msg_bookmark_exists), str));
            agVar.setConfirmButton(context.getString(C0000R.string.confirm_ok), new fn(agVar, context, gVar, str));
            agVar.setCancelButton(context.getString(C0000R.string.confirm_cancel), new fo(agVar));
            agVar.show();
            return;
        }
        z3 = false;
        if (z3) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Context context, File file, File file2) {
        try {
            ShortcutFormat a2 = com.estrongs.android.util.at.a(file);
            String absolutePath = file2.getAbsolutePath();
            if (file2.exists()) {
                file2.delete();
            }
            file.delete();
            a2.shortcutName = file2.getName();
            com.estrongs.android.util.at.a(a2, new File(absolutePath));
            com.estrongs.android.ui.view.z.a(context, MessageFormat.format(context.getString(C0000R.string.rename_success), file2.getName()), 1).show();
        } catch (Exception e) {
            com.estrongs.android.ui.view.z.a(context, context.getString(C0000R.string.operation_failed), 1).show();
        }
    }
}

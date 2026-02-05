package com.estrongs.android.pop.utils;

import android.R;
import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.esclasses.ESActivity;
import java.text.MessageFormat;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bg {

    /* renamed from: a, reason: collision with root package name */
    com.estrongs.fs.b.w f1224a;

    /* renamed from: b, reason: collision with root package name */
    String f1225b;

    private bg() {
        this.f1224a = null;
        this.f1225b = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ bg(ak akVar) {
        this();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Activity activity, List<com.estrongs.fs.g> list) {
        for (com.estrongs.fs.g gVar : list) {
            if (!com.estrongs.android.util.ak.al(gVar.getPath())) {
                com.estrongs.android.pop.q.a(activity).a(gVar.getAbsolutePath());
            } else if (com.estrongs.android.ui.pcs.aw.a().c()) {
                com.estrongs.android.ui.pcs.aw a2 = com.estrongs.android.ui.pcs.aw.a();
                if (a2 != null) {
                    a2.a(0);
                    a2.a((String) null);
                }
                com.estrongs.android.pop.q.a(activity).f(null, null);
                com.estrongs.fs.impl.l.b bVar = (com.estrongs.fs.impl.l.b) gVar;
                bVar.setPath("SP://:@pcs");
                bVar.setAbsolutePath("SP://:@pcs");
                bVar.setDisplayName(FexApplication.a().getString(C0000R.string.category_pcs));
            }
        }
    }

    public boolean a(ESActivity eSActivity, List<com.estrongs.fs.g> list, com.estrongs.android.view.ar arVar, com.estrongs.a.a.k kVar) {
        return a(eSActivity, list, arVar, kVar, null);
    }

    public boolean a(ESActivity eSActivity, List<com.estrongs.fs.g> list, com.estrongs.android.view.ar arVar, com.estrongs.a.a.k kVar, br brVar) {
        return a(eSActivity, list, arVar, kVar, null, 0, null, false);
    }

    public boolean a(ESActivity eSActivity, List<com.estrongs.fs.g> list, com.estrongs.android.view.ar arVar, com.estrongs.a.a.k kVar, br brVar, int i, String str, boolean z) {
        int i2;
        boolean z2;
        boolean z3;
        if (list.size() == 0) {
            return false;
        }
        boolean contains = list.contains(com.estrongs.fs.impl.pcs.b.a());
        if (contains && list.size() == 1) {
            new com.estrongs.android.ui.b.aq(eSActivity).a(C0000R.string.action_delete).b(C0000R.string.msg_delete_only_pcs_drive).a(C0000R.string.confirm_ok, new bh(this)).b();
            return true;
        }
        String c = arVar != null ? arVar.c() : com.estrongs.android.util.ak.aY(list.get(0).getPath());
        com.estrongs.a.a.k biVar = kVar == null ? new bi(this, arVar, eSActivity, list, c) : kVar;
        boolean aP = com.estrongs.android.util.ak.aP(c);
        int i3 = 0;
        if (aP) {
            i2 = 0;
            z2 = false;
        } else if (z) {
            i2 = 0;
            z2 = false;
        } else {
            boolean aD = com.estrongs.android.pop.q.a(eSActivity).aD();
            if (aD) {
                Iterator<com.estrongs.fs.g> it = list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    i3 = by.a(it.next().getAbsolutePath());
                    if (i3 != by.c) {
                        aD = false;
                        break;
                    }
                }
                i2 = i3;
                z2 = aD;
            } else {
                i2 = 0;
                z2 = aD;
            }
        }
        boolean z4 = aP && com.estrongs.android.util.ak.aU(c);
        boolean z5 = false;
        boolean z6 = false;
        if (aP) {
            if (com.estrongs.android.util.ak.az(list.get(0).getPath())) {
                this.f1225b = eSActivity.getString(C0000R.string.pic_logout_confirm);
                z6 = true;
            } else if (list.size() == 1) {
                this.f1225b = MessageFormat.format(eSActivity.getString(C0000R.string.delete_confirm_message), list.get(0).getName());
            } else {
                this.f1225b = MessageFormat.format(eSActivity.getString(C0000R.string.msg_delete_multi_confirm), list.get(0).getName(), Integer.valueOf(list.size()));
            }
        } else if (list.size() != 1) {
            z5 = true;
            if (z2) {
                this.f1225b = MessageFormat.format(eSActivity.getString(C0000R.string.msg_recycle_multi_confirm), list.get(0).getName(), Integer.valueOf(list.size()));
            } else {
                this.f1225b = MessageFormat.format(eSActivity.getString(C0000R.string.msg_delete_multi_confirm), list.get(0).getName(), Integer.valueOf(list.size()));
            }
        } else if (z2) {
            if (list.get(0).getFileType().a()) {
                this.f1225b = MessageFormat.format(eSActivity.getString(C0000R.string.recycle_folder_confirm_message_1), list.get(0).getName());
                z5 = true;
            } else {
                this.f1225b = MessageFormat.format(eSActivity.getString(C0000R.string.recycle_confirm_message_1), list.get(0).getName()) + "\n\n" + eSActivity.getString(C0000R.string.property_size) + com.estrongs.fs.c.d.c(list.get(0).length());
            }
        } else if (list.get(0).getFileType().a()) {
            this.f1225b = MessageFormat.format(eSActivity.getString(C0000R.string.msg_delete_folder_confirm), list.get(0).getName());
            z5 = true;
        } else {
            this.f1225b = MessageFormat.format(eSActivity.getString(C0000R.string.delete_confirm_message), list.get(0).getName()) + "\n\n" + eSActivity.getString(C0000R.string.property_size) + com.estrongs.fs.c.d.c(list.get(0).length());
        }
        if (contains) {
            this.f1225b += eSActivity.getString(C0000R.string.msg_delete_pcs_drive_also);
        }
        DeleteMessageContainer deleteMessageContainer = (DeleteMessageContainer) com.estrongs.android.pop.esclasses.e.a(eSActivity).inflate(C0000R.layout.delete_message, (ViewGroup) null);
        TextView textView = (TextView) deleteMessageContainer.findViewById(R.id.message);
        if (i == 0) {
            if (z2) {
                i = C0000R.string.action_recycle;
            } else {
                i = z6 ? C0000R.string.pic_logout_text : C0000R.string.delete_title;
            }
        }
        if (str != null) {
            this.f1225b = str;
            z3 = false;
        } else {
            z3 = z5;
        }
        if (aP) {
            View findViewById = deleteMessageContainer.findViewById(C0000R.id.prompt);
            if (findViewById != null) {
                findViewById.setVisibility(0);
                ((TextView) findViewById.findViewById(C0000R.id.prompt_message)).setText(eSActivity.getString(C0000R.string.delete_remote_file_warning));
            }
        } else {
            View findViewById2 = deleteMessageContainer.findViewById(C0000R.id.prompt);
            if (findViewById2 != null) {
                TextView textView2 = (TextView) findViewById2.findViewById(C0000R.id.prompt_message);
                if (!z2) {
                    int i4 = C0000R.string.delete_local_file_warning;
                    if (i2 == by.d) {
                        i4 = C0000R.string.delete_local_system_file_warning;
                    } else if (i2 == by.e) {
                        i4 = C0000R.string.external_storage_not_support_recycle;
                    } else if (i2 == by.f) {
                        i4 = C0000R.string.unknown_storage_not_support_recycle;
                    } else if (i2 == by.g) {
                        i4 = C0000R.string.estrongs_root_not_support_recycle;
                    } else if (i2 == by.h) {
                        i4 = C0000R.string.estrongs_root_not_support_recycle;
                    }
                    textView2.setText(eSActivity.getString(i4));
                    findViewById2.setVisibility(0);
                }
            }
        }
        com.estrongs.android.ui.b.ag a2 = new com.estrongs.android.ui.b.aq(eSActivity).a(i).b(C0000R.string.confirm_ok, new bl(this, contains, list, brVar, arVar, eSActivity, z4, z5, z2, biVar)).c(C0000R.string.confirm_cancel, new bk(this)).a();
        if (!z2) {
            a2.getConfirmButton().setText(C0000R.string.action_delete);
        }
        if (z3) {
            StringBuilder sb = new StringBuilder(256);
            sb.append(this.f1225b).append("\n\n").append(eSActivity.getString(C0000R.string.property_contains)).append(0).append(" ").append(eSActivity.getString(C0000R.string.category_files)).append(", ").append(eSActivity.getString(C0000R.string.property_size)).append(0).append("\n");
            textView.setText(sb.toString());
            a2.setContentView(deleteMessageContainer);
            a2.show();
            String str2 = this.f1225b;
            this.f1224a = new com.estrongs.fs.b.w(list, com.estrongs.fs.d.a(eSActivity));
            this.f1224a.addTaskStatusChangeListener(new bn(this, sb, str2, eSActivity, textView));
            this.f1224a.addProgressListener(new bp(this, sb, str2, eSActivity, textView));
            this.f1224a.execute();
        } else {
            textView.setText(this.f1225b);
            a2.setContentView(deleteMessageContainer);
            a2.show();
        }
        return true;
    }
}

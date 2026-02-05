package com.estrongs.android.pop.app.editor;

import android.os.Bundle;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESPreferenceActivity;

/* loaded from: classes.dex */
public class PopNoteEditorSetting extends ESPreferenceActivity {
    @Override // com.estrongs.android.pop.esclasses.ESPreferenceActivity, android.preference.PreferenceActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        addPreferencesFromResource(C0000R.xml.pop_note_editor_preferences);
    }
}

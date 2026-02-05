package com.estrongs.android.ui.preference;

import android.media.Ringtone;
import android.media.RingtoneManager;
import android.net.Uri;
import android.preference.Preference;
import android.preference.RingtonePreference;
import android.text.TextUtils;

/* loaded from: classes.dex */
final class s implements Preference.OnPreferenceChangeListener {
    @Override // android.preference.Preference.OnPreferenceChangeListener
    public boolean onPreferenceChange(Preference preference, Object obj) {
        String obj2 = obj.toString();
        if (preference instanceof android.preference.ListPreference) {
            android.preference.ListPreference listPreference = (android.preference.ListPreference) preference;
            int findIndexOfValue = listPreference.findIndexOfValue(obj2);
            preference.setSummary(findIndexOfValue >= 0 ? listPreference.getEntries()[findIndexOfValue] : null);
            return true;
        }
        if (!(preference instanceof RingtonePreference)) {
            preference.setSummary(obj2);
            return true;
        }
        if (TextUtils.isEmpty(obj2)) {
            return true;
        }
        Ringtone ringtone = RingtoneManager.getRingtone(preference.getContext(), Uri.parse(obj2));
        if (ringtone == null) {
            preference.setSummary((CharSequence) null);
            return true;
        }
        preference.setSummary(ringtone.getTitle(preference.getContext()));
        return true;
    }
}

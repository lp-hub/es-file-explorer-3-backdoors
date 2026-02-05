package org.apache.commons.net.ftp.parser;

import java.util.Calendar;

/* loaded from: classes.dex */
public interface FTPTimestampParser {
    public static final String DEFAULT_RECENT_SDF = "MMM d HH:mm";
    public static final String DEFAULT_SDF = "MMM d yyyy";

    Calendar parseTimestamp(String str);
}

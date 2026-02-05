package com.jcraft.jsch;

import java.io.InputStream;
import java.io.OutputStream;

/* loaded from: classes.dex */
public interface ForwardedTCPIPDaemon extends Runnable {
    void a(ChannelForwardedTCPIP channelForwardedTCPIP, InputStream inputStream, OutputStream outputStream);

    void a(Object[] objArr);
}

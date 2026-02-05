package com.estrongs.fs.impl.local;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;

/* loaded from: classes.dex */
final class i implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Process f3100a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f3101b;
    final /* synthetic */ StringBuilder c;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.io.BufferedWriter] */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.io.BufferedReader] */
    @Override // java.lang.Runnable
    public void run() {
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(this.f3100a.getOutputStream()));
        try {
            try {
                bufferedWriter.write(this.f3101b);
            } finally {
                try {
                    bufferedWriter.close();
                } catch (IOException e) {
                }
            }
        } catch (IOException e2) {
            e2.printStackTrace();
            try {
                bufferedWriter.close();
            } catch (IOException e3) {
            }
        }
        bufferedWriter = new BufferedReader(new InputStreamReader(this.f3100a.getErrorStream()));
        try {
            try {
                String readLine = bufferedWriter.readLine();
                if (readLine != null) {
                    this.c.append(readLine).append("\n");
                }
            } finally {
                try {
                    bufferedWriter.close();
                } catch (IOException e4) {
                }
            }
        } catch (IOException e5) {
            e5.printStackTrace();
            try {
                bufferedWriter.close();
            } catch (IOException e6) {
            }
        }
    }
}

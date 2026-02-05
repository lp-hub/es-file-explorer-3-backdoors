package jcifs.smb;

import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public class TestLocking implements Runnable {
    int numThreads = 1;
    int numIter = 1;
    long delay = 100;
    String url = null;
    int numComplete = 0;
    long ltime = 0;

    public static void main(String[] strArr) {
        long j;
        if (strArr.length < 1) {
            System.err.println("usage: TestLocking [-t <numThreads>] [-i <numIter>] [-d <delay>] url");
            System.exit(1);
        }
        TestLocking testLocking = new TestLocking();
        testLocking.ltime = System.currentTimeMillis();
        int i = 0;
        while (i < strArr.length) {
            if (strArr[i].equals("-t")) {
                i++;
                testLocking.numThreads = Integer.parseInt(strArr[i]);
            } else if (strArr[i].equals("-i")) {
                i++;
                testLocking.numIter = Integer.parseInt(strArr[i]);
            } else if (strArr[i].equals("-d")) {
                i++;
                testLocking.delay = Long.parseLong(strArr[i]);
            } else {
                testLocking.url = strArr[i];
            }
            i++;
        }
        Thread[] threadArr = new Thread[testLocking.numThreads];
        for (int i2 = 0; i2 < testLocking.numThreads; i2++) {
            threadArr[i2] = new Thread(testLocking);
            System.out.print(threadArr[i2].getName());
            threadArr[i2].start();
        }
        while (testLocking.numComplete < testLocking.numThreads) {
            do {
                synchronized (testLocking) {
                    long j2 = testLocking.ltime + testLocking.delay;
                    long currentTimeMillis = System.currentTimeMillis();
                    j = j2 > currentTimeMillis ? j2 - currentTimeMillis : 2L;
                }
                if (j > 2) {
                    System.out.println("delay=" + j);
                }
                Thread.sleep(j);
            } while (j > 2);
            synchronized (testLocking) {
                testLocking.notifyAll();
            }
        }
        for (int i3 = 0; i3 < testLocking.numThreads; i3++) {
            threadArr[i3].join();
            System.out.print(threadArr[i3].getName());
        }
        System.out.println();
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            SmbFile smbFile = new SmbFile(this.url);
            SmbFile smbFile2 = new SmbFile(smbFile.getParent());
            byte[] bArr = new byte[1024];
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= this.numIter) {
                    return;
                }
                synchronized (this) {
                    this.ltime = System.currentTimeMillis();
                    wait();
                }
                try {
                    double random = Math.random();
                    if (random < 0.333d) {
                        smbFile.exists();
                    } else if (random < 0.667d) {
                        smbFile2.listFiles();
                    } else if (random < 1.0d) {
                        InputStream inputStream = smbFile.getInputStream();
                        do {
                        } while (inputStream.read(bArr) > 0);
                        inputStream.close();
                    }
                } catch (IOException e) {
                    System.err.println(e.getMessage());
                }
                i = i2 + 1;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        } finally {
            this.numComplete++;
        }
    }
}

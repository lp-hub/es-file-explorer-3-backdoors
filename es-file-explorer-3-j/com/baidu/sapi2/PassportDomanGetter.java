package com.baidu.sapi2;

import java.util.ArrayList;
import java.util.Random;

/* loaded from: classes.dex */
public class PassportDomanGetter {
    private ArrayList<String> mPassportDomans;
    private int usedDomans = 0;
    private int mMaxDoman = 3;
    private Random mRandom = new Random();
    private ArrayList<String> mPassportIps = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public PassportDomanGetter(ArrayList<String> arrayList, int i) {
        this.mPassportDomans = new ArrayList<>();
        this.mPassportDomans = arrayList;
        fillDomans();
    }

    public void fillDomans() {
        this.usedDomans = 0;
        this.mPassportIps.clear();
        this.mPassportIps.addAll(this.mPassportDomans);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getNextDoman() {
        if (this.mPassportIps.isEmpty()) {
            return null;
        }
        String remove = this.mPassportIps.remove(this.mRandom.nextInt(this.mPassportIps.size()));
        this.usedDomans++;
        return remove;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isMaxDomanUsed() {
        return this.usedDomans >= this.mMaxDoman;
    }
}

package org.mozilla.universalchardet.prober;

/* loaded from: classes.dex */
public abstract class CharsetProber {

    /* loaded from: classes.dex */
    public enum ProbingState {
        DETECTING,
        FOUND_IT,
        NOT_ME;

        /* renamed from: values, reason: to resolve conflict with enum method */
        public static ProbingState[] valuesCustom() {
            ProbingState[] valuesCustom = values();
            int length = valuesCustom.length;
            ProbingState[] probingStateArr = new ProbingState[length];
            System.arraycopy(valuesCustom, 0, probingStateArr, 0, length);
            return probingStateArr;
        }
    }

    public abstract String a();

    public abstract ProbingState a(byte[] bArr, int i, int i2);

    public abstract float b();

    public abstract void c();
}

package jcifs.dcerpc.ndr;

/* loaded from: classes.dex */
public abstract class NdrObject {
    public abstract void decode(NdrBuffer ndrBuffer);

    public abstract void encode(NdrBuffer ndrBuffer);
}

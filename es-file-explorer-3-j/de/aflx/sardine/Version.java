package de.aflx.sardine;

/* loaded from: classes.dex */
public class Version {
    public static String getImplementation() {
        Package r0 = Version.class.getPackage();
        if (r0 == null) {
            return null;
        }
        return r0.getImplementationVersion();
    }

    public static String getSpecification() {
        Package r0 = Version.class.getPackage();
        if (r0 == null) {
            return null;
        }
        return r0.getSpecificationVersion();
    }

    public static void main(String[] strArr) {
        System.out.println("Version: " + getSpecification());
        System.out.println("Implementation: " + getImplementation());
    }
}

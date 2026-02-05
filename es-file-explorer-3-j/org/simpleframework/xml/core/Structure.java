package org.simpleframework.xml.core;

import org.simpleframework.xml.Version;

/* loaded from: classes.dex */
class Structure {
    private final Model model;
    private final boolean primitive;
    private final Label text;
    private final Label version;

    public Structure(Model model, Label label, Label label2, boolean z) {
        this.primitive = z;
        this.version = label;
        this.model = model;
        this.text = label2;
    }

    public Version getRevision() {
        if (this.version != null) {
            return (Version) this.version.getContact().getAnnotation(Version.class);
        }
        return null;
    }

    public Section getSection(Context context) {
        return new ModelSection(context, this.model);
    }

    public Label getText() {
        return this.text;
    }

    public Label getVersion() {
        return this.version;
    }

    public boolean isPrimitive() {
        return this.primitive;
    }
}
